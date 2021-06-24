unit Fournisseur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, DBTables;

type
  TForm4 = class(TForm)
    Table1: TTable;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Label1: TLabel;
    Edit1: TEdit;
    Table1Nom_F: TStringField;
    Table1Prenom_F: TStringField;
    Table1Adress_F: TStringField;
    Table1Telephone: TStringField;
    Table1RC_F: TStringField;
    Table1AL_F: TStringField;
    Table1IF_F: TStringField;
    Table1Code_F: TStringField;
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Edit1Change(Sender: TObject);
begin
if edit1.Text<>'' then
begin
  table1.Close;
  table1.Filtered:=true;
  table1.Filter:='[Nom_F]='+#39+edit1.Text+'*'+#39;
  table1.Active:=true;
  end
  else
  begin
    table1.Close;
    table1.Filtered:=true;
    table1.Active:=true;
  end;
end;

end.
