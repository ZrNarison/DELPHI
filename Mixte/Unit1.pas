unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
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
WinExec('Windows\W7_x64\setup.exe',sw_show);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
WinExec('Windows\W7_x86\setup.exe',sw_show);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
WinExec('Windows\W8\setup.exe',sw_show);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
WinExec('Windows\W10_x64\setup.exe',sw_show);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
WinExec('Windows\W10_x64\setup.exe',sw_show);
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if messagedlg('Voulez vous quitter l installation',mtconfirmation,[mbYes,mbNo],0)=mryes then
begin
canclose:=true;
application.terminate;
end
else
canclose:=false;
end;

end.
