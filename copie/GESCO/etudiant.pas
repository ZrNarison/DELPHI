unit etudiant;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Vcl.DBCtrls, Data.DB, Vcl.Mask, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.FileCtrl;

type
  TForm7 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Label9: TLabel;
    FDMemTable1: TFDMemTable;
    FDMemTable1date: TStringField;
    FDMemTable1tel: TStringField;
    DataSource1: TDataSource;
    Edit2: TEdit;
    Edit5: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    Edit6: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DateTimePicker1: TDateTimePicker;
    SpeedButton1: TSpeedButton;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    Edit7: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Label12Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form7: TForm7;
  MyFile:TextFile;
  i:integer;
  dir:TDriveCombobox;

implementation

{$R *.dfm}

uses base, stat_etu;

procedure TForm7.BitBtn1Click(Sender: TObject);
begin
with DataModule2 do
begin
  AdoConnection1.Connected:=true;
  Adotable6.Append;
  AdoTable6.insert;
  AdoTable6.FieldByName('Nom').Value:=UpperCase(Edit1.Text)+' '+Edit6.Text;
  AdoTable6.FieldByName('Date_naissance').Value:=DateTimePicker1.Date;
  AdoTable6.FieldByName('Lieu_naissance').Value:=UpperCase(Edit2.Text);
  AdoTable6.FieldByName('Fille_Fils').Value:= UpperCase(Edit3.Text) +' et '+UpperCase(Edit4.text);
  AdoTable6.FieldByName('Adresse').Value:=uppercase(Edit5.Text);
  if RadioButton1.Checked then AdoTable6.FieldByName('Sexe').Value:='FEMININE';
  if RadioButton2.Checked then AdoTable6.FieldByName('Sexe').Value:='MASCULINE';
  AdoTable6.FieldByName('Classe').Value:=DBLookUpCombobox1.Text;
  AdoTable6.FieldByName('Contact').Value:=DBEdit2.Text;
  AdoTable6.Post;
  Edit1.Clear;
  Edit6.Clear;
  Edit2.Clear;
  //GrEdit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  DBEdit2.Clear;
end;

end;

procedure TForm7.BitBtn2Click(Sender: TObject);
begin
DataModule2.ADOTable6.Edit;
DbGrid1.ReadOnly:=false;
end;

procedure TForm7.BitBtn3Click(Sender: TObject);
begin
DataModule2.ADOTable6.Delete;
end;

procedure TForm7.DBGrid1Enter(Sender: TObject);
begin
with DataModule2 do
begin
  adoConnection1.Connected:=true;
end;
end;

procedure TForm7.DBLookupComboBox2Click(Sender: TObject);
begin
if DBLookUpComboBox2.ListField<>'' then
begin
DataModule2.ADOTable6.Close;
DataModule2.ADOTable6.Filtered:=true;
DataModule2.ADOTable6.filter :='[Classe]='+#39+ DBLookUpComboBox2.ListField +'*'+ #39 ;
DataModule2.ADOTable6.active := true ;
end
else
begin
DataModule2.ADOTable6.close ;
DataModule2.ADOTable6.filtered := false ;
DataModule2.ADOTable6.active := true ;
end;
end;

procedure TForm7.Edit7Change(Sender: TObject);
begin
//if edit7.text <>'' then
//begin
//with DataModule2 do
//begin
//Adotable6.Active:=true;
//AdoTable6.close;
//AdoTable6.filtered :=false ;
//AdoTable6.Filter :='[Nom]=' + #39 + edit1.text+#39 ;
//AdoTable6.active := true
//end
//end
//else
//begin
//DataModule2.Adotable6.close ;
//DataModule2.Adotable6.filtered := false ;
//DataModule2.Adotable6.active := true ;
//end;
end;

procedure TForm7.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
Form9.Close;
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
DataModule2.ADOTable6.Active:=true;
DataModule2.ADOTable14.Active:=true;
DataModule2.AdoQuery5.Active:=true;
DataModule2.ADOQuery12.Active:=true;
FDMeMTable1.Active:=true;
end;

procedure TForm7.Label12Click(Sender: TObject);
begin
DataModule2.ADOConnection1.Connected:=true;
Form9.Show;
end;

procedure TForm7.SpeedButton1Click(Sender: TObject);
begin
(*AssignFile(Myfile,'Liste des Etudiant.docx');
ReWrite(MyFile);
for i := 0 to 100 do
begin
Writeln(MyFile,DataModule2.ADOTable6.TableName[i]);
end;
closeFile(MyFile);*)
end;

end.
