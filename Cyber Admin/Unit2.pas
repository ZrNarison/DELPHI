unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Menus, System.Rtti, FMX.Grid, FMX.Layouts, FMX.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FMX.DateTimeCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,IniFiles;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Prix: TLabel;
    Heure: TLabel;
    IP: TLabel;
    PC: TLabel;
    TimeEdit1: TTimeEdit;
    TimeEdit2: TTimeEdit;
    Label11: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
  private
    { Déclarations privées }
    TrayCounter:Integer;
    LoopNumbers:Boolean;
//    Connected,Disconnected:TIcon;
  public
    { Déclarations publiques }
  end;

var
  Form2: TForm2;
  fichierini,sens:shortstring;

implementation

{$R *.fmx}

procedure TForm2.FormCreate(Sender: TObject);
var
Ini:TIniFile;
begin
TabControl1.Visible:=false;
sens:='true';
fichierini:='c:\MyIp.ini';
ini:=TIniFile.Create(fichierini);
sens:=ini.ReadString('sens','sens','true');
Ini.Free;
//Mette icon dans le bouton
//Connected:=TIcon.
end;

procedure TForm2.MenuItem3Click(Sender: TObject);
begin
TabControl1.Visible:=true;
TabItem1.Visible:=true;
tabItem2.Visible:=false;
end;

procedure TForm2.MenuItem4Click(Sender: TObject);
begin
TabControl1.Visible:=true;
TabItem2.Visible:=true;
tabItem1.Visible:=false;
end;

end.
