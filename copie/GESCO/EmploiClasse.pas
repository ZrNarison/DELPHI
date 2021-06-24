unit EmploiClasse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ColorGrd, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm14 = class(TForm)
    Panel1: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    BitBtn8: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    StringGrid1: TStringGrid;
    procedure BitBtn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form14: TForm14;

implementation

{$R *.dfm}

uses base;

procedure TForm14.BitBtn5Click(Sender: TObject);
begin
DataModule2.Adotable11.Append;
DataModule2.AdoTable11.insert;
DataModule2.AdoTable11.FieldByName('Classe').Value:=DbLookUpComboBox1.Text;
DataModule2.AdoTable11.FieldByName('Prof').Value:=DbLookUpComboBox2.Text;
DataModule2.AdoTable11.FieldByName('Matiere').Value:=DbLookUpComboBox3.Text;
DataModule2.AdoTable11.FieldByName('Date').Value:=datetostr(date);
//DataModule2.AdoTable1.FieldByName('Jours').Value:=DBEdit2.Text;
//DataModule2.AdoTable1.FieldByName('Duree').Value:=Edit3.Text;
DataModule2.AdoTable11.Post;
end;

procedure TForm14.FormCreate(Sender: TObject);
begin
  DataModule2.Adotable11.Active:=true;
  StringGrid1.Cells[1,0]:='Lundi';
  StringGrid1.Cells[2,0]:='Mardi';
  StringGrid1.Cells[3,0]:='Mercredi';
  StringGrid1.Cells[4,0]:='Jeudi';
  StringGrid1.Cells[5,0]:='Vendredi';
  StringGrid1.Cells[6,0]:='Samedi';
  StringGrid1.Cells[7,0]:='Dimanche';
  StringGrid1.Cells[0,1]:='6h - 7h';
  StringGrid1.Cells[0,2]:='7h - 8h';
  StringGrid1.Cells[0,3]:='8h - 9h';
  StringGrid1.Cells[0,4]:='9h - 10h';
  StringGrid1.Cells[0,5]:='10h - 11h';
  StringGrid1.Cells[0,6]:='11h - 12h';
  StringGrid1.Cells[0,7]:='12h - 13h';
  StringGrid1.Cells[0,8]:='13h - 14h';
  StringGrid1.Cells[0,9]:='14h - 15h';
  StringGrid1.Cells[0,10]:='15h - 16h';
  StringGrid1.Cells[0,11]:='16h - 17h';
  StringGrid1.Cells[0,12]:='17h - 18h';
  StringGrid1.Cells[0,13]:='18h - 19h';
  StringGrid1.Cells[0,14]:='19h - 20h';
end;

end.
