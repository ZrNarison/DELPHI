unit Unit2;

interface

uses
  System.SysUtils, System.Classes, Data.Win.ADODB, Data.DB;

type
  TDataModule2 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOCommand1: TADOCommand;
    ADODataSet1: TADODataSet;
    ADOStoredProc1: TADOStoredProc;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
