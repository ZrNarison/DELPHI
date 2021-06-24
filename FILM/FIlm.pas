unit FIlm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Vcl.ExtDlgs, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,jpeg, Vcl.Menus, IBX.IBDatabase;

type
  TForm3 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    FDMemTable1: TFDMemTable;
    FDMemTable1N: TAutoIncField;
    FDMemTable1TITRE: TStringField;
    FDMemTable1POSTEUR: TStringField;
    FDMemTable1DATE: TDateField;
    FDMemTable1GENRE: TStringField;
    FDMemTable1CONTENUE: TStringField;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    ComboBox1: TComboBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    PathImage: TLabel;
    PathVideo: TLabel;
    Label4: TLabel;
    OpenDialog1: TOpenDialog;
    Image1: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    MainMenu1: TMainMenu;
    Fichier1: TMenuItem;
    Editer1: TMenuItem;
    N1: TMenuItem;
    Nouveau1: TMenuItem;
    Liste1: TMenuItem;
    QUITTER1: TMenuItem;
    Film1: TMenuItem;
    Clint1: TMenuItem;
    Film2: TMenuItem;
    Client1: TMenuItem;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Edit2: TEdit;
    Label5: TLabel;
    IBDatabase1: TIBDatabase;
    procedure Panel1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Film1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form3: TForm3;
implementation

{$R *.dfm}

procedure TForm3.Film1Click(Sender: TObject);
begin
TabSheet1.Show;
PageControl1.Visible:=true;
TabSheet2.Visible:=false;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
FDMemTable1.Active:=true;
PageControl1.Visible:=false;
IBDataBase1.Connected:=true;
end;

procedure TForm3.Panel1Click(Sender: TObject);
begin
OpenPictureDialog1.execute;
image1.picture.loadfromfile(OpenPictureDialog1.filename);
PathImage.Caption:=openPicturedialog1.FileName;
end;

procedure TForm3.Panel2Click(Sender: TObject);
begin
OpenDIalog1.Execute;
PathVideo.Caption:=OpenDialog1.FileName;
end;

procedure TForm3.SpeedButton4Click(Sender: TObject);
begin
FDMemTable1.FieldByName('TITRE').Value:=uppercase(Edit1.Text)+'('+Edit2.Text+')';
//FDMemTable1.FieldByName('POSTEUR').Value:=reset(OpenPictureDialog1.Files);
FDMemTable1.FieldByName('DATE').Value:=DateTimePicker1.Date;
FDMemTable1.FieldByName('GENRE').Value:=uppercase(ComboBOx1.Text);
FDMemTable1.FieldByName('CONTENUE').Value:=strtoint(DBEdit1.Text);
Edit1.Text:='';
Edit2.Text:='';
ComboBox1.Text:='';
DBEdit1.Text:='';
end;

end.
