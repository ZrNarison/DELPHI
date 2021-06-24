unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,bass,uScanThread, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    btLoadSong1: TButton;
    Label2: TLabel;
    btLoadSong2: TButton;
    ColorDialog1: TColorDialog;
    panColBack: TPanel;
    panColPeak: TPanel;
    panColBorder: TPanel;
    panColLoopS: TPanel;
    panColLoopE: TPanel;
    panColPos: TPanel;
    panColText: TPanel;
    OpenDialog1: TOpenDialog;
    ComboBox1: TComboBox;

    procedure FormCreate(Sender: TObject);
    procedure btLoadSong2Click(Sender: TObject);
    procedure btLoadSong1Click(Sender: TObject);
    procedure PanColorClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    fBassInit : boolean;
    chan1, chan2, chan1Decode, chan2Decode : HSTREAM;
    ScanThreadChan1, ScanThreadChan2 : TScanThread;
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;
  PATH : String;
implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  PATH := ExtractFilePath(Application.ExeName);

  fBassInit := BASS_Init(-1,44100,0,Handle,nil);
  assert(fBassInit, 'Bass initialization failure.');

  // on charge le son 2
  panColBack.Tag   := 0;
  panColPeak.Tag   := 1;
  panColBorder.Tag := 2;
  panColLoopS.Tag  := 3;
  panColLoopE.Tag  := 4;
  panColPos.Tag    := 5;
  panColText.Tag   := 6;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  if chan2 <> 0 then
  begin
    BASS_StreamFree(chan2);
    BASS_StreamFree(chan2Decode);
    ScanThreadChan2.Free;
  end;

  if chan1 <> 0 then begin
    BASS_StreamFree(chan1);
    BASS_StreamFree(chan1Decode);
    ScanThreadChan1.Free;
  end;

  if fBassInit then
    BASS_Free;
end;

procedure TForm1.btLoadSong2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    // libère les ressources
    if chan2 <> 0 then
    begin
      BASS_StreamFree(chan2);
      BASS_StreamFree(chan2Decode);
      ScanThreadChan2.Free;
    end;

    chan2 := BASS_StreamCreateFile(false,PChar(OpenDialog1.FileName),0,0,BASS_SAMPLE_LOOP);
    BASS_ChannelPlay(chan2,TRUE);

    chan2Decode := BASS_StreamCreateFile(false,PChar(OpenDialog1.FileName),0,0,BASS_STREAM_DECODE);
    ScanThreadChan2 := TScanThread.Create(Self, chan2Decode, chan2, 16, 328, 593, 241);
  end;
end;

procedure TForm1.btLoadSong1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    // libère les ressources
    if chan1 <> 0 then begin
      BASS_StreamFree(chan1);
      BASS_StreamFree(chan1Decode);
      ScanThreadChan1.Free;
    end;

    chan1 := BASS_StreamCreateFile(false,PChar(OpenDialog1.FileName),0,0,BASS_SAMPLE_LOOP);
    BASS_ChannelPlay(chan1,TRUE);
    // on créé une channel "décodé"
    chan1Decode := BASS_StreamCreateFile(false,PChar(OpenDialog1.FileName),0,0,BASS_STREAM_DECODE);
    ScanThreadChan1 := TScanThread.Create(Self, chan1Decode, chan1, 16, 72, 400, 185);
  end;
end;

procedure TForm1.PanColorClick(Sender: TObject);
var Col : integer;
begin
  if ColorDialog1.Execute then
  begin
    (Sender as TPanel).Color := ColorDialog1.Color;
    Col := (Sender as TPanel).Color;
    with ScanThreadChan1.SpectrumColor do
    begin
      case (Sender as TPanel).Tag of
        0: scBack      := Col;
        1: scPeak      := Col;
        2: scBorder    := Col;
        3: scLoopStart := Col;
        4: scLoopEnd   := Col;
        5: scPosition  := Col;
        6: scText      := Col;
      end;
    end;
  end;
end;


procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.ItemIndex <> -1 then
  begin
    case ComboBox1.ItemIndex of
      0 : ScanThreadChan1.SpectrumColor.LoadSpectrumTheme(SpectrumThemeDefault);
      1 : ScanThreadChan1.SpectrumColor.LoadSpectrumTheme(SpectrumThemeSilver);
      2 : ScanThreadChan1.SpectrumColor.LoadSpectrumTheme(SpectrumThemeGirly);
      3 : ScanThreadChan1.SpectrumColor.LoadSpectrumTheme(SpectrumThemeArmy);
      4 : ScanThreadChan1.SpectrumColor.LoadSpectrumTheme(SpectrumThemeLCD);
    end;
  end;
end;

end.
