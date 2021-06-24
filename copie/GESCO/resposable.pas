unit resposable;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Vcl.ExtDlgs, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TForm15 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBEdit3: TDBEdit;
    ComboBox1: TComboBox;
    FDMemTable1: TFDMemTable;
    FDMemTable1cin: TStringField;
    FDMemTable1tel: TStringField;
    FDMemTable1code: TStringField;
    Label2: TLabel;
    DataSource1: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    Image1: TImage;
    Label3: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit4: TEdit;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form15: TForm15;

implementation

{$R *.dfm}

uses base;

procedure TForm15.BitBtn1Click(Sender: TObject);
begin
If  Edit1.Text<>''then
  If Edit1.Text=Edit4.Text then
    Begin
    DataModule2.ADOTable15.Append;
    DataModule2.ADOTable15.Insert;
    DataModule2.ADOTable15.FieldByName('id_ResF').Value:=Combobox1.Text;
    DataModule2.ADOTable15.FieldByName('Nom').Value:=UpperCase(Edit2.Text)+' '+Edit3.Text;
    DataModule2.ADOTable15.FieldByName('CIN').Value:=DBEdit2.Text;
    DataModule2.ADOTable15.FieldByName('Adresse').Value:=UpperCase(Edit5.Text);
    DataModule2.ADOTable15.FieldByName('Telephone').Value:=DBEdit3.Text;
    DataModule2.ADOTable15.FieldByName('Adresse').Value:=Edit5.Text;
    DataModule2.ADOTable15.FieldByName('photo').Value:=OpenPictureDialog1.FileName;
    DataModule2.ADOTable15.FieldByName('Mot_de_passe').Value:=Edit1.Text;
    DataModule2.ADOTable15.Post;
    ComboBox1.ItemIndex:=-1;
    Edit2.Text:='';
    Edit3.Text:='';
    DbEdit2.Text:='';
    Edit5.Text:='';
    DbEdit3.Text:='';
    Edit1.Text:='';
    Edit4.Text:='';
    End
  Else
  begin
   Showmessage('Mot de pass différent,confirmé SVP !');
   Edit4.Clear;
  end
Else
begin
  Showmessage('Mot de pass vide, Veuillez saisissez votre code d''accés SVP !') ;
  Edit4.Clear;
end;





//if Edit1.Text<>'' then
//begin
//  if Edit1.Text=Edit4.Text then
//  Begin
//    DataModule2.ADOTable15.Append;
//    DataModule2.ADOTable15.Insert;
//    DataModule2.ADOTable15.FieldByName('id_ResF').Value:=Combobox1.Text;
//    DataModule2.ADOTable15.FieldByName('Nom').Value:=UpperCase(Edit2.Text)+' '+Edit3.Text;
//    DataModule2.ADOTable15.FieldByName('CIN').Value:=DBEdit2.Text;
//    DataModule2.ADOTable15.FieldByName('Adresse').Value:=UpperCase(Edit5.Text);
//    DataModule2.ADOTable15.FieldByName('Telephone').Value:=DBEdit3.Text;
//    DataModule2.ADOTable15.FieldByName('Adresse').Value:=Edit5.Text;
//    DataModule2.ADOTable15.FieldByName('photo').Value:=OpenPictureDialog1.FileName;
//    DataModule2.ADOTable15.FieldByName('Mot_de_passe').Value:=Edit1.Text;
//    ComboBox1.ItemIndex:=-1;
//    Edit2.Text:='';
//    Edit3.Text:='';
//    DbEdit2.Text:='';
//    Edit5.Text:='';
//    DbEdit3.Text:='';
//    Edit1.Text:='';
//  End
//  else
//  begin
//    ShowMessage('Mot de pass différent !');
//    Edit4.SelText;
//  end;
//end;
//ShowMessage('Mot de pass vide, Veuillez saisissez votre code d''accés SVP !');
//Edit1.SelText;
end;

procedure TForm15.BitBtn4Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
end;

procedure TForm15.FormCreate(Sender: TObject);
begin
FDMemTable1.Active:=true;
DataModule2.ADOTable15.Active:=true;
end;

procedure TForm15.SpeedButton1Click(Sender: TObject);
begin
OpenPictureDialog1.Execute;
Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

end.
