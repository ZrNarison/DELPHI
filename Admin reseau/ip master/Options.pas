unit Options;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Spin, CoolTrayIcon, Registry;



type
  TOptionForm = class(TForm)
    InfoBulleCheckBox: TCheckBox;
    HintTime: TSpinEdit;
    DecoBevel: TBevel;
    StartType: TRadioGroup;
    ApplyBtn: TButton;
    CloseBtn: TButton;
    BulleTimeLabel: TLabel;
    procedure CloseBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ApplyBtnClick(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  OptionForm: TOptionForm;

implementation

uses Main;

{$R *.dfm}

procedure TOptionForm.CloseBtnClick(Sender: TObject);
begin
  Close;  // On ferme ...
end;

procedure TOptionForm.FormCreate(Sender: TObject);
begin
  DoubleBuffered := True;
  InfoBulleCheckBox.DoubleBuffered := True;
  StartType.DoubleBuffered := True;
  ApplyBtn.DoubleBuffered := True;  // DoubleBuffered power !
  CloseBtn.DoubleBuffered := True;
  HintTime.DoubleBuffered := True;
end;

procedure TOptionForm.FormShow(Sender: TObject);
begin
  MainForm.TestTimer.Enabled := False;  // On d�sactive timer ...
  if not MainForm.CheckOptionsFile(True) then
   begin     // Si les options n'existent pas dans le registre

    OptionData.InfoBulles := True;
    OptionData.BulleTime := 20;  // Options par d�faut ...
    MainForm.WriteOptions(OptionData); // On �crit ces options
   end;
  OptionData := MainForm.ReadOptions; // On lit les options
  InfoBulleCheckBox.Checked := OptionData.InfoBulles;
  HintTime.Value := OptionData.BulleTime;  // On affecte les options
   case MainForm.ReadRunInReg of
    False: StartType.ItemIndex := 1; // Idem ...
    True: StartType.ItemIndex := 0;
   end;
end;

procedure TOptionForm.ApplyBtnClick(Sender: TObject);
begin           // On v�rifie si le nombre pour la dur�e des infobulles est correct
  if HintTime.Value > 60 then MessageDlg('Veuillez entrer un nombre compris entre 1 et 60 pour la dur�e des infoBulles.', mtWarning, [mbOK], 0)
   else
    begin           // On fixe les valeurs dans OptionData
     OptionData.InfoBulles := InfoBulleCheckBox.Checked;
     OptionData.BulleTime := HintTime.Value;
      case StartType.ItemIndex of  // Pareil ...
       0: MainForm.WriteRunInReg;  // On l'�crit dans le registre
       1: if MainForm.ReadRunInReg then MainForm.EraseRunInReg; // On l'enl�ve ...
      end;            // On se pr�pare � enregistrer, si la cl� existe pas, on le dit et ...

     if not MainForm.CheckOptionsFile(True) then MessageDlg('Le fichier ini n''existe pas. Ce logiciel le cr�era pour pouvoir sauvegarder les options.', mtInformation, [mbOK], 0);
     MainForm.WriteOptions(OptionData); // on cr�e et on ecrit.
    end;

  MainForm.TestTimer.Enabled := True;
  Close;       // On r�active le timer et on ferme !
end;

end.
