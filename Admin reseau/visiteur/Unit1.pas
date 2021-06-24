{GET public ip et local ip by HIC v1}
unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Psock, NMHttp, Buttons,WINSOCK, CoolTrayIcon, Menus,ClipBrd,
  ExtCtrls;

type
  TForm1 = class(TForm)
    Label2: TLabel;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    HTTP: TNMHTTP;
    Edit1: TEdit;
    T1: TCoolTrayIcon;
    PopupMenu1: TPopupMenu;
    shox1: TMenuItem;
    fermer1: TMenuItem;
    copyinternetip1: TMenuItem;
    Timer1: TTimer;
    Log1: TMenuItem;
    N1: TMenuItem;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure T1Click(Sender: TObject);
    procedure T1DblClick(Sender: TObject);
    procedure T1MouseEnter(Sender: TObject);
    procedure shox1Click(Sender: TObject);
    procedure fermer1Click(Sender: TObject);
    procedure copyinternetip1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Log1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;
  OLDIP:STRING;
  function log:string;
implementation

uses Unit2;

{$R *.dfm}

// Function pour avoir  local IP
function GetIPFromHost: STRING;
type
  Name = array[0..100] of Char;
  PName = ^Name;
var
  HEnt: pHostEnt; 
  HName: PName; 
  WSAData: TWSAData;
  HostName, IPaddr, WSAErr: string ;
  i: Integer;
begin 
  Result :='';
  if WSAStartup($0101, WSAData) <> 0 then begin 
    WSAErr := 'Socket does not respond!"'; 
    Exit; 
  end; 
  IPaddr := ''; 
  New(HName);

  
  if GetHostName(HName^, SizeOf(Name)) = 0 then
  begin
    HostName := StrPas(HName^);
    HEnt := GetHostByName(HName^);
    for i := 0 to HEnt^.h_length - 1 do
     IPaddr :=
      Concat(IPaddr,
      IntToStr(Ord(HEnt^.h_addr_list^[i])) + '.');
    SetLength(IPaddr, Length(IPaddr) - 1);
    Result := FORMAT('%S < %S >',[HOSTNAME,IPaddr]);

  end
  else begin
   case WSAGetLastError of
    WSANOTINITIALISED:WSAErr:='WSANotInitialised';
    WSAENETDOWN      :WSAErr:='WSAENetDown';
    WSAEINPROGRESS   :WSAErr:='WSAEInProgress';
   end;
   RESULT:=WSAErr;
  end;
  Dispose(HName);
  WSACleanup;
end;

function log:string;
begin
result:=format('[%s]: %s  Public ip: %s',[dateTimetostr(now),FORM1.Edit1.Text,FORM1.Edit2.Text]);
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin

 TRY
 EDIT1.Text:=GetIPFromHost;
 HTTP.Get('http://myexternalip.com/raw');
 EDIT2.Text:=HTTP.Body;
 T1.ShowBalloonHint('Adresse IP ',EDIT1.Text+#13+LABEL2.Caption+' '+EDIT2.Text,bitInfo,10);
 form2.Memo1.Lines.Add(log);
 EXCEPT
 END;
end;




procedure TForm1.FormCreate(Sender: TObject);
begin
 TRY
 EDIT1.Text:=GetIPFromHost;
 HTTP.Get('http://myexternalip.com/raw');
 EDIT2.Text:=HTTP.Body;
 T1.ShowBalloonHint('Adresse IP ',EDIT1.Text+#13+LABEL2.Caption+' '+EDIT2.Text,bitInfo,10);
 OLDIP:=EDIT2.Text;
 EXCEPT
 END;
end;

procedure TForm1.T1Click(Sender: TObject);
begin
if application.ShowMainForm=false then
T1.ShowMainForm else
t1.HideMainForm;

end;

procedure TForm1.T1DblClick(Sender: TObject);
begin
TRY
 EDIT1.Text:=GetIPFromHost;
 HTTP.Get('http://myexternalip.com/raw');
 EDIT2.Text:=HTTP.Body;
 T1.ShowBalloonHint('Adresse IP ',EDIT1.Text+#13+LABEL2.Caption+' '+EDIT2.Text,bitInfo,10);
 EXCEPT
 END;
end;

procedure TForm1.T1MouseEnter(Sender: TObject);
begin
 T1.ShowBalloonHint('Adresse IP ',EDIT1.Text+#13+LABEL2.Caption+' '+EDIT2.Text,bitInfo,10);

end;

procedure TForm1.shox1Click(Sender: TObject);
begin
t1.ShowMainForm;

end;

procedure TForm1.fermer1Click(Sender: TObject);
begin
APPLICATION.Terminate;
end;

procedure TForm1.copyinternetip1Click(Sender: TObject);
begin
 Clipboard.AsText:= EDIT2.Text;
 
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
 TRY
 EDIT1.Text:=GetIPFromHost;
 HTTP.Get('http://myexternalip.com/raw');
 EDIT2.Text:=HTTP.Body;
 
 IF EDIT2.Text<>OLDIP THEN begin
 T1.ShowBalloonHint('Adresse IP ',EDIT1.Text+#13+LABEL2.Caption+' '+EDIT2.Text,bitInfo,10);
 form2.Memo1.Lines.Add(log);
 end;
 OLDIP:=EDIT2.Text;
 EXCEPT
 END;
end;

procedure TForm1.Log1Click(Sender: TObject);
begin
form2.Show;
end;

end.
