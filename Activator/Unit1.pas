unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
WinExec('Slmgr -rearm.exe',sw_show);
WinExec('shutdown /r /t 05 /f',sw_show);
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if messagedlg('Voulez vous quitter l''installation',mtconfirmation,[mbYes,mbNo],0)=mryes then
begin
canclose:=true;
application.terminate;
end
else
canclose:=false;
end;

end.
