unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ActnList, ExtCtrls, ADODB, DB;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Fichier1: TMenuItem;
    Edition1: TMenuItem;
    Aide1: TMenuItem;
    MeContacter1: TMenuItem;
    PAO1: TMenuItem;
    Aide2: TMenuItem;
    SofWare1: TMenuItem;
    HardWare1: TMenuItem;
    Excel1: TMenuItem;
    Publisher1: TMenuItem;
    PowerPoint1: TMenuItem;
    PhotoShop1: TMenuItem;
    AutoCAD1: TMenuItem;
    MeContacter2: TMenuItem;
    Acces1: TMenuItem;
    Delphi1: TMenuItem;
    Java1: TMenuItem;
    JavaScript1: TMenuItem;
    Python1: TMenuItem;
    Python2: TMenuItem;
    Wlangage1: TMenuItem;
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    ADOCommand1: TADOCommand;
    procedure SoftWare1Click(Sender: TObject);
    procedure SofWare1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
 var
  cheminBD, chainecnx,req:string;
begin
  cheminBD:='C:\Base.Base.mdb';//Localisation de la base de données
  chainecnx:='Provider=Microsoft.Jet.OLEDB.4.0;'+
             'User ID=Admin;'+
             'Data Source='+cheminBD+';'+
             'Mode=Share Deny None;Extended Properties="";'+
             'Jet OLEDB:Engine Type=5;';

   ADOConnection1.ConnectionString:=chainecnx;
   ADOConnection1.LoginPrompt:=False;
   ADOCommand1.Connection:=ADOConnection1;

   req:='CREATE TABLE Type('+
        'Id INTEGER,'+
        'Lib VARCHAR (100)'+
        ')';
   ADOCommand1.CommandText:=req;
   ADOCOmmand1.Execute;

   req:='CREATE TABLE Editeur('+
        'Id INTEGER,'+
        'Nom VARCHAR(100)'+
        'adress VARCHAR(200)'+')';
   ADOCommand1.CommandText:=req;
   ADOCommand1.Execute;

   req:='CREATE INDEX CleEditeur'+
        'ON Editeur (Id)WHIT PRIMARY';
   ADOCommand1.CommandText:=req;
   ADOCommand1.Execute;
end;

procedure TForm1.SoftWare1Click(Sender: TObject);
begin
form2.showmodal;
end;

procedure TForm1.SofWare1Click(Sender: TObject);
begin
form2.ShowModal;
end;

end.
