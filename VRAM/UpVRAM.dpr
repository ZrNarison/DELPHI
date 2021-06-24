program UpVRAM;

uses
  Forms,
  Unit1 in 'Unit1.pas' {ZR};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TZR, ZR);
  Application.Run;
end.
