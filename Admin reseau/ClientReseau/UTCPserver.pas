unit UTCPserver;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, WSocket;

type
  TfrmTCPServer = class(TForm)
    lbServer: TListBox;
    lbcnx: TLabel;
    btCnx: TButton;
    btNew: TButton;
    btEdit: TButton;
    btDelete: TButton;
    btCancel: TButton;
    procedure btCancelClick(Sender: TObject);
    procedure btNewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btCnxClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure lbServerClick(Sender: TObject);
    procedure lbServerDblClick(Sender: TObject);
  private
    FSocket : TWSocket;
    procedure SetSocket(const Value: TWSocket);
    Procedure Refresh;
    Procedure Connexion(pSession : String);
  public
    Property Socket: TWSocket read FSocket Write SetSocket;
  end;

var
  frmTCPServer: TfrmTCPServer;

implementation

Uses
 UTCPCnx,UMResCnx;

{$R *.dfm}

procedure TfrmTCPServer.btCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTCPServer.btNewClick(Sender: TObject);
begin
  // Ouverture de la fenêtre
  frmTCPcnxDet.edSession.Text := EmptyStr;
  frmTCPcnxDet.ShowModal;
  // Mise à jour de la liste des connexion
  Refresh;
end;

procedure TfrmTCPServer.SetSocket(const Value: TWSocket);
begin
  FSocket := Value;
end;

procedure TfrmTCPServer.FormCreate(Sender: TObject);
begin
  Refresh;
end;

procedure TfrmTCPServer.Refresh;
Var
  vReg : TMResCnxReg;
begin
  // Initialisation
  vReg := TMResCnxReg.create;
  Try
    // Vide la liste
    lbServer.Clear;
    // Alimentation des connexions utilisateur
    vReg.ListSession(lbServer.Items);
  Finally
    vReg.Free;
  End;
  // Gestion des boutons
  btDelete.Enabled := False;
  btEdit.Enabled   := False;
  btCnx.Enabled    := False;
end;

procedure TfrmTCPServer.btCnxClick(Sender: TObject);
begin
  // Connexion au serveur
  Connexion(lbServer.Items[lbServer.ItemIndex]);
end;

procedure TfrmTCPServer.Connexion(pSession : String);
Var
  vReg : TMResCnxReg;
begin
  // Initialisation
  vReg := TMResCnxReg.create;
  Try
    // Connexion au serveur
    FSocket.Addr          := vReg.Addr[pSession];
    FSocket.Port          := vReg.Port[pSession];
    FSocket.Proto         := vReg.Proto[pSession];
    FSocket.SocksUsercode := vReg.User[pSession];
    FSocket.SocksPassword := vReg.Pwd[pSession];
    FSocket.Connect;
    close;
  Finally
    vReg.Free;
  End;
end;

procedure TfrmTCPServer.btEditClick(Sender: TObject);
begin
  // Affichage de la session sélectionnée
  frmTCPcnxDet.edSession.Enabled := False;
  frmTCPcnxDet.edSession.Text := lbServer.Items[lbServer.ItemIndex];
  frmTCPcnxDet.ShowModal;
  frmTCPcnxDet.edSession.Enabled := True;
end;

procedure TfrmTCPServer.btDeleteClick(Sender: TObject);
Var
  vReg : TMResCnxReg;
  vCpt : Integer;
begin
  // Initialisation
  vReg := TMResCnxReg.create;
  Try
    // Supression de la connexion
    vReg.OpenKey('');
    Try
      vReg.DeleteKey(lbServer.Items[lbServer.ItemIndex]);
      vReg.DeleteValue(IntToStr(lbServer.ItemIndex+1));
    Finally
      vReg.CloseKey;
    End;
    // Remise à jour des connexions
    For vCpt := lbServer.ItemIndex + 2 To lbServer.Count Do
      vReg.Num[lbServer.Items[vCpt-1]] := vCpt-1;
  Finally
    vReg.Free;
  End;
  // Refresh
  Refresh;
end;

procedure TfrmTCPServer.lbServerClick(Sender: TObject);
begin
  If lbServer.ItemIndex >= 0 Then
  Begin
    btDelete.Enabled := True;
    btEdit.Enabled   := True;
    btCnx.Enabled    := True;
  End;    
end;

procedure TfrmTCPServer.lbServerDblClick(Sender: TObject);
begin
  // Execution de la connexion
  btCnxClick(Sender);
end;

end.
