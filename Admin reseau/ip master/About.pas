unit About;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TAboutForm = class(TForm)
    CloseBtn: TButton;
    AboutPanel: TPanel;
    ProgramLabel: TLabel;
    VersionLabel: TLabel;
    ProgramIcon: TImage;
    procedure CloseBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  AboutForm: TAboutForm;

implementation

uses Main;

{$R *.dfm}

procedure TAboutForm.CloseBtnClick(Sender: TObject);
begin
  MainForm.TestTimer.Enabled := True;
  Close;       // En fermant, on réactive le timer (sinon ca peut planter l'appli)
end;

procedure TAboutForm.FormCreate(Sender: TObject);
begin
  DoubleBuffered := True;   // On pose des doublebuffered
  CloseBtn.DoubleBuffered := True;
end;

procedure TAboutForm.FormShow(Sender: TObject);
begin
  MainForm.TestTimer.Enabled := False; // Quand on ouvre la fenêtre, on désactive timer
end;

end.
