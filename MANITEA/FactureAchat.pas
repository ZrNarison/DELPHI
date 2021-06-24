unit FactureAchat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, DB, DBTables, Buttons, Grids, DBGrids;

type
  TForm5 = class(TForm)
    Table1: TTable;
    Table2: TTable;
    Table3: TTable;
    Table4: TTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    SpeedButton1: TSpeedButton;
    Query1: TQuery;
    Table1Numero_A: TFloatField;
    Table1Date_Achat: TDateField;
    Table1Reglement_Achat: TStringField;
    Table1Code_Four: TStringField;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBComboBox1: TDBComboBox;
    Table2Nom_F: TStringField;
    Table2Prenom_F: TStringField;
    Table2Adress_F: TStringField;
    Table2Telephone: TStringField;
    Table2RC_F: TStringField;
    Table2AL_F: TStringField;
    Table2IF_F: TStringField;
    Table4Reference: TStringField;
    Table4Designation: TStringField;
    Table4Qte_Stock: TFloatField;
    Table4Prix_achat: TCurrencyField;
    Table4Prix_vente: TCurrencyField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Table2Code_F: TStringField;
    Query1TOTAL_HT: TCurrencyField;
    Query1TOTAL: TCurrencyField;
    Label7: TLabel;
    Label8: TLabel;
    Table3Num_Achat: TFloatField;
    Table3Ref_achat: TStringField;
    Table3Qte_Achat: TFloatField;
    Table3Prix_Vente: TCurrencyField;
    DataSource3: TDataSource;
    DBGrid1: TDBGrid;
    Table3TOTAL_HT: TCurrencyField;
    Table3TOTAL: TCurrencyField;
    Table3Designation: TStringField;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DataSource4: TDataSource;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    procedure Table1AfterInsert(DataSet: TDataSet);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Table3CalcFields(DataSet: TDataSet);
    procedure Label8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.DBComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
dbcombobox1.SetFocus;
end;

procedure TForm5.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
dbedit2.SetFocus;
end;

procedure TForm5.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
dbcombobox1.SetFocus;
end;

procedure TForm5.DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
dblookupcombobox1.SetFocus;
end;

procedure TForm5.Label8Click(Sender: TObject);
var chaine1,chaine:string;
p,nombre,q,DEC:integer;
N,n1:real;
Procedure decimale(var p3:integer);
begin
if p3=10 then chaine:=chaine+'DIX';
if p3=11 then chaine:=chaine+'ONZE';
if p3=12 then chaine:=chaine+'DOUZE';
if p3=13 then chaine:=chaine+'TREIZE';
if p3=14 then chaine:=chaine+'QUATORZE';
if p3=15 then chaine:=chaine+'QUINZE';
if p3=16 then chaine:=chaine+'SEIZE';
if p3=17 then chaine:=chaine+'DIX SEPT';
if p3=18 then chaine:=chaine+'DIX HUIT';
if p3=19 then chaine:=chaine+'DIX NEUF';
end;
procedure chiffre(var p2:integer);
begin
if p2=1 then chaine:=chaine+'UN';
if p2=2 then chaine:=chaine+'DEUX';
if p2=3 then chaine:=chaine+'TROIS';
if p2=4 then chaine:=chaine+'QUATRE';
if p2=5 then chaine:=chaine+'CINQ';
if p2=6 then chaine:=chaine+'SIX';
if p2=7 then chaine:=chaine+'SEPT';
if p2=8 then chaine:=chaine+'HUIT';
if p2=9 then chaine:=chaine+'NEUF';
end;
procedure mille(var p1:integer);
var c:integer;
begin
C:=p1 div 100;
begin
if c=1 then chaine:=chaine+'CENT';
if c=2 then chaine:=chaine+'DEUX CENT';
if c=3 then chaine:=chaine+'TROIX CENT';
if c=4 then chaine:=chaine+'QUATRE CENT';
if c=5 then chaine:=chaine+'CINQ CENT';
if c=6 then chaine:=chaine+'SIX CENT';
if c=7 then chaine:=chaine+'SEPT CENT';
if c=8 then chaine:=chaine+'HUIT CENT';
if c=9 then chaine:=chaine+'NEUF CENT';
p1:=p1-c*100; c:=p1 div 10;
if C=2 then
begin chaine:=chaine+'Vingt';
p1:=p1-c*10; chiffre(p1);
end;
if c=3 then
begin chaine:=chaine+'trente';
p1:=p1-c*10; chiffre(p1);
end;
if C=4 then
begin chaine:=chaine+'Quarante';
p1:=p1-c*10; chiffre(p1);
end;
if c=5 then
begin chaine:=chaine+'Cinquante';
p1:=p1-c*10;  chiffre(p1);
end;
if c=6 then
begin chaine:=chaine+'Soixante';
p1:=p1-c*10; chiffre(p1);
end;
p1:=p1-c*10; chiffre(p1);
end;
if c=8 then
begin chaine:=chaine+'Cinquante';
p1:=p1-c*10; chiffre(p1);
end;
if c=0 then chiffre(p1);
if c=1 then chiffre(p1);
if c=7 then chiffre(p1);
begin
chaine:=chaine+'Soixante'; p1:=p-60; decimale(p1);
end;
if c=9 then
begin
chaine:=chaine+'Quatre Vingt'; p1:=p1-80; decimale(p1);
end;
end;
{PROGRAMME PRICINPAL}
var ABC:real;
begin
chaine:='';
n:=query1.FieldByName('TOTAL').AsFloat;
nombre:=trunc(n);
ABC:=int(n*100);
dec:=trunc(ABC)mod 100;
if nombre>=nombre-p*1000000000 then
begin
p:=nombre div 1000000000;
nombre:=nombre-p*1000000000;
if p<>0 then
begin
mille(p);chaine:=chaine+'Milliard';
end;
end;
{Milliard}
if nombre>=1000000 then
begin
p:=nombre div 1000000;
nombre:=nombre-p*1000000;
if p<>0 then
begin
mille(p);chaine:=chaine+'Million';
end;
end;
{Milliers}
if nombre>=1000 then
begin
p:=nombre div 1000;
nombre:=nombre-p*1000;
if p<>1 then
begin
mille(p);chaine:=chaine+'Mille'
end else
{simple}
if (0<=nombre)and(nombre<1000) then
begin
p:=nombre;mille(p);
end;
chaine:=chaine+'dinars'+'et';
begin
if q=0 THEN chaine:=chaine+'Zero AR'
else chaine:=chaine+'AR'
end;
{chaine:=chaine+'dinars'+'et'+chaine1+'AR;}
label8.Caption:=chaine;
end;
end;

procedure TForm5.Table1AfterInsert(DataSet: TDataSet);
begin
dbedit1.SetFocus;
end;

procedure TForm5.Table3CalcFields(DataSet: TDataSet);
begin
table4.Open;
table4.SetKey;//pr�paration de la recherche du produit qui � la r�f�rence tap�e
table4.FieldByName('reference').AsInteger:=table3.FieldByName('ref_pro').AsInteger;
if table4.GotoKey then//si le produit existe, on introduit sa designation, prix et on calcul
begin
  table3.FieldByName('Designation').AsInteger:=table4.FieldByName('designation').AsInteger;
  table3.FieldByName('Prix_Achat').AsInteger:=table4.FieldByName('ref_Prod').AsInteger;
  table3.FieldByName('TOTAL').AsCurrency:=table3.FieldByName('Qte_Achat').AsFloat*table4.FieldByName('Prix_Achat').AsCurrency;
end;//on profite l'occasion pour une valeur au parametre � notre requ�te <<query1>>
query1.Close;
query1.ParamByName('p').AsInteger:=table1.FieldByName('Numero_A').AsInteger;
query1.Active:=true;
end;

end.
