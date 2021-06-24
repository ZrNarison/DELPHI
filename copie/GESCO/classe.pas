unit classe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Win.ADODB, Data.DB, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Vcl.Mask, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.DBChart, VCLTee.TeeDBCrossTab,
  VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, frxCtrls;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    FDMemTable1: TFDMemTable;
    FDMemTable1emem: TStringField;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    ADOQuery3: TADOQuery;
    DataSource4: TDataSource;
    DBCrossTabSource1: TDBCrossTabSource;
    DBCrossTabSource2: TDBCrossTabSource;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    Edit2: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses base;

procedure TForm4.BitBtn1Click(Sender: TObject);
var
verfication:string;
begin
DataModule2.Adotable2.Append;
DataModule2.AdoTable2.insert;
DataModule2.AdoTable2.FieldByName('Classe').Value:=Edit2.Text+' - '+Uppercase(Edit1.Text);
DataModule2.AdoTable2.FieldByName('Tutilaire').Value:=DBLookUpComboBox1.Text;
DataModule2.AdoTable2.FieldByName('Ecolage').Value:=DBEdit1.Text;
DataModule2.AdoTable2.Post;
Edit1.Clear;
Edit2.Clear;
DBEdit1.Clear;
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
DataModule2.ADOTable2.Edit;
DbGrid1.ReadOnly:=false;
end;

procedure TForm4.BitBtn3Click(Sender: TObject);
begin
DataModule2.Adotable2.Delete;
Showmessage('Classe supprim� avec succ� !');
end;

procedure TForm4.BitBtn4Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
DBEdit1.Clear;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
//DataModule2.ADOTable2.Active:=true;
FDmemTable1.Active:=true;
//DAtaModule2.ADOTable2.Active:=true;
end;

end.
