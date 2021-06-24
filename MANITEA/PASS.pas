unit PASS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dblookup, DB, DBTables, Buttons, DBCtrls, Mask, ADODB;

type
  TForm11 = class(TForm)
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable1Uti: TWideStringField;
    ADOTable1Mtd: TWideStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm11.BitBtn1Click(Sender: TObject);
begin
//if Edit1.Text=table1.FieldByName('Utilisateur').AsString then
if dbedit1.Text=Adotable1.FieldByName('passWord').AsString then
form1.ShowModal
else
begin
  Showmessage('MOT DE PASS INCORRECT,VERIFIER SVP!');
end;
end;

procedure TForm11.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TForm11.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if messagedlg('VOULEZ VOUS QUITTER ?',mtconfirmation,[MbYes,MbNo],0)=MrYes then
begin
  Canclose:=true;
  application.Terminate;
  end
  else
  canclose:=false;
end;


end.
