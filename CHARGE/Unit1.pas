unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ActiveX,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Vcl.DBCtrls, Data.DB, Vcl.Mask, Vcl.ComCtrls, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Menus, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    FDMemTable1: TFDMemTable;
    FDMemTable1N: TIntegerField;
    FDMemTable1designation: TSmallintField;
    FDMemTable1valeur: TFloatField;
    FDMemTable1validation: TBooleanField;
    FDMemTable1debut: TDateField;
    FDMemTable1fin: TDateField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DataSource1: TDataSource;
    FDMemTable1prix: TFloatField;
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
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
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    MainMenu1: TMainMenu;
    Fichier1: TMenuItem;
    Editer1: TMenuItem;
    Nouveau1: TMenuItem;
    Quitter1: TMenuItem;
    Visualisation1: TMenuItem;
    procedure FormCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
PageControl1.Visible:=false;
end;

end.
