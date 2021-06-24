unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, Grids, DBGrids, ADODB, StdCtrls, TeEngine, ExtCtrls,
  TeeProcs, Chart, DBTables;

type
  TForm2 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Edit1: TEdit;
    Button2: TButton;
    Table1: TTable;
    Table2: TTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
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
    procedure Edit1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button2Click(Sender: TObject);
begin
  if messagedlg('Est-que cet personne est vraiment mort(e) ?', mtconfirmation,
    [mbYes, MbNo], 0) = mryes then
    Table1.Delete;
  // Query1.Delete;
end;

procedure TForm2.DBGrid1ColEnter(Sender: TObject);
begin
  Table1.Close;
  Table1.Active := true;
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
  if Edit1.Text <> '' then
  begin
    Table1.Close;
    Table1.Filtered := true;
    Table1.Filter := '[LDT]=' + #39 + Edit1.Text + #39;
    Table1.Active := true;
  end
  else
  begin
    Table1.Close;
    Table1.Filtered := true;
    Table1.Active := true;
  end;
end;

procedure TForm2.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if messagedlg('CONSULTATION TERMINER ?',mtconfirmation,[MbYes,MbNo],0)=mryes then
begin
canclose:=true;
form2.Close
end
else
canclose:=false;
end;

end.
