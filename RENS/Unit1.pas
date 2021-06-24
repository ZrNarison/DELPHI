unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, StdCtrls, Mask, DBCtrls, Unit2, ADODB, Buttons;

type
  TForm1 = class(TForm)
    Label8: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Table1: TTable;
    Table2: TTable;
    Table1LDT: TStringField;
    Table1FONCTION: TStringField;
    Table1GRADE: TStringField;
    Table1MATRICULE: TFloatField;
    DataSource1: TDataSource;
    Table2MATRICULE: TFloatField;
    Table2NOM: TStringField;
    Table2PRENOM: TStringField;
    Table2DATE_DE_NAISSANCE: TDateField;
    Table2LIEU_DE_NAISSANCE: TStringField;
    Table2DATE_RENTRE_A_LA_GN: TDateField;
    Table2DIPLÔME_CIVIL: TStringField;
    Table2DIPLÔME_MILITAIRE: TStringField;
    Table2RECOPENSE: TStringField;
    Table2REF_DATE_MUTATION: TStringField;
    Table2DATE_NOMINATION: TDateField;
    Table2NOTES_03_DERNIERS_ANNEES: TStringField;
    Table2SITUATION_DE_FAMILLE: TStringField;
    Table2DECORATION: TStringField;
    Table2FONCTION_EPOUSE: TStringField;
    Table2REF_DISPONIBILITE: TStringField;
    Table2DATE_ARRIVEE: TDateField;
    Table2AFFECTATION: TStringField;
    DataSource2: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    Label19: TLabel;
    DBEdit18: TDBEdit;
    Label20: TLabel;
    DBEdit19: TDBEdit;
    Label21: TLabel;
    DBEdit20: TDBEdit;
    Label23: TLabel;
    DBEdit21: TDBEdit;
    Label25: TLabel;
    DBEdit22: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure Button2Click(Sender: TObject);
    procedure Quitter1Click(Sender: TObject);
    procedure ETATS1Click(Sender: TObject);
    procedure RAPPORTS1Click(Sender: TObject);
    procedure RAPPORT1Click(Sender: TObject);
    procedure ADMINISTRATION1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit3, Unit4;

{$R *.dfm}

procedure TForm1.ADMINISTRATION1Click(Sender: TObject);
begin
form4.ShowModal;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
Dbedit1.Text;
//Dbedit2.Text;
//Dbedit3.Text;
//Dbedit4.Text;
//Dbedit5.Text;
//Dbedit6.Text;
//Dbedit7.Text;
//Dbedit8.Text;
//Dbedit9.Text;
//Dbedit10.Text;
//Dbedit11.Text;
//Dbedit12.Text;
//Dbedit13.Text;
//Dbedit14.Text;
//Dbedit15.Text;
//Dbedit16.Text;
//Dbedit17.Text;
//Dbedit18.Text;
//Dbedit19.Text;
//Dbedit20.Text;
//Dbedit21.Text;
table1.Edit;
table1.Post;
table2.Edit;
table2.Post;
table1.Append;//table1.append:=table1.last+table1.insert
table2.Append;//table2.append:=table2.last+table2.insert
Dbedit1.SetFocus;
Dbedit2.SetFocus;
Dbedit3.SetFocus;
Dbedit4.SetFocus;
Dbedit5.SetFocus;
Dbedit6.SetFocus;
Dbedit7.SetFocus;
Dbedit8.SetFocus;
Dbedit9.SetFocus;
Dbedit10.SetFocus;
Dbedit11.SetFocus;
Dbedit12.SetFocus;
Dbedit13.SetFocus;
Dbedit14.SetFocus;
Dbedit15.SetFocus;
Dbedit16.SetFocus;
Dbedit17.SetFocus;
Dbedit18.SetFocus;
Dbedit19.SetFocus;
Dbedit20.SetFocus;
Dbedit21.SetFocus;
DBEDIT22.SetFocus;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if messagedlg('Vous voulez vraiment annuler',mtconfirmation,[mbyes,mbno],0)=mryes then
table1.Edit;
table1.Cancel;

end;

procedure TForm1.ETATS1Click(Sender: TObject);
begin
form2.Show;
end;

procedure TForm1.Quitter1Click(Sender: TObject);
begin
close;
end;

procedure TForm1.RAPPORT1Click(Sender: TObject);
begin
form3.Show;
end;

procedure TForm1.RAPPORTS1Click(Sender: TObject);
begin
form3.ShowModal;
end;

end.
