unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm6 = class(TForm)
    MainMenu1: TMainMenu;
    FICHIER1: TMenuItem;
    EDITER1: TMenuItem;
    CONSULTER1: TMenuItem;
    CONSULTER2: TMenuItem;
    QUITTER1: TMenuItem;
    ADMINISTRATEURDECOMPTE1: TMenuItem;
    procedure CONSULTER1Click(Sender: TObject);
    procedure CONSULTER2Click(Sender: TObject);
    procedure ADMINISTRATEURDECOMPTE1Click(Sender: TObject);
    procedure QUITTER1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1, Unit2, Unit4;

{$R *.dfm}

procedure TForm6.ADMINISTRATEURDECOMPTE1Click(Sender: TObject);
begin
Form4.ShowModal;
end;

procedure TForm6.CONSULTER1Click(Sender: TObject);
begin
form1.ShowModal;
end;

procedure TForm6.CONSULTER2Click(Sender: TObject);
begin
Form2.ShowModal;
end;

procedure TForm6.QUITTER1Click(Sender: TObject);
begin
close;
end;

end.
