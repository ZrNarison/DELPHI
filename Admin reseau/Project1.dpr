program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Memo1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Localisation reseau';
  Application.CreateForm(TMemo1, Memo1);
  Application.Run;
end.
