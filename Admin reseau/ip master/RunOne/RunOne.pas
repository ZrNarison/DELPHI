unit RunOne;

//****************************************************************************//
//                                  INTERFACE                                 //
//****************************************************************************//

interface

//****************************************************************************//

uses Windows, SysUtils, Classes, Messages, Forms, Dialogs, WinTypes;

//****************************************************************************//

type
  TRunOne = class(TComponent)
  private
    { Déclarations privées }
    FormAOwner:TForm;
    AppRunning:Boolean;
    HandleRunOne:Thandle;
    ParamArray:array [0..10]of ShortString;
    OriginalOnShow: TNotifyEvent;
    FHandle: HWnd;
    FCountParam:Integer;
    FStopOtherRun: Boolean;
    FOnAlreadyRun: TNotifyEvent;
    FOnFirstRun: TNotifyEvent;
    FOnGetParam: TNotifyEvent;
    function GetHandle: HWnd;
    procedure SetStopOtherRun(const Value: Boolean);
    procedure SetOnAlreadyRun(const Value: TNotifyEvent);
    procedure SetOnFirstRun(const Value: TNotifyEvent);
    procedure SetOnGetParam(const Value: TNotifyEvent);
  protected
    { Déclarations protégées }
    procedure loaded; override;
    procedure MyOnShow(Sender: TObject); virtual;
    procedure MainWndProc(var Message: TMessage);
    procedure WndProc(var Message: TMessage); virtual;
  public
    { Déclarations publiques }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure OnWmCopyData(var msg:TMessage); message WM_COPYDATA;
    procedure DefaultHandler(var Message); override;
    property Handle: HWnd read GetHandle;
    property CountParam:Integer read FCountParam;
    function StrParam(Index:Integer):String;
  published
    { Déclarations publiées }
    property StopOtherRun :Boolean read FStopOtherRun write SetStopOtherRun default True;
    property OnAlreadyRun : TNotifyEvent read FOnAlreadyRun write SetOnAlreadyRun;
    property OnFirstRun :TNotifyEvent read FOnFirstRun write SetOnFirstRun;
    property OnGetParam :TNotifyEvent read FOnGetParam write SetOnGetParam;
  end;

procedure Register;

//****************************************************************************//
//                                IMPLEMANTATION                              //
//****************************************************************************//

implementation

//****************************************************************************//

uses WinProcs, Registry;

//****************************************************************************//

Type
TPDataEnvoyes=^TDataEnvoyes;
TDataEnvoyes =Packed record
  CountParam:Integer;
  StrParam:Array [0..10]of Shortstring;
end;

//****************************************************************************//
//                                  CREATE                                    //
//****************************************************************************//

constructor TRunOne.Create(AOwner: TComponent);
Var
  Registre:TRegistry;
  I:Integer;
begin
  inherited Create(AOwner);
  FHandle := 0;
  HandleRunOne:=0;
  StopOtherRun:=True;
  if not (csDesigning in ComponentState) then
    begin
    FormAOwner:=TForm(AOwner); //FormAOwner pointera ainsi sur la forme principale de notre projet
    with (AOwner as TForm) do
      Begin
      if Assigned(OnShow) then OriginalOnShow := OnShow;
      OnShow := MyOnShow;
      End;
    Try
      FCountParam:=ParamCount;
      For I:=0 to FCountParam do ParamArray[I]:=ParamStr(I);
    except
      FCountParam:=0;
    end;
    Registre:=TRegistry.Create;
    Registre.RootKey:=HKEY_CURRENT_USER;
    if Registre.OpenKey('\Software\RunOne'+ExtractFileName(Application.ExeName), false) then
       try
       HandleRunOne:=Registre.ReadInteger(ExtractFileName(Application.ExeName)+'RunOne');
       except
       end;
    Registre.Free;
    CreateMutex (nil, False, PChar ('RunOneMutex'+ExtractFileName(application.ExeName)));
    AppRunning:= GetLastError=ERROR_ALREADY_EXISTS;
    end;
end;

//****************************************************************************//
//                                   LOADED                                   //
//****************************************************************************//

procedure TRunOne.loaded;
Var
  Registre:TRegistry;
  I:Integer;
  DataEnvoyes:TDataEnvoyes;
  CopyDataStruct:TCopyDataStruct;
begin
  inherited;
  if not(csDesigning in ComponentState) then
    begin
    if AppRunning then
      begin
      if assigned(FOnAlreadyRun) then FOnAlreadyRun(Self);
      if StopOtherRun then
        Begin
        DataEnvoyes.CountParam:=FCountParam;
        For I:= 0 to FCountParam do DataEnvoyes.StrParam[I]:=ParamArray[I];
        CopyDataStruct.cbData:=SizeOf(DataEnvoyes);
        CopyDataStruct.lpData:=@DataEnvoyes;
        SendMessage(HandleRunOne,WM_COPYDATA,Self.Handle,LongInt(@CopyDataStruct));
        Application.Terminate;
        End;
      End
    Else
      begin
      Registre:=TRegistry.Create;
      Registre.RootKey:=HKEY_CURRENT_USER;
      if Registre.OpenKey('\Software\RunOne'+ExtractFileName(Application.ExeName), true) then
        begin
        Registre.WriteInteger(ExtractFileName(Application.ExeName)+'RunOne',Self.Handle);
        end;
      Registre.Free;
      end;
    end;
end;

//****************************************************************************//
//                                  MYONSHOW                                  //
//****************************************************************************//

procedure TRunOne.MyOnShow(Sender: TObject);
begin
  if not(csDesigning in ComponentState) then
  begin
  if AppRunning then
    begin
    if not StopOtherRun then
      Begin
      if assigned(FOnGetParam) then FOnGetParam(Self);
      if Assigned(OriginalOnShow) then OriginalOnShow(Sender);
      End;
    end
  else
    begin
    if assigned(FOnFirstRun) then FOnFirstRun(Self);
    if assigned(FOnGetParam) then FOnGetParam(Self);
    if Assigned(OriginalOnShow) then OriginalOnShow(Sender);
    end;
  end;
end;

//****************************************************************************//
//                                  DESTROY                                   //
//****************************************************************************//

destructor TRunOne.Destroy;
Var
  Registre:TRegistry;
begin
  if not AppRunning then
    Begin
    Registre:=TRegistry.Create;
    Registre.RootKey:=HKEY_CURRENT_USER;
    if Registre.OpenKey('\Software\RunOne'+ExtractFileName(Application.ExeName), false) then
       Registre.DeleteKey('\Software\RunOne'+ExtractFileName(Application.ExeName));
    Registre.Free;
    End;
  DeallocateHWnd(Handle);
  inherited Destroy
end;

//****************************************************************************//
//                                  HANDLE                                    //
//****************************************************************************//

function TRunOne.GetHandle: HWnd;
begin
  if FHandle = 0 then FHandle := AllocateHWnd(MainWndProc);
  Result := FHandle
end;

//****************************************************************************//

procedure TRunOne.MainWndProc(var Message: TMessage);
begin
  try
    WndProc(Message)
  except
    on Exception do
      if Assigned(Application) then Application.HandleException(Self)
      else raise
  end
end;

//****************************************************************************//

procedure TRunOne.WndProc(var Message: TMessage);
begin
  Dispatch(Message)
end;

//****************************************************************************//

procedure TRunOne.DefaultHandler(var Message);
begin
  inherited DefaultHandler(Message);
  TMessage(Message).Result := DefWindowProc(Handle, TMessage(Message).Msg,
    TMessage(Message).wParam, TMessage(Message).lParam);
end;

//****************************************************************************//
//                                  MESSAGE                                   //
//****************************************************************************//

procedure TRunOne.OnWmCopyData(var msg: TMessage);
type
  TPCopyDataStruct=^TCopyDataStruct;
  TPDataEnvoyes=^TDataEnvoyes;
Var
  I:Integer;
  DataEnvoyes:TDataEnvoyes;
  PDataEnvoyes:TPDataEnvoyes;
  PCopyDataStruct:TPCopyDataStruct;
begin
  PCopyDataStruct:=TPCopyDataStruct(msg.LParam);
  PDataEnvoyes:=PCopyDataStruct^.lpData;
  DataEnvoyes:=PDataEnvoyes^;
  FCountParam:=DataEnvoyes.CountParam;
  For I :=0 to FCountParam do ParamArray[I]:=DataEnvoyes.StrParam[I];
  ShowWindow(Application.Handle, SW_NORMAL );
  SetForegroundWindow(FormAOwner.Handle);
  if assigned(FOnGetParam) then FOnGetParam(Self);
end;

//****************************************************************************//
//                             LECTURE PROPRIETE                              //
//****************************************************************************//

function TRunOne.StrParam(Index:Integer):String;
Begin
  Result:=ParamArray[Index];
End;

procedure TRunOne.SetStopOtherRun(const Value: Boolean);
begin
  FStopOtherRun := Value;
end;

procedure TRunOne.SetOnAlreadyRun(const Value: TNotifyEvent);
begin
  FOnAlreadyRun := Value;
end;

procedure TRunOne.SetOnFirstRun(const Value: TNotifyEvent);
begin
  FOnFirstRun := Value;
end;

procedure TRunOne.SetOnGetParam(const Value: TNotifyEvent);
begin
  FOnGetParam := Value;
end;

//****************************************************************************//
//                                 REGISTER                                   //
//****************************************************************************//

procedure Register;
begin
  RegisterComponents('Perso', [TRunOne]);
end;

//****************************************************************************//
//****************************************************************************//
//****************************************************************************//
end.
 