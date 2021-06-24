program ClientReseau;

uses
  Forms,
  UClientReseau in 'UClientReseau.pas' {frmClient},
  UTCPserver in 'UTCPserver.pas' {frmTCPServer},
  UTCPCnx in 'UTCPCnx.pas' {frmTCPcnxDet};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Client r�seau';
  Application.CreateForm(TfrmClient, frmClient);
  Application.CreateForm(TfrmTCPServer, frmTCPServer);
  Application.CreateForm(TfrmTCPcnxDet, frmTCPcnxDet);
  Application.Run;
end.
