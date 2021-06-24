unit CONSULTATIONVENTES;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, DB, DBTables, DBCtrls, Grids, DBGrids;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Query1: TQuery;
    DataSource1: TDataSource;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    SpeedButton2: TSpeedButton;
    Query2: TQuery;
    DataSource2: TDataSource;
    Label4: TLabel;
    ComboBox1: TComboBox;
    SpeedButton3: TSpeedButton;
    Query3: TQuery;
    Label5: TLabel;
    SpeedButton4: TSpeedButton;
    Table1: TTable;
    Table2: TTable;
    DataSource3: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Table1Code_C: TStringField;
    Table1Nom_C: TStringField;
    Table1Prenom_C: TStringField;
    Table1Adress_C: TStringField;
    Table1Telephone: TStringField;
    Table1RC_C: TStringField;
    Table1Al_C: TStringField;
    Table1IF_C: TStringField;
    Query4: TQuery;
    ComboBox2: TComboBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.SpeedButton1Click(Sender: TObject);
begin
query1.Close;
query1.Params[0].Asinteger:=strtoint(edit1.Text);
query1.Active:=true;
datasource1.DataSet:=query1;
end;

procedure TForm8.SpeedButton2Click(Sender: TObject);
begin
query2.Close;
query2.Params[0].AsDate:=datetimepicker1.Date;
query2.Params[1].AsDate :=datetimepicker2.Date;
datasource1.DataSet:=query2;
end;

procedure TForm8.SpeedButton3Click(Sender: TObject);
begin
query3.Close;
query3.Params[0].AsString:=combobox1.Text;
query3.Active:=true;
datasource1.DataSet:=query3;
end;

procedure TForm8.SpeedButton4Click(Sender: TObject);
begin
Query4.Close;
query4.Params[0].AsInteger:=strtoint(combobox2.Text);
query4.Active:=true;
datasource1.DataSet:=query4;
end;

end.
