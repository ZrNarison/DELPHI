program Project1;

uses
  Forms,
  ConsultationAchat in 'ConsultationAchat.pas' {Form7},
  CONSULTATIONVENTES in 'CONSULTATIONVENTES.pas' {Form8},
  FactureAchat in 'FactureAchat.pas' {Form5},
  FactureVente in 'FactureVente.pas' {Form6},
  Fournisseur in 'Fournisseur.pas' {Form4},
  STATISTIQUEREGLEMENT in 'STATISTIQUEREGLEMENT.pas' {Form9},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  AdminCompte in 'AdminCompte.pas' {Form10},
  Unit1 in 'Unit1.pas' {Form1},
  PASS in 'PASS.pas' {Form11},
  VENTE in 'VENTE.pas' {Form13},
  ACHAT in 'ACHAT.pas' {Form12};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'LOGICIEL DE COMMERCE ';
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm13, Form13);
  Application.CreateForm(TForm12, Form12);
  Application.Run;
end.
