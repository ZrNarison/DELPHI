unit ecolage1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm12 = class(TForm)
    Panel1: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label15: TLabel;
    DBGrid2: TDBGrid;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    datasourceecolage1: TDataSource;
    ecolage1: TFDMemTable;
    ecolage1crd: TStringField;
    ecolage1esp: TStringField;
    ecolage1chq: TStringField;
    ecolage1mois: TStringField;
    ecolage1datepay: TStringField;
    DateTimePicker1: TDateTimePicker;
    DBLookupComboBox1: TDBLookupComboBox;
    ecolage1tmotn: TStringField;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    ecolage1cmtn: TStringField;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Ecolage2: TDBLookupComboBox;
    Label3: TLabel;
    ComboBox1: TComboBox;
    procedure Label15Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

uses ecolage, base;

procedure TForm12.BitBtn5Click(Sender: TObject);
begin
DataModule2.Adotable7.Append;
DataModule2.AdoTable7.insert;
DataModule2.AdoTable7.FieldByName('N�Matricule').Value:=DbLookUpComboBox1.Text;
DataModule2.AdoTable7.FieldByName('Ecolage_mois').Value:=ComboBox1.text;
//with ComboBox1 do
//begin
//  if comboBox1.ItemIndex=0 then DataModule2.AdoTable7.FieldByName('Ecolage_mois').Value:='1';
//  if comboBox1.ItemIndex=1 then DataModule2.AdoTable7.FieldByName('Ecolage_mois').Value:='2';
//  if comboBox1.ItemIndex=2 then DataModule2.AdoTable7.FieldByName('Ecolage_mois').Value:='3';
//  if comboBox1.ItemIndex=3 then DataModule2.AdoTable7.FieldByName('Ecolage_mois').Value:='4';
//  if comboBox1.ItemIndex=4 then DataModule2.AdoTable7.FieldByName('Ecolage_mois').Value:='5';
//  if comboBox1.ItemIndex=5 then DataModule2.AdoTable7.FieldByName('Ecolage_mois').Value:='6';
//  if comboBox1.ItemIndex=6 then DataModule2.AdoTable7.FieldByName('Ecolage_mois').Value:='7';
//  if comboBox1.ItemIndex=7 then DataModule2.AdoTable7.FieldByName('Ecolage_mois').Value:='8';
//  if comboBox1.ItemIndex=8 then DataModule2.AdoTable7.FieldByName('Ecolage_mois').Value:='9';
//  if comboBox1.ItemIndex=9 then DataModule2.AdoTable7.FieldByName('Ecolage_mois').Value:='10';
//  if comboBox1.ItemIndex=10 then DataModule2.AdoTable7.FieldByName('Ecolage_mois').Value:='11';
//  if comboBox1.ItemIndex=11 then DataModule2.AdoTable7.FieldByName('Ecolage_mois').Value:='12';
//end;
DataModule2.AdoTable7.FieldByName('Date_payer').Value:=DateTimePicker1.Date;
if radioButton4.Checked then
begin
DataModule2.AdoTable7.FieldByName('Montant').Value:=DbEdit2.Text;
DataModule2.AdoTable7.FieldByName('Mode_payement').Value:='N� Ch�que :' +' '+ DBEdit4.Text;
end;
if radioButton5.Checked then
begin
DataModule2.AdoTable7.FieldByName('Montant').Value:=DbEdit1.Text ;
DataModule2.AdoTable7.FieldByName('Mode_payement').Value:='Vennant du :' +' '+ DBEdit5.Text;
end;
if RadioButton6.Checked then
begin
DataModule2.AdoTable7.FieldByName('Montant').Value:=DbEdit6.Text ;
DataModule2.AdoTable7.FieldByName('Mode_payement').Value:='Esp�ce';
end;
DataModule2.AdoTable7.FieldByName('Date_payer').Value:=datetostr(date);
DataModule2.AdoTable7.FieldByName('Responsable').Value:=DataModule2.ADOTable16.FieldByName('Nom').Value;
DataModule2.AdoTable7.Post;
DBEdit4.Clear;DBEdit2.Clear;
DBEdit5.Clear;DBEdit1.Clear;
DBEdit6.Clear;
end;

procedure TForm12.BitBtn6Click(Sender: TObject);
begin
DataModule2.ADOTable7.Edit;
DbGrid2.ReadOnly:=false;
DbGrid2.Columns[3].ReadOnly:=true;
DbGrid2.Columns[5].ReadOnly:=true;
end;

procedure TForm12.BitBtn7Click(Sender: TObject);
begin
dataModule2.Adotable7.Delete;
end;

procedure TForm12.FormCreate(Sender: TObject);
begin
DataModule2.ADOTable7.Active:=true;
Ecolage1.Active:=true;
DataModule2.ADOQuery11.Active:=true;
Label14.Visible:=false;DbEdit4.Visible:=false;Label2.Visible:=false;DbEdit2.Visible:=false;
Label13.Visible:=false;DbEdit5.Visible:=false;Label1.Visible:=false;DbEdit1.Visible:=false;
end;

procedure TForm12.Label15Click(Sender: TObject);
begin
Form12.Close;
Form10.ShowModal;
end;

procedure TForm12.RadioButton4Click(Sender: TObject);
begin
Label12.Visible:=false;DbEdit6.Visible:=false;
Label13.Visible:=false;DbEdit5.Visible:=false;Label1.Visible:=false;DbEdit1.Visible:=false;
Label14.Visible:=true;DbEdit4.Visible:=true;Label2.Visible:=true;DbEdit2.Visible:=true;
end;

procedure TForm12.RadioButton5Click(Sender: TObject);
begin
Label14.Visible:=false;DbEdit4.Visible:=false;Label2.Visible:=false;DbEdit2.Visible:=false;
Label12.Visible:=false;DbEdit6.Visible:=false;
Label13.Visible:=true;DbEdit5.Visible:=true;Label1.Visible:=true;DbEdit1.Visible:=true;
end;

procedure TForm12.RadioButton6Click(Sender: TObject);
begin
Label13.Visible:=false;DbEdit4.Visible:=false;Label2.Visible:=false;DbEdit2.Visible:=false;
Label14.Visible:=false;DbEdit5.Visible:=false;Label1.Visible:=false;DbEdit1.Visible:=false;
label12.Visible:=true;DbEdit6.Visible:=true;
end;

end.
