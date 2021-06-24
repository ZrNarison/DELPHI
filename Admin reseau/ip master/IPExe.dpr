program IPExe;

uses
  Windows,
  Forms,
  Main in 'Main.pas' {MainForm},
  Options in 'Options.pas' {OptionForm},
  About in 'About.pas' {AboutForm};

{$R *.res}
{$R WindowsXP.RES}

begin
  Application.Initialize;
  SetWindowLong(Application.Handle, GWL_EXSTYLE, WS_EX_TOOLWINDOW);
  Application.Title := 'IP';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TOptionForm, OptionForm);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.Run;
end.
