unit UTCPCnx;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

type
  TfrmTCPcnxDet = class(TForm)
    lbSession: TLabel;
    lbServer: TLabel;
    lbUser: TLabel;
    lbPwd: TLabel;
    edSession: TEdit;
    edServer: TEdit;
    edUser: TEdit;
    edPwd: TEdit;
    btCancel: TButton;
    btConf: TButton;
    procedure btCancelClick(Sender: TObject);
    procedure btConfClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { déclarations privées }
  public
    { déclarations publiques }
  end;

var
  frmTCPcnxDet: TfrmTCPcnxDet;

implementation

Uses
  UMResCnx;

{$R *.dfm}

procedure TfrmTCPcnxDet.btCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTCPcnxDet.btConfClick(Sender: TObject);
Var
  vReg : TMResCnxReg;
begin
  // Initialisation
  vReg := TMResCnxReg.create;
  // Ajout de la connexion dans la base de registre
  Try
    If edSession.Enabled = True Then
      vReg.CreateSession(edSession.Text);
    vReg.Addr[edSession.Text]  := edServer.Text;
    vReg.Proto[edSession.Text] := 'tcp';
    vReg.Port[edSession.Text]  := 'telnet';
    vReg.User[edSession.Text]  := edUser.Text;
    VReg.Pwd[edSession.Text]   := edPwd.Text;
  Finally
    vReg.Free
  End;
  close;
end;

procedure TfrmTCPcnxDet.FormShow(Sender: TObject);
Var
  vReg : TMResCnxReg;
begin
  // Initialisation
  vReg := TMResCnxReg.create;
  Try
    // Initialisation des données
    edServer.Text := vReg.Addr[edSession.Text];
    edUser.Text   := vReg.User[edSession.Text];
    edPwd.Text    := vReg.Pwd[edSession.Text];
  Finally
    vReg.Free
  End;
end;

end.
