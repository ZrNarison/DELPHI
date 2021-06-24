unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ToolWin, Unit2, Unit3, PASS, ACHAT, VENTE;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Fichier1: TMenuItem;
    Edition1: TMenuItem;
    Consultation1: TMenuItem;
    Etats1: TMenuItem;
    Statistique1: TMenuItem;
    Produit1: TMenuItem;
    Fournisseur1: TMenuItem;
    Client1: TMenuItem;
    Quitter1: TMenuItem;
    Factureachat1: TMenuItem;
    Facturevente1: TMenuItem;
    Achats1: TMenuItem;
    Vente1: TMenuItem;
    Rglements1: TMenuItem;
    invetaire1: TMenuItem;
    Archivages1: TMenuItem;
    Protection1: TMenuItem;
    Cloture1: TMenuItem;
    N1: TMenuItem;
    APropos1: TMenuItem;
    ToolBar1: TToolBar;
    VENTE2: TMenuItem;
    ACHAT1: TMenuItem;
    procedure Quitter1Click(Sender: TObject);
    procedure Produit1Click(Sender: TObject);
    procedure Client1Click(Sender: TObject);
    procedure Fournisseur1Click(Sender: TObject);
    procedure Factureachat1Click(Sender: TObject);
    procedure Facturevente1Click(Sender: TObject);
    procedure Achats1Click(Sender: TObject);
    procedure Vente1Click(Sender: TObject);
    procedure Rglements1Click(Sender: TObject);
    procedure Protection1Click(Sender: TObject);
    procedure ACHAT1Click(Sender: TObject);
    procedure VENTE2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses ConsultationAchat, CONSULTATIONVENTES, FactureAchat, FactureVente,
  Fournisseur, STATISTIQUEREGLEMENT, AdminCompte;

{$R *.dfm}

procedure TForm1.ACHAT1Click(Sender: TObject);
begin
form12.ShowModal;
end;

procedure TForm1.Achats1Click(Sender: TObject);
begin
form7.ShowModal;
end;

procedure TForm1.Client1Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm1.Factureachat1Click(Sender: TObject);
begin
form5.ShowModal;
end;

procedure TForm1.Facturevente1Click(Sender: TObject);
begin
form6.ShowModal;
end;

procedure TForm1.Fournisseur1Click(Sender: TObject);
begin
form4.ShowModal;
end;

procedure TForm1.Produit1Click(Sender: TObject);
begin
Form2.ShowModal;
end;

procedure TForm1.Protection1Click(Sender: TObject);
begin
form10.ShowModal;
end;

procedure TForm1.Quitter1Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.Rglements1Click(Sender: TObject);
begin
form9.ShowModal;
end;

procedure TForm1.Vente1Click(Sender: TObject);
begin
form8.ShowModal;
end;

procedure TForm1.VENTE2Click(Sender: TObject);
begin
 form13.ShowModal;
end;

end.
