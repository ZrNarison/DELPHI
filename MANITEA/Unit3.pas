unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Grids, DBGrids, ADODB;

type
  TForm3 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
if column.Index=0 then

end;

end.
