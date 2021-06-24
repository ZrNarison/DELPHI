unit ex3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
edit3.Text:=floattostr(strtofloat(edit1.Text)*strtofloat(edit2.Text));
edit8.Text:=floattostr(strtofloat(edit4.Text)*strtofloat(edit5.Text));
edit7.Text:=floattostr(strtofloat(edit8.Text)*strtofloat(edit6.Text));
edit9.text:=floattostr(strtofloat(edit7.Text)*strtofloat(edit8.Text));
end;

end.
