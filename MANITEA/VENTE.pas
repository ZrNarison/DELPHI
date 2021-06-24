unit VENTE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, Mask, DBCtrls, DBTables, ADODB;

type
  TForm13 = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DataSource2: TDataSource;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    DataSource3: TDataSource;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    DataSource4: TDataSource;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    BitBtn1: TBitBtn;
    Client: TADOTable;
    Produit: TADOTable;
    Facture_vente: TADOTable;
    Facture_achat: TADOTable;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

procedure TForm13.BitBtn1Click(Sender: TObject);
begin
Dbedit1.Text;
Dbedit2.Text;
Dbedit3.Text;
Dbedit4.Text;
Dbedit5.Text;
Dbedit6.Text;
Dbedit7.Text;
Dbedit8.Text;

end;

end.
