unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.DBCtrls, Data.Win.ADODB,Unit2;

type
  TForm1 = class(TForm)
    ADOTable1: TADOTable;
    Label1: TLabel;
    Label2: TLabel;
    DataSource1: TDataSource;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ADOTable1N: TAutoIncField;
    ADOTable1Fonction: TWideStringField;
    ADOTable1code: TWideStringField;
    ADOTable1cpt: TIntegerField;
    DBComboBox1: TDBComboBox;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses  Unit3;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
if dbCombobox1.Text=AdoTable1.FieldByName('Fonction').AsString then
begin
  Adotable1.Edit;
  Adotable1.FieldByName('code').AsString :=Edit1.Text;
  Adotable1.Post;
  Form3.ShowModal;
  end
     else
  showmessage('Mot de pass incorrect!');
  Edit1.Clear;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if messagedlg('Voulez vous vraiment quitter ?',mtconfirmation,[mbyes,mbno],0)=mryes then
begin
canclose:=true;
application.terminate;
end
else
canclose:=false;
end;

end.
