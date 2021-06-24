program GeScol;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form3},
  etablissement in 'etablissement.pas' {Form2},
  classe in 'classe.pas' {Form4},
  base in 'base.pas' {DataModule2: TDataModule},
  matiere in 'matiere.pas' {Form5},
  professeur in 'professeur.pas' {Form6},
  etudiant in 'etudiant.pas' {Form7},
  stat_prof in 'stat_prof.pas' {Form8},
  stat_etu in 'stat_etu.pas' {Form9},
  ecolage in 'ecolage.pas' {Form10},
  trimestre in 'trimestre.pas' {Form11},
  ecolage1 in 'ecolage1.pas' {Form12},
  trimestre1 in 'trimestre1.pas' {Form13},
  EmploiClasse in 'EmploiClasse.pas' {Form14},
  resposable in 'resposable.pas' {Form15},
  propos in 'propos.pas' {Form16},
  login in 'login.pas' {Form17},
  compte in 'compte.pas' {Form18};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
   Application.CreateForm(TForm17, Form17);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm13, Form13);
  Application.CreateForm(TForm14, Form14);
  Application.CreateForm(TForm15, Form15);
  Application.CreateForm(TForm16, Form16);
  Application.CreateForm(TForm18, Form18);
  Application.Run;
end.
