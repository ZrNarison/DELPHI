unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CoolTrayIcon, RunOne, Menus,
  ExtCtrls, StdCtrls, OleCtrls, SHDocVw_TLB, ComCtrls, WinSock, IniFiles, Registry,
  AppEvnts;

type
        TOptions=record
        InfoBulles: Boolean;
        BulleTime: Byte;
        end;

type
  TState=(Connected, Connecting, Disconnected, Starting);

  TMainForm = class(TForm)
    TrayIcon: TCoolTrayIcon;
    RunOne: TRunOne;
    SysPopup: TPopupMenu;
    AfficherItem: TMenuItem;
    N1: TMenuItem;
    TestTimer: TTimer;
    WebBrowser: TWebBrowser;
    WWWIPLabel: TLabel;
    LocalIpLabel: TLabel;
    QuitBtn: TButton;
    MinimizeBtn: TButton;
    DecoBevel: TBevel;
    ServiceStateLabel: TLabel;
    ConnexionStateLabel: TLabel;
    OptionBtn: TButton;
    QuitterMenu: TMenuItem;
    N2: TMenuItem;
    OptionsItem: TMenuItem;
    AproposItem: TMenuItem;
    N3: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure RunOneAlreadyRun(Sender: TObject);
    procedure QuitterItemClick(Sender: TObject);
    procedure SysPopupPopup(Sender: TObject);
    procedure AfficherItemClick(Sender: TObject);
    procedure WebBrowserDocumentComplete(Sender: TObject;const pDisp: IDispatch; var URL: OleVariant);
    procedure TestTimerTimer(Sender: TObject);
    procedure MinimizeBtnClick(Sender: TObject);
    procedure QuitBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OptionsItemClick(Sender: TObject);
    procedure OptionBtnClick(Sender: TObject);
    procedure AproposItemClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    procedure UpdateSysTray(szTip: Pchar;IconID: TState);
    procedure UpdateLabels;
    procedure ShowBalloon;
    procedure GetLocalIp;

    // Fonctions traitement registre
    procedure WriteRunInReg;
    procedure EraseRunInReg;
    function ReadRunInReg: Boolean;
    procedure WriteOptions(Data: TOptions);
    function ReadOptions: TOptions;
    function CheckOptionsFile(CanCreate: Boolean): Boolean;
  end;

var
  MainForm: TMainForm;
  WWWIp, LOCALIP: String;
  Tentative: Byte;
  State: TState;
  Finished: Boolean;
  OptionData: TOptions;

implementation

uses Options, About;

{$R *.dfm}

procedure TMainForm.WriteRunInReg;
begin                     // On met la clé de démarrage windows
  with TRegistry.Create do
   begin
    RootKey := HKEY_CURRENT_USER;
    if OpenKey('Software\Microsoft\Windows\CurrentVersion\Run\', False) then
     WriteString('IpMaster_WinRun', ParamStr(0));
    CloseKey;
    Free;
   end;
end;

procedure TMainForm.EraseRunInReg;
begin                     // On retire la clé de démarrage windows
  with TRegistry.Create do
   begin
    RootKey := HKEY_CURRENT_USER;
    if OpenKey('Software\Microsoft\Windows\CurrentVersion\Run\', False) then
     if ValueExists('IpMaster_WinRun') then
      DeleteValue('IpMaster_WinRun');
    CloseKey;
    Free;
  end;
end;

function TMainForm.ReadRunInReg: Boolean;
begin                      // On lit si le logiciel est fixé au démarrage de windows
  Result := False;
  with TRegistry.Create do
   begin
    RootKey := HKEY_CURRENT_USER;
    if OpenKey('Software\Microsoft\Windows\CurrentVersion\Run\', False) then
     Result := ValueExists('IpMaster_WinRun');
    CloseKey;
    Free;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

procedure TMainForm.WriteOptions(Data: TOptions);
Var
  Ini: TIniFile;
begin                           // On écrit les options déterminées dans le fichier ini
  Ini := TIniFile.Create(ExtractFilePath(Application.exeName) + 'Options.ini');
  Ini.WriteBool('Preferences', 'InfoBulles', Data.InfoBulles);
  Ini.WriteInteger('Preferences', 'IBDelay', Data.BulleTime);

  Ini.UpdateFile;

  Ini.Free;
end;

function TMainForm.ReadOptions: TOptions; // On lit les options dans le fichier ini
Var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(ExtractFilePath(Application.exeName) + 'Options.ini');
  Result.InfoBulles := Ini.ReadBool('Preferences', 'InfoBulles', True);
  Result.BulleTime := Ini.ReadInteger('Preferences', 'IBDelay', 20);

  Ini.UpdateFile;

  Ini.Free;
end;

function TMainForm.CheckOptionsFile(CanCreate: Boolean): Boolean;
Var
  Ini: TIniFile;
begin
  Result := FileExists(ExtractFilePath(Application.exeName) + 'Options.ini');
  if (CanCreate) and (not Result) then
   begin
    Ini := TIniFile.Create(ExtractFilePath(Application.exeName) + 'Options.ini');
    Ini.UpdateFile;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

function IntToBalloonInt(X: Integer): TBalloonHintTimeOut;
begin
     // On convertit Integer => Balloon Integer
  Result := X;
end;

function BalloonIntToInt(X: TBalloonHintTimeOut): Integer;
begin
     // On convertit Integer => Balloon Integer
  Result := X;
end;

procedure Connexion; // On connecte le webbrowser aux deux sites possibles
begin                    // A l'avenir faudra en avoir au moins 5 pour être sûr
  if (Tentative = 1) then { 1ère tentative}
     MainForm.WebBrowser.Navigate('http://checkip.dyndns.org');
  if (Tentative = 2) then { 2ème tentative}
     MainForm.WebBrowser.Navigate('http://www.adresseip.com');
end;

procedure TMainForm.UpdateSysTray(szTip: Pchar;IconID: TState);
Var
        I: TIcon;
begin
     // On ouvre l'icône qu'on veut et on l'affiche
  I := TIcon.Create;
   case IconID of
    Connected: I.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Connected.ico');

    Connecting: I := Application.Icon;

    Disconnected: I.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Disconnected.ico');
   end;

  TrayIcon.Icon := I; // On actualise le trayicon
  TrayIcon.Hint := SzTip;
  I.Free;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
// Si jamais les options ne sont pas détectées, on les crée
  if not CheckOptionsFile(True) then
   begin
    MessageDlg('Le fichier ini n''existe pas. Ce logiciel le créera pour pouvoir effectuer des traitements sur les options.', mtInformation, [mbOK], 0);
    OptionData.InfoBulles := True;
    OptionData.BulleTime := 20;    // Options par défaut avec un gentil message qui t'explique
    WriteOptions(OptionData);
    WriteRunInReg;  // car par défaut il se lance avec Windows
   end;

  OptionData := ReadOptions;  // De toute facon on lit les options après

  DoubleBuffered := True;  // On doublebuffer
  QuitBtn.DoubleBuffered := True;
  OptionBtn.DoubleBuffered := True;
  MinimizeBtn.DoubleBuffered := True;
  TrayIcon.Icon := Application.Icon;   // On arrange le cooltrayicon
  UpdateSysTray(PChar('Connexion au service en cours ...'), Connecting);

        // On vérifie connexion
  State := Starting;

        {Show;
        BringToFront; // On affiche (sinon il ne s'affiche pas au démarrage)
        SetFocus;    // On le met devant et on lui met la focalisation }
end;

procedure TMainForm.RunOneAlreadyRun(Sender: TObject);
begin                         // On évite que le logiciel soit lancé deux fois
  MessageDlg('Ce logiciel est déjà en cours d''exécution. Cette instance du logiciel va maintenant se terminer.', mtError, [mbOK], 0);
end;                      

procedure TMainForm.QuitterItemClick(Sender: TObject);
begin
  Application.Terminate;   // quitter application
end;

procedure TMainForm.SysPopupPopup(Sender: TObject);
begin
  // Vérification de l''état de la fenêtre
  case Visible of
   False: AfficherItem.Caption := 'Afficher';
   True: AfficherItem.Caption := 'Cacher';
  end;

  BringToFront;
  SetFocus;
end;

procedure TMainForm.AfficherItemClick(Sender: TObject);
begin
  Visible := not Visible;  // On inverse son état
  if Visible then SetFocus; // On ne peut mettre le focus que sur une fenêtre visible
end;

procedure TMainForm.WebBrowserDocumentComplete(Sender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
var                      // MERCI A CARIBENSILA POUR CETTE TECHNIQUE
  S, IP : String;           //  http://www.delphifr.com/codes/IP-INTERNET_27202.aspx
  i :Integer;
begin                                                      // Le webbrowser se trouve en 440:-24
  // La page téléchargée est réduite en chaîne.              //   car la propriété visible ne marche
  S := WebBrowser.OleObject.Document.Body.InnerHTML;             // dessus ...
  If (Tentative = 2) then
    begin
      // L'adresse IP est extraite de cette chaîne.
      if (Pos('Votre adresse IP est',S) <> 0) then
        begin
          i := Pos('Votre adresse IP est',S)+67;
          While (S[i] <> ' ') do
            begin
              IP := IP + S[i];
              inc(i);
            end;
          WWWIP := IP;
          WebBrowser.Stop;
          Finished := True;
        end
      else
        begin            // Je l'ai un peu modifiée pour correspondre à mes besoins
          WWWIP := '127.0.0.1';
          Finished := True;
        end;
    end;
  If (Tentative = 1) then
    begin
      if (Pos('Current IP Address: ',S) <> 0) then
        begin
          i := 21;
          While (S[i] <> ' ') do
            begin
              IP := IP + S[i];
              inc(i);
            end;
          WWWIP := IP;
          WebBrowser.Stop;
          Finished := True;
        end
      else
        begin
          Tentative := 2;
          Connexion;
        end;
    end;
end;

procedure TMainForm.TestTimerTimer(Sender: TObject); // Timer qui se connecte sans cesse
Var
  Old: TState; // Pour stocker l'ancien status de connexion, pour pouvoir comparer
begin
  GetLocalIp;  // On récupère l'adresse ip locale
  Finished := False;
  Old := State;
  Tentative := 1;
  Connexion;    // On se connecte

   repeat Application.ProcessMessages;// Je fais une boucle en attendant que
    until Finished = True;            // le webbrowser ait fini de bosser avec la page

  if WWWIP = '' then State := Connecting; // Si il n'y a aucune adresse (donc page internet blanche)
    // c'est qu'il est en train de se connecter

  if WWWIP = '127.0.0.1' then State := Disconnected;
  // Si c'est 127.0.0.1, vous l'aurez deviné c'est qu'il est pas connecté

  if (WWWIP <> '') and (WWWIP <> '127.0.0.1') then State := Connected
   ;   // Si c'est autre chose alors c'est qu'il est connecté

  if OptionData.InfoBulles then // Si on a activé les infobulles alors
   if State <> Old then ShowBalloon;
                     // Si c'est différent alors on montre les changements dans une infobulle
  UpdateLabels;  // On affiche le tout sur la page (ca serait sympa pour l'utilisateur !)
end;

procedure TMainForm.UpdateLabels;
begin
// On affiche les valeurs dans les labels
  WWWIPLabel.Caption := 'Adresse IP internet : ' + WWWIP;
  if WWWIP = '' then WWWIPLabel.Caption := 'Adresse IP internet : [non détectée]';
  LocalIpLabel.Caption := 'Adresse IP locale : ' + LOCALIP;
  if LOCALIP = '' then LocalIpLabel.Caption := 'Adresse IP locale : [non détectée]';

   case State of
    Connected:
     begin
      UpdateSysTray(PChar('Connexion établie.' + chr(13) + chr(13) + 'IP : ' + WWWIP + chr(13) + 'Locale : ' + LOCALIP), Connected);
      ServiceStateLabel.Caption := 'Etat du service : Connecté';
      Caption := 'Ip Master - Connecté';
      ConnexionStateLabel.Caption := 'Etat de la connexion : Connecté';
     end;
    Connecting:
     begin
      UpdateSysTray(PChar('Connexion au service en cours ...'), Connecting);
      ServiceStateLabel.Caption := 'Etat du service : En cours de connexion ...';
      Caption := 'Ip Master - Connexion ...';
      ConnexionStateLabel.Caption := 'Etat de la connexion : Indisponible actuellement';
     end;
    Disconnected:
     begin
      UpdateSysTray(PChar('Adresse IP non détectée.' + chr(13) + 'Vous êtes probablement déconnecté.'), Disconnected);
      ServiceStateLabel.Caption := 'Etat du service : Non connecté';
      Caption := 'Ip Master - Déconnecté';
      ConnexionStateLabel.Caption := 'Etat de la connexion : Non connecté';
     end;
   end;
end;

procedure TMainForm.ShowBalloon;
begin
// On affiche les bulles d'information
  case State of
   Connected: TrayIcon.ShowBalloonHint('Connexion établie.', 'La connexion avec le service est établie.' + chr(13) + chr(13) + 'Votre adresse IP internet est : ' + WWWIP + chr(13) + 'Votre adresse IP locale est : ' + LOCALIP,bitInfo, IntToBalloonInt(OptionData.BulleTime));
   Connecting: TrayIcon.ShowBalloonHint('Connexion en cours ...', 'La connexion avec le service est en cours ...' + chr(13) + 'Cela peut prendre un certain temps.',bitInfo, IntToBalloonInt(OptionData.BulleTime));
   Disconnected: TrayIcon.ShowBalloonHint('Echec de connexion.', 'La connexion avec le service a échoué.' + chr(13) + chr(13) + 'Le logiciel va tenter de se reconnecter.',bitError, IntToBalloonInt(OptionData.BulleTime));
  end;
end;

procedure TMainForm.MinimizeBtnClick(Sender: TObject);
begin
  Visible := not Visible; // On rend la fenêtre invisible (si on peut cliquer sur bouton
end;   // c'est que la fenêtre est visible, alors invisible
// Mais je préferais Visible := not Visible; plutot que Visible := False; ca faisait plus
// professionnel ^^

procedure TMainForm.QuitBtnClick(Sender: TObject);
begin
  Close;   // Bouton Quitter
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageDlg('Voulez-vous vraiment quitter l''application ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Action := caNone;
end;

function ComputerName:string;  // Récuperation du nom de l'ordi (pour ip locale)
var
  MyComputerName : array[0..MAX_COMPUTERNAME_LENGTH] of Char;
  nSize          : DWord;
begin
  nSize := SizeOf(MyComputerName);
  GetComputerName(@MyComputerName, nSize);
  result := MyComputerName;
end;


procedure TMainForm.GetLocalIp; // Ip locale
var
  WSAData : TWSAData;
  Name,Address : String;
  Phe : PHostEnt;
begin
        //Demarrage du gestionnaire de socket
  WSAStartup(2,WSAData);
  SetLength(Name,255);
  Phe := GetHostByName(PChar(ComputerName));
   with Phe^ do
    //On formate le resultat en adresse ip
    Address := Format ('%d.%d.%d.%d' , [Byte(h_addr^[0]),Byte(h_addr^[1]),
                                        Byte(h_addr^[2]),Byte(h_addr^[3])]);
    //On libère tout ça
  WSACleanup;
        // On récupère l'adresse IP locale (simple à avoir celle la :p)
  LOCALIP := Address;
end;

procedure TMainForm.OptionsItemClick(Sender: TObject);
begin
  OptionForm.ShowModal;  // On affiche les options
end;

procedure TMainForm.OptionBtnClick(Sender: TObject);
begin
  OptionForm.ShowModal;   // Pareil !
end;

procedure TMainForm.AproposItemClick(Sender: TObject);
begin
  AboutForm.ShowModal;  // On affiche la fenêtre A propos
end;

end.
