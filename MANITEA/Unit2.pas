unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBTables, DB, Grids, DBGrids, ADODB, Mask, DBCtrls;

type
  TForm2 = class(TForm)
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.DBGrid1CellClick(Column: TColumn);
begin
if column.Index=0 then

end;


end.
