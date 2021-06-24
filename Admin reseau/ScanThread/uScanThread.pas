unit uScanThread ;

interface


uses
  Windows, SysUtils,
  Dialogs, Forms, Controls, StdCtrls, Classes, ExtCtrls,Graphics, bass;

type
  TSpectrumTheme = packed array[0..6] of integer;

const                               // LoopStart, LoopEnd, Position, Background, Border, Peak, Text
  SpectrumThemeDefault : TSpectrumTheme = (clBlue, clRed, clWhite, clBlack, clGray, clLime, clWhite);
  SpectrumThemeSilver  : TSpectrumTheme = (clBlue, clRed, clBlack, clGray, clBlack, clWhite, clBlack);
  SpectrumThemeGirly   : TSpectrumTheme = (clBlue, clRed, clBlack, $c080ff, clGray, $8000ff, clWhite);
  SpectrumThemeArmy    : TSpectrumTheme = (clBlue, clRed, clBlack, $7a9a90, clBlack, $2a4a40, clBlack);
  SpectrumThemeLCD     : TSpectrumTheme = ($804c46, $4c4680, $212e2c, $6a9583, $314440, $314440, $314440);

type
  TSpectrumColor = class(TPersistent)
  private
    fColors   : TSpectrumTheme;
    fOnChange : TNotifyEvent;
    procedure SetColor(const index: integer; const value: integer);
    function GetColor(const index: integer): integer;
  protected
    procedure Change; virtual;
    procedure AssignTo(Dest: TPersistent); override;
    property OnChange : TNotifyEvent read fOnChange write fOnChange;
  published
    property scLoopStart : Integer index 0 read GetColor write SetColor default clBlue;
    property scLoopEnd   : Integer index 1 read GetColor write SetColor default clRed;
    property scPosition  : Integer index 2 read GetColor write SetColor default clWhite;
    property scBack      : Integer index 3 read GetColor write SetColor default clBlack;
    property scBorder    : Integer index 4 read GetColor write SetColor default clGray;
    property scPeak      : Integer index 5 read GetColor write SetColor default clLime;
    property scText      : Integer index 6 read GetColor write SetColor default clWhite;
  public
    constructor Create;
    procedure LoadSpectrumTheme(const ColorTheme: TSpectrumTheme);
    procedure LoadFromResource(Instance: THandle; const ResName: string);
    procedure LoadFromResourceID(Instance: THandle; ResID: integer);
    procedure LoadFromStream(Stream: TStream);
    procedure SaveToStream(Stream: TStream);
    procedure LoadFromFile(const FileName: string);
    procedure SaveToFile(const FileName: string);
  end;


type
  TScanThread = class(TThread)
  private
    fPaintBox      : TPaintBox;
    fdecoder       : DWORD;               // le canal "decode" -> GetLevel
    fChannel       : DWORD;               // le canal en cours -> Position
    fKillScan      : boolean;             // Switch de démarrage et arret du scan
    fBPP           : DWORD;               // Relation Temps/Longueur
    fWaveBufL      : array of smallint;   // Level sonore Gauche
    fWaveBufR      : array of smallint;   // Level sonore Droit
    fWidth         : integer;             // Taille en X
    fHeight        : integer;             // Taille en Y
    fBufferBitmap  : TBitmap;             // le bitmap ou on va dessiner desus
    fNbLoopSync    : DWORD;               // indice pr la procedure LoopSyncProc
    fSpectrumColor : TSpectrumColor;      // Couleur de la visualisation du spectre
    fLoopStart     : DWORD;               // Debut de la boucle
    fLoopEnd       : DWORD;               // Fin de la boucle
    fPosition      : DWORD;               // Position en cours
    fNeedRedraw    : boolean;             // Switch pour redessiner le Spectre

    procedure SetSpectrumColor(Value: TSpectrumColor);

  protected
    procedure ScanPeaks; dynamic;     // Récuperation des Levels
    procedure DrawSpectrum; dynamic;  // Dessin du spectre
    procedure ThreadProcedure;        // Procedure principale du Thread
    procedure Execute; override;      // Execution du Thread

    procedure DoSpectrumColorChange(Sender: TObject);

    // Les <> méthodes relatives au TPaintBox : Paint , onMouseDown , onMouseMove
    procedure PaintBoxPaint(Sender: TObject);
    procedure PaintBoxMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure PaintBoxMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);

  published
    property BPP           : DWORD read fBPP;
    property LoopStart     : DWORD read fLoopStart write fLoopStart default 0;
    property LoopEnd       : DWORD read fLoopEnd   write fLoopEnd   default 0;
    property Position      : DWORD read fPosition  write fPosition  default 0;
    property SpectrumColor : TSpectrumColor  read fSpectrumColor write SetSpectrumColor;

  public
    procedure ReDraw;
    procedure ReScan;

    constructor Create(AOwner: TWinControl; const ADecoder, AChannel,
                       ALeft, ATop, AWidth, AHeight : DWORD);
    destructor Destroy;override;
  end;

procedure LoopSyncProc(handle: HSYNC; channel, data: DWORD; user: Pointer); stdcall;

var
  NbLoopSync      : DWORD = 0;
  GlobalLoopStart : array[0..1000] of DWORD;
  fLoopSync       : array[0..1000] of HSYNC;

implementation


procedure LoopSyncProc(handle: HSYNC; channel, data: DWORD; user: Pointer); stdcall;
var
  i : integer;
begin
  for i:= 0 to NbLoopSync do
    if handle = fLoopSync[i] then
      if not BASS_ChannelSetPosition(channel,GlobalLoopStart[i],BASS_POS_BYTE) then
        BASS_ChannelSetPosition(channel,0,BASS_POS_BYTE);
end;

//------------------------------------------------------------------------------

{ TScanThread }

constructor TScanThread.Create(AOwner: TWinControl; const ADecoder, AChannel,
                               ALeft, ATop, AWidth, AHeight : DWORD);
begin
  inherited Create(false);

  if NbLoopSync >= 1000 then
    NbLoopSync := 0;

  fNeedRedraw   := True;
  fNbLoopSync   := NbLoopSync;
  fLoopEnd      := 0;
  fLoopStart    := 0;
  fPosition     := 0;
  fKillScan     := false;
  GlobalLoopStart[fNbLoopSync] := fLoopStart;

  // Create internal objects
  fSpectrumColor := TSpectrumColor.Create;
  fSpectrumColor.OnChange := DoSpectrumColorChange;

  fBufferBitmap  := TBitmap.Create;
  fBufferBitmap.PixelFormat := pf32bit;

  Assert(AOwner <> nil, 'Error TScanThread.Create : AParent must not be null.');
  fPaintBox      := TPaintBox.Create(AOwner);
  // fPaintBox settings
  fPaintBox.Parent := AOwner;
  fPaintBox.Parent.DoubleBuffered := True;
  fPaintBox.SetBounds(ALeft, ATop, AWidth, AHeight);
  fPaintBox.OnPaint     := PaintBoxPaint;
  fPaintBox.OnMouseDown := PaintBoxMouseDown;
  fPaintBox.OnMouseMove := PaintBoxMouseMove;


  fWidth  := fPaintBox.Canvas.ClipRect.Right;
  fHeight := fPaintBox.Canvas.ClipRect.Bottom;

  fDecoder := ADecoder;

  fBPP := BASS_ChannelGetLength(ADecoder,BASS_POS_BYTE) div fWidth;
  if (fBPP < BASS_ChannelSeconds2Bytes(ADecoder,0.02)) then // minimum 20ms per pixel (BASS_ChannelGetLevel scans 20ms)
      fBPP := BASS_ChannelSeconds2Bytes(ADecoder,0.02);

  SetLength(fWaveBufL, fWidth);
  SetLength(fWaveBufR, fWidth);

  Priority := tpNormal;
  FreeOnTerminate := false;

  fChannel := AChannel;
  fLoopSync[fNbLoopSync]:= BASS_ChannelSetSync(fChannel,BASS_SYNC_POS or BASS_SYNC_MIXTIME,fLoopEnd,LoopSyncProc,nil);
  NbLoopSync := NbLoopSync+1;
end;

destructor TScanThread.Destroy;
begin
  fPaintBox.Free;
  fBufferBitmap.Free;
  fSpectrumColor.Free;
  inherited Destroy;
end;

procedure TScanThread.SetSpectrumColor(Value: TSpectrumColor);
begin
  Value.AssignTo(fSpectrumColor);
end;

procedure TScanThread.DoSpectrumColorChange(Sender: TObject);
begin
  fNeedRedraw := true;
  DrawSpectrum;
end;

procedure TScanThread.ReDraw;
begin
  fNeedRedraw := true;
end;

procedure TScanThread.ReScan;
begin
  fKillScan := false;
end;

procedure TScanThread.PaintBoxPaint(Sender: TObject);
var LSD, LED, PSD : integer;
begin
  LSD := fLoopStart div fBPP;
  LED := fLoopEnd div fBPP;
  PSD := fPosition div fBPP;

  with fPaintBox.Canvas do
  begin
    Draw(0, 0, fBufferBitmap);

    Pen.Color := fSpectrumColor.scLoopStart;
    MoveTo(LSD, 0);
    LineTo(LSD, fHeight);

    Pen.Color := fSpectrumColor.scLoopEnd;
    MoveTo(LED, 0);
    LineTo(LED, fHeight);

    Pen.Color := fSpectrumColor.scPosition;
    MoveTo(PSD, 0);
    LineTo(PSD, fHeight);

    Font.Color := fSpectrumColor.scText;
    Brush.Color:= fSpectrumColor.scBack;
    TextOut(LSD+7, 12, IntToStr(Round(BASS_ChannelBytes2Seconds(fDecoder, fLoopStart))));
    TextOut(LED+7, 12, IntToStr(Round(BASS_ChannelBytes2Seconds(fDecoder, fLoopEnd))));
    TextOut(PSD+7, 12, IntToStr(Round(BASS_ChannelBytes2Seconds(fDecoder, fPosition))));
  end;
end;

procedure TScanThread.PaintBoxMouseDown(Sender: TObject;Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
begin
  if ssLeft in shift then
  begin
    fLoopStart := DWORD(X)*fBPP;
    GlobalLoopStart[fNbLoopSync] := fLoopStart;
  end
  else if ssRight in shift then begin
    fLoopEnd :=DWORD(X)*fBPP;
    BASS_ChannelRemoveSync(fChannel,fLoopSync[fNbLoopSync]); // remove old sync
    fLoopSync[fNbLoopSync]:= BASS_ChannelSetSync(fChannel,BASS_SYNC_POS or BASS_SYNC_MIXTIME,fLoopEnd,LoopSyncProc,nil);
   // set new sync
  end else if ssMiddle in shift then
    BASS_ChannelSetPosition(fChannel,DWORD(X)*fBPP,BASS_POS_BYTE);
end;

procedure TScanThread.PaintBoxMouseMove(Sender: TObject;
    Shift: TShiftState; X, Y: Integer);
begin
  if ssLeft in shift then begin
    fLoopStart := DWORD(X)*fBPP;
    GlobalLoopStart[fNbLoopSync]:=fLoopStart;
  end
  else
  if ssRight in shift then
  begin
    fLoopEnd := DWORD(X)*fBPP;
    BASS_ChannelRemoveSync(fChannel,fLoopSync[fNbLoopSync]); // remove old sync
    fLoopSync[fNbLoopSync] := BASS_ChannelSetSync(fChannel,BASS_SYNC_POS or BASS_SYNC_MIXTIME,fLoopEnd,LoopSyncProc,nil);
   // set new sync
  end
  else
  if ssMiddle in shift then
    BASS_ChannelSetPosition(fChannel, DWORD(X)*fBPP,BASS_POS_BYTE);
end;

procedure TScanThread.Execute;
begin
  ScanPeaks;
  repeat
    synchronize(ThreadProcedure);
    sleep(20);
  until Terminated;
end;

procedure TScanThread.ThreadProcedure;
begin
  ScanPeaks ; 
  if fNeedRedraw then
    DrawSpectrum;
  fPosition := BASS_ChannelGetPosition(fChannel,BASS_POS_BYTE);
  fPaintBox.Invalidate;
end;

procedure TScanThread.DrawSpectrum;
var
  i, ht : integer;
  rt : single;
begin
  rt := (1/32768);

  fBufferBitmap.Width  := fPaintBox.Width;
  fBufferBitmap.Height := fPaintBox.Height;

  with fBufferBitmap.Canvas do
  begin
    // clear background
    Brush.Color := fSpectrumColor.scBack;
    FillRect(ClipRect);

    Pen.Color := fSpectrumColor.scBorder;
    Rectangle(1, 0, fWidth, ClipRect.Bottom);

    //draw peaks
    ht := fHeight shr 1;
    Pen.Color := fSpectrumColor.scPeak;
    for i := 0 to length(fWaveBufL)-1 do
    begin
      MoveTo(i, ht-trunc((fWaveBufL[i]*rt)*ht));
      LineTo(i, ht+trunc((fWaveBufR[i]*rt)*ht)+1);
    end;
    Pen.Color := fSpectrumColor.scBack;
    MoveTo(0, ht);
    LineTo(fWidth, ht);
  end;
  fNeedRedraw := false;
end;

procedure TScanThread.ScanPeaks;
var
  cpos, level : DWord;
  peak : array[0..1] of DWORD;
  position : DWORD;
  counter : integer;
begin
  cpos    := 0;
  peak[0] := 0;
  peak[1] := 0;
  counter := 0;

  while not fKillscan do
  begin
    level := BASS_ChannelGetLevel(fDecoder); // scan peaks

    if peak[0] < LOWORD(level) then
      peak[0] := LOWORD(level); // set left peak

if peak[1] < HIWORD(level) then
      peak[1] := HIWORD(level); // set right peak

    if BASS_ChannelIsActive(fDecoder) <> BASS_ACTIVE_PLAYING then
    begin
      position := cardinal(-1); // reached the end
end
    else
      position := BASS_ChannelGetPosition(fDecoder,BASS_POS_BYTE) div fBPP;

    if position > cpos then
    begin
      inc(counter);
      if counter <= length(fWaveBufL)-1 then
      begin
        fWaveBufL[counter] := peak[0];
        fWaveBufR[counter] := peak[1];
      end;

      if position >= DWORD(fWidth) then
        fKillscan := true;

        cpos := position;
     end;
    peak[0] := 0;
    peak[1] := 0;
  end;
end;

//------------------------------------------------------------------------------

{ TSpectrumColor }

constructor TSpectrumColor.Create;
begin
  inherited Create;
  fColors := SpectrumThemeDefault;
end;

function TSpectrumColor.GetColor(const index: integer): integer;
begin
  result := fColors[index];
end;

procedure TSpectrumColor.LoadFromFile(const FileName: string);
var Stream : TFileStream;
begin
  Stream := TFileStream.Create(FileName, fmOpenRead);
  try
    LoadFromStream(Stream);
  finally
    Stream.Free;
  end;
end;

procedure TSpectrumColor.LoadFromResource(Instance: THandle; const ResName: string);
var Stream : TResourceStream;
begin
  Stream := TResourceStream.Create(Instance, ResName, RT_RCDATA);
  try
    LoadFromStream(Stream);
  finally
    Stream.Free;
  end;
end;

procedure TSpectrumColor.LoadFromResourceID(Instance: THandle; ResID: integer);
var Stream : TResourceStream;
begin
  Stream := TResourceStream.CreateFromID(Instance, ResID, RT_RCDATA);
  try
    LoadFromStream(Stream);
  finally
    Stream.Free;
  end;
end;

procedure TSpectrumColor.LoadFromStream(Stream: TStream);
begin
  assert(Stream <> nil, 'Error TSpectrumColor.LoadFromStream : '+#13#10+
                        'Stream must not be null.');
  Stream.Read(fColors, SizeOf(fColors));
  Change;
end;

procedure TSpectrumColor.SaveToFile(const FileName: string);
var Stream : TFileStream;
begin
  Stream := TFileStream.Create(FileName, fmCreate);
  try
    SaveToStream(Stream);
  finally
    Stream.Free;
  end;
end;

procedure TSpectrumColor.SaveToStream(Stream: TStream);
begin
  assert(Stream <> nil, 'Error TSpectrumColor.SaveToStream : '+#13#10+
                        'Stream must not be null.');
  Stream.Write(fColors, SizeOf(fColors));
end;

procedure TSpectrumColor.SetColor(const index, value: integer);
begin
  if fColors[index] <> Value then
  begin
    fColors[index] := Value;
    Change;
  end;
end;

procedure TSpectrumColor.AssignTo(Dest: TPersistent);
begin
  if Dest is TSpectrumColor then
    TSpectrumColor(Dest).LoadSpectrumTheme(Self.fColors)
  else
    inherited AssignTo(Dest);
end;

procedure TSpectrumColor.Change;
begin
  if Assigned(fOnChange) then
    fOnChange(Self);
end;

procedure TSpectrumColor.LoadSpectrumTheme(
  const ColorTheme: TSpectrumTheme);
begin
  if not CompareMem(@fColors, @ColorTheme, SizeOf(TSpectrumTheme)) then
  begin
    fColors := ColorTheme;
    Change;
  end;
end;

end.
