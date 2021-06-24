unit compte;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm18 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form18: TForm18;

implementation

{$R *.dfm}

uses base;

procedure TForm18.BitBtn1Click(Sender: TObject);
begin
//if DataModule2.ADOTable16.FieldByName('Nom').asstring<>DataModule2.ADOTable15.FieldByName('id_ResF').Asstring then
  If edit1.text = DataModule2.ADOTable15.FieldByName('Mot_de_passe').asstring then
    If edit2.text = edit3.text then
      Begin
        DataModule2.ADOTable15.edit;
        DataModule2.ADOTable15.FieldByName('Mot_de_passe').asstring:=edit2.text;
        DataModule2.ADOTable15.post;
        Showmessage('la modification du mot de passe est effectuée avec succée !');
        DataModule2.ADOTable16.Delete;
        Application.Terminate;
      End
    Else
      begin
        Showmessage('Mot de pass différent, confirmé SVP ! ');
        Edit3.Text:='';
      end
  Else
    Begin
        Showmessage('Vous essayé d''accéder au une autre compte !') ;
        Edit1.Clear;
        Edit2.Clear;
        Edit3.Clear
//    End
//Else
// begin
// Showmessage('Vous n''êtes un intruis !');
end;

end;

procedure TForm18.BitBtn2Click(Sender: TObject);
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
end;

end.
