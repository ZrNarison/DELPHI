unit ConsultationAchat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, DBTables, StdCtrls, Buttons, DBCtrls, Grids, DBGrids;

type
  TForm7 = class(TForm)
    Table1: TTable;
    Table2: TTable;
    Label1: TLabel;
    Edit1: TEdit;
    Query1: TQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Query2: TQuery;
    Label4: TLabel;
    ComboBox1: TComboBox;
    SpeedButton3: TSpeedButton;
    Label5: TLabel;
    Query3: TQuery;
    Query4: TQuery;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    ComboBox2: TComboBox;
    Table1Nom_F: TStringField;
    Table1Prenom_F: TStringField;
    Table1Adress_F: TStringField;
    Table1Telephone: TStringField;
    Table1RC_F: TStringField;
    Table1AL_F: TStringField;
    Table1IF_F: TStringField;
    Table1Code_F: TStringField;
    Table2Num_Achat: TFloatField;
    Table2Ref_achat: TStringField;
    Table2Qte_Achat: TFloatField;
    Query1Numero_A: TFloatField;
    Query1Date_Achat: TDateField;
    Query1Reglement_Achat: TStringField;
    Query1Code_Four: TStringField;
    Query2Numero_A: TFloatField;
    Query2Date_Achat: TDateField;
    Query2Reglement_Achat: TStringField;
    Query2Code_Four: TStringField;
    Query3Numero_A: TFloatField;
    Query3Date_Achat: TDateField;
    Query3Reglement_Achat: TStringField;
    Query3Code_Four: TStringField;
    Query4Numero_A: TFloatField;
    Query4Date_Achat: TDateField;
    Query4Reglement_Achat: TStringField;
    Query4Code_Four: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.SpeedButton1Click(Sender: TObject);
begin
Query1.Close;
query1.Params[0].AsInteger:=strtoint(edit1.Text);
query1.Active:=true;
datasource1.DataSet:=query1;
end;

procedure TForm7.SpeedButton3Click(Sender: TObject);
begin
query2.close;
query2.Params[0].AsDate:=datetimepicker1.Date;
query2.Params[1].AsDate:=datetimepicker2.Date;
query2.Active:=true;
datasource2.DataSet:=query2;
end;

procedure TForm7.SpeedButton4Click(Sender: TObject);
begin
query3.Close;
query3.Params[0].AsString:=combobox1.Text;
query3.Active:=true;
datasource1.DataSet:=query3;
end;

procedure TForm7.SpeedButton5Click(Sender: TObject);
begin
Query4.Close;
query4.Params[0].Asinteger:=strtoint(combobox2.Text);
query4.Active:=true;
datasource1.DataSet:=query4;
end;

end.
