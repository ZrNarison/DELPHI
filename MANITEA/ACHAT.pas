unit ACHAT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, DBTables, Buttons;

type
  TForm12 = class(TForm)
    Table1: TTable;
    Table1Reference: TStringField;
    Table1Designation: TStringField;
    Table1Qte_Stock: TFloatField;
    Table1Prix_achat: TCurrencyField;
    Table2: TTable;
    Table2Num_Achat: TFloatField;
    Table2Ref_achat: TStringField;
    Table2Qte_Achat: TFloatField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DataSource2: TDataSource;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Table3: TTable;
    Table3Nom_F: TStringField;
    Table3Prenom_F: TStringField;
    Table3Adress_F: TStringField;
    Table3Telephone: TStringField;
    Table3RC_F: TStringField;
    Table3AL_F: TStringField;
    Table3IF_F: TStringField;
    Table3Code_F: TStringField;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DataSource3: TDataSource;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Table4: TTable;
    Table4Numero_A: TFloatField;
    Table4Date_Achat: TDateField;
    Table4Reglement_Achat: TStringField;
    Table4Code_Four: TStringField;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    DataSource4: TDataSource;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

procedure TForm12.BitBtn1Click(Sender: TObject);
begin
Dbedit1.Text;
Dbedit2.Text;
Dbedit3.Text;
Dbedit4.Text;
table1.Edit;
table1.Post;
table1.Append;//table1.append:=table1.last+table1.insert
//dbedit1.SetFocus;
//
Dbedit5.Text;
Dbedit6.Text;
Dbedit7.Text;
table2.Edit;
table2.Post;
table2.Append;//table2.append:=table2.last+table2.insert
//dbedit2.SetFocus;
//
Dbedit8.Text;
Dbedit9.Text;
Dbedit10.Text;
Dbedit11.Text;
Dbedit12.Text;
Dbedit13.Text;
Dbedit14.Text;
Dbedit15.Text;
table3.Edit;
table3.Post;
table3.Append;//table1.append:=table1.last+table1.insert
//dbedit3.SetFocus;
//
Dbedit16.Text;
Dbedit17.Text;
Dbedit18.Text;
table4.Edit;
table4.Post;
table4.Append;//table1.append:=table1.last+table1.insert
//dbedit4.SetFocus;
end;

end.
