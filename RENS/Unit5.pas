unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, ADODB, Mask, DBCtrls, dblookup;

type
  TForm5 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Table1: TTable;
    Table1UTILISATEUR: TStringField;
    Table1MOT_DE_PASS: TStringField;
    Label1: TLabel;
    DataSource2: TDataSource;
    Label2: TLabel;
    DBLookupCombo1: TDBLookupCombo;
    Edit1: TEdit;
    Database1: TDatabase;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1, Unit6;

{$R *.dfm}



procedure TForm5.BitBtn1Click(Sender: TObject);
begin
if EDIT1.Text=table1.FieldByName('MOT_DE_PASS').AsString then
Form6.ShowModal
else
begin
  showmessage('UTILISATEUR INEXISTANT ou MOT DE PASS INCORRECT, VERIFIER SVP!');
  edit1.Clear;
end;
end;

procedure TForm5.BitBtn2Click(Sender: TObject);
begin
close;
end;


procedure TForm5.ComboBox1Change(Sender: TObject);
begin
table1.Close;
table1.Active:=true;
end;

procedure TForm5.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if messagedlg('VOULEZ-VOUS QUITTER ?',mtconfirmation,[mbYes,mbNO],0)=mrYes then
 begin
   canclose:=true;
   application.Terminate;
 end
 else
 canclose:=false
end;

procedure TForm5.FormCreate(Sender: TObject);
var database:Tdatabase;
begin

end;

end.
