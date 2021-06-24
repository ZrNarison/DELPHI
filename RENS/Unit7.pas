unit Unit7;

interface

uses
  SysUtils, Classes, DB, DBTables, ADODB;

type
  TDataModule7 = class(TDataModule)
    Database1: TDatabase;
    DataSource1: TDataSource;
    ADOCommand1: TADOCommand;
    Query1: TQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule7: TDataModule7;

implementation

{$R *.dfm}

end.
