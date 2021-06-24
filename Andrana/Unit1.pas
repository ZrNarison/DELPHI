unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  Data.DB, Data.Win.ADODB;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOCommand1: TADOCommand;
    RDSConnection1: TRDSConnection;
    ADODataSet1: TADODataSet;
    OpenDialog1: TOpenDialog;
    procedure FormCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.FormCreate(Sender: TObject);
var
connection:wideString;
base:string;
begin
 ADOConnection1.Connected:=false;
 base:=openDialog1.FileName;
 Connection:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source=';
// connection:=connection+base;
// connection:=connection+'Mode=share Deny;jet OLEDB:system database="";jet OLEDB=Registry Path="";';
// connection:=connection+'jet OLEDB=Database Password:"";jet OLEDB:engine type=5; Jet OLEDB:DataBase:Locking mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:global Bulk transactions=1;jet OLEDB:New Database PassWord="";';
// connection:=connection+'Jet OLEDB:Create system database=False;Jet OLEDB:encrypt DataBase=False;Jet OLEDB:';
end;

end.
