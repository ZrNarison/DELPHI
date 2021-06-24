unit login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls;

type
  TForm17 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Form17: TForm17;

implementation

{$R *.dfm}

uses base, Unit1;

procedure TForm17.BitBtn1Click(Sender: TObject);
begin
if dblookUpCombobox1.Text<>'' then
  begin
   if (dblookUpCombobox1.ListField =DataModule2.AdoTable15.FieldByName('id_ResF').AsString) or
  (Edit1.Text=DataModule2.ADOTable15.FieldByName('Mot_de_passe').AsString) then
     begin
      DataModule2.Adotable16.Append;
      DataModule2.AdoTable16.insert;
      DataModule2.ADOTable16.FieldByName('Nom').Value:=dblookUpCombobox1.Text;
      DataModule2.Adotable16.Post;
      Form3.ShowModal;
     end
  else
     showMessage('Mot pass erron�e, veuillez r�essayer SVP !!')
  end
else
  ShowMessage('Veuillez s�l�ctionn�e un utilisateur SVP!!');
 
end;

procedure TForm17.BitBtn2Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.