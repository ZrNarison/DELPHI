unit Multiplication;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Ex2, ex3;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Exemple11: TMenuItem;
    Exemple22: TMenuItem;
    procedure Exemple11Click(Sender: TObject);
    procedure Exemple22Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Exemple11Click(Sender: TObject);
begin
form2.ShowModal;
end;

procedure TForm1.Exemple22Click(Sender: TObject);
begin
form3.ShowModal;
end;

end.
