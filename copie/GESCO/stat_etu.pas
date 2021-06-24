unit stat_etu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart,
  VCLTee.TeeDBCrossTab;

type
  TForm9 = class(TForm)
    DBChart1: TDBChart;
    Series1: TPieSeries;
    procedure FormCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

uses base;

procedure TForm9.FormCreate(Sender: TObject);
begin
DataModule2.ADOTable6.Active:=true;
with DataModule2 do
begin

  AdoQuery3.Close;
  adoQuery3.SQL.Clear;
  Adoquery3.SQL.Add('SELECT Classe, Count(Etudiant.Sexe) AS nombre FROM Etudiant GROUP BY Classe');
  AdoQuery3.ExecSQL;
  AdoQuery3.Open;
end;
end;

end.
