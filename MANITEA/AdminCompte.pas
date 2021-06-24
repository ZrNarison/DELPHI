unit AdminCompte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, Mask, DBCtrls;

type
  TForm10 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Table1: TTable;
    Table1Utilisateur: TStringField;
    Table1PassWord: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

procedure TForm10.BitBtn1Click(Sender: TObject);
begin
if edit2.Text=edit1.Text then
begin
  table1.Edit;
  table1.FieldByName('PassWord').AsString:=edit1.Text;
  table1.Post;
  showMessage('MODIFICATION EFFECTUEE AVEC SUCCES')
end
    else
begin
showmessage('MOT DE PASS DIFFERENT, VEUILLEZ VERIFIER !');
showmessage('UTILISATEUR EXISTANT, ENTRE UNE AUTRE !');
end;
end;

end.
