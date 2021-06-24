unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Buttons, DBTables, Mask, DBCtrls;

type
  TForm4 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Table1: TTable;
    Table1UTILISATEUR: TStringField;
    Table1MOT_DE_PASS: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource2: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

//showmessage('CONFIRMATION DE MOT DE PASS INCORRECT')


//adotable1.Append;//adotable1.append:=adotable1.last+adotable1.insert
//dbedit1.SetFocus;
//dbedit2.SetFocus;
//edit1.SetFocus;
//dbedit2.Clear;
//edit1.Clear;
  //end;

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
if edit2.Text=edit1.Text then
begin
  table1.Edit;
  table1.FieldByName('Utilisateur').AsString:=dbedit1.Text;
  table1.FieldByName('MOT_DE_PASS').AsString:=edit1.Text;
  table1.Post;
  //table1.Append;//table1.append:=table1.last+table1.insert
  showmessage('UTILISATEUR ENREGISTRER AVEC SUCCEES');
  dbedit1.Clear;
  edit1.Clear;
  edit2.Clear;
end
else showmessage('MOT DE PASS DIFFERENT, VERIFIER SVP!');
dbedit1.Clear;
edit1.Clear;
edit2.Clear;
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
if messagedlg('Vous-êtes au point de supprimer un utilisateur.Est-ce que vous êtes vraiment sur',mtconfirmation,[mbyes,mbno],0)=mryes then
table1.Delete;
end;

procedure TForm4.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if messagedlg('Voulez-vous fermer Admin Compte ?',mtconfirmation,[MbYes,MbNo],0)=mryes then
begin
canclose:=true;
form4.Close
end
else
canclose:=false;
end;

end.
