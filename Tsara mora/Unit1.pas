unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Menus, StdCtrls, Mask, DBCtrls, FMTBcd, ADODB, SqlExpr;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable1code_entree: TAutoIncField;
    ADOTable1date_entree: TDateTimeField;
    ADOTable1nom_produit: TWideStringField;
    ADOTable1quantite: TIntegerField;
    ADOTable1ref_facture: TWideStringField;
    ADOTable1fournisseur: TWideStringField;
    ADOTable1frais: TIntegerField;
    ADOTable1code_inventaire: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Database1: TDatabase;
    procedure ADOConnection1AfterConnect(Sender: TObject);
    procedure Database1Login(Database: TDatabase; LoginParams: TStrings);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
procedure TForm1.Database1Login(Database: TDatabase; LoginParams: TStrings);
begin
    try
	    database:=tdatabase.Create();
	    database.Execute;
	    database.GetFieldNames('\Program Files\Commerce\base',true);
      if directoryexists('C:\Program Files\Commerce\') then
	    database.DataSets('Commerce','C:\Program Files\Commerce\Commerce.exe');
    finally
	    database.AliasName;
	    Database.Free;
    end;
end;

end.
