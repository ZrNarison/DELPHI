unit UClientReseau;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, XPMan, WSocket, ComCtrls, StdCtrls, ExtCtrls, ImgList,
  ToolWin;

type
  TfrmClient = class(TForm)
    mmClient: TMainMenu;
    mp_File: TMenuItem;
    ms_quit: TMenuItem;
    mp_NetWork: TMenuItem;
    ms_TCPcnx: TMenuItem;
    XPManifest: TXPManifest;
    wscktclient: TWSocket;
    sbrInfo: TStatusBar;
    msDisconnect: TMenuItem;
    pnlCmd: TPanel;
    pnlCom: TPanel;
    edCmd: TEdit;
    lbCom: TListBox;
    tbAction: TToolBar;
    tbtClear: TToolButton;
    imglstToolbar: TImageList;
    ms_clear: TMenuItem;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    mpCmd: TMenuItem;
    ms_organize: TMenuItem;
    procedure ms_quitClick(Sender: TObject);
    procedure ms_TCPcnxClick(Sender: TObject);
    procedure wscktclientSessionConnected(Sender: TObject; ErrCode: Word);
    procedure msDisconnectClick(Sender: TObject);
    procedure wscktclientSessionClosed(Sender: TObject; ErrCode: Word);
    procedure wscktclientDataAvailable(Sender: TObject; ErrCode: Word);
    procedure edCmdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ms_clearClick(Sender: TObject);
  private
    FErrorCnx : Word;
  public
    { Déclarations publiques }
  end;

var
  frmClient: TfrmClient;

implementation

Uses
  UTCPServer;

{$R *.dfm}

procedure TfrmClient.ms_quitClick(Sender: TObject);
begin
  // Quitter l'application
  Close;
end;

procedure TfrmClient.ms_TCPcnxClick(Sender: TObject);
begin
  frmTCPServer.Socket := wscktclient;
  frmTCPServer.ShowModal;
end;

procedure TfrmClient.wscktclientSessionConnected(Sender: TObject;
  ErrCode: Word);
begin
  // Initialisation
  sbrInfo.Panels[1].Text := EmptyStr;
  // Stockage du code erreur de connexion pour la déconnexion
  FErrorCnx := ErrCode;
  // Vérification de la connexion au serveur
  If ErrCode <> 0 Then
    sbrInfo.Panels[1].Text := 'Erreur de connection, error #' + IntToStr(ErrCode)
  Else
  Begin
    sbrInfo.Panels[1].Text := 'Connecté au ' + wscktclient.Addr;
    // Envoi de la chaine de connexion [USER]@[PWD CRYPTED] pour autentification
    wscktclient.SendLine('CNX '+wscktclient.SocksUsercode+'@'+wscktclient.SocksPassword);
  End;
end;

procedure TfrmClient.msDisconnectClick(Sender: TObject);
begin
  wscktclient.Close;
end;

procedure TfrmClient.wscktclientSessionClosed(Sender: TObject;
  ErrCode: Word);
begin
  // Il n'y a pas eu d'erreur de connexion
  If FErrorCnx = 0 Then
    If ErrCode <> 0 Then
      sbrInfo.Panels[1].Text := 'Erreur de déconnexion, error #' +IntToStr(ErrCode)
    Else
      sbrInfo.Panels[1].Text := 'Déconnexion du ' + wscktclient.Addr;
end;

procedure TfrmClient.wscktclientDataAvailable(Sender: TObject;
  ErrCode: Word);
begin
  lbCom.Items.Add(wscktclient.ReceiveStr);
end;

{$IFDEF NEVER}

procedure TfrmClient.wscktclientDataAvailable(Sender: TObject;
  ErrCode: Word);
Var
  vBuffer : String[200];
  vCpt    : Integer;
begin
  vCpt    := wscktclient.Receive(@vBuffer[1],High(vBuffer));
  vBuffer := chr(vCpt);
  lbCom.Items.Add(vBuffer);
end;

{$ENDIF}

procedure TfrmClient.edCmdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Begin
  If Key=VK_RETURN then
  Begin
    // Ajout de la ligne de commande dans la liste pour info
    lbCom.Items.Add(edCmd.Text);
    // Envoi de la la ligne de commande
    wscktclient.SendLine(edCmd.Text);
    // Vide la ligne de commande
    edCmd.Text := EmptyStr;
  End;
end;

procedure TfrmClient.ms_clearClick(Sender: TObject);
begin
  lbCom.Clear;
end;

end.
