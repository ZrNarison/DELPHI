unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, DB, ADODB, Buttons,Registry,
  Vcl.Mask, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,DateUtils;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
//    Registry:TRegistry;
    HORLOGE: TTabSheet;
    CHRONO: TTabSheet;
    Timer1: TTimer;
    Timer3: TTimer;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Timer2: TTimer;
    Label8: TLabel;
    ADOQuery1: TADOQuery;
    Timer4: TTimer;
    Timer5: TTimer;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Timer6: TTimer;
    Label10: TLabel;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    Label9: TLabel;
    Button1: TButton;
    DataSource2: TDataSource;
    FDMemTable1: TFDMemTable;
    FDMemTable1arr: TTimeField;
    FDMemTable1red: TTimeField;
    DataSource3: TDataSource;
    Edit3: TEdit;
    Edit4: TEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  txt,su,re,fer,k,q:String;
  t:integer;
  script:Textfile;
implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var
hr,mr,sr,ha,ma,sa:Word;
hh:TTime;
x0,y0,y,x,p,p0:double;
begin
ha:=hourOf(x0);ma:=hourOf(x0);sa:=hourOf(x0);
hr:=hourOf(y0);mr:=hourOf(y0);sr:=hourOf(y0);
x0:=strtotime(dbedit1.Text);
y0:=strtotime(Dbedit2.Text);
//x:=floattostr(edit3.Text);
//y:=floattostr(edit4.Text);

p:=(ha*360)+(ma*60)+sa;
p0:=(hr*360)+(mr*60)+sr;
if Radiobutton1.Checked then
Label6.Caption:=Floattostr(p);
if Radiobutton2.Checked then
Label6.Caption:=floattostr(p0);
DbEdit1.Clear;
DbEdit2.Clear;
Horloge.Show;
BitBtn1.Enabled:=false;
BitBtn2.Enabled:=false;
//BitBtn1.Enabled:=false;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
DbEdit1.Clear;
DbEdit2.Clear;
BitBtn1.Enabled:=false;
BitBtn2.Enabled:=false;
end;

procedure TForm1.Button1Click(Sender: TObject);
 var m:string;
begin
Edit3.Clear;
Edit4.clear;
Button1.Visible:=false;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
if DBEdit1.Text=null then Bitbtn1.Enabled:=false else bitbtn1.Enabled:=true;
if DbEdit2.Text=null then Bitbtn2.Enabled:=false else bitbtn2.Enabled:=true;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
if dbedit1.Text<>null then Bitbtn1.Enabled:=true else bitbtn1.Enabled:=false;
if dbedit2.Text<>null then Bitbtn2.Enabled:=true else bitbtn2.Enabled:=false;
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
if DBEDIT1.Text<>null then button1.Visible:=true;

end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if messagedlg('Voulez-vous d�connectez ?',mtconfirmation,[MbYes,MbNo],0)=MrYes then
begin
Canclose:=true;
application.Terminate;
end
else
canclose:=false;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
//Bitbtn1.Enabled:=false;
//Bitbtn2.Enabled:=false;
Edit3.Enabled:=false;
Edit4.Enabled:=false;
label3.Visible:=false;
Edit4.Visible:=false;
dbedit2.Visible:=false;
button1.Visible:=false;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
if Radiobutton1.Checked then Dbedit1.Visible:=true;
Dbedit2.Visible:=false;
label2.Visible:=true;
edit3.Visible:=true;
label3.Visible:=false;
edit4.Visible:=false;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
 if RadioButton2.Checked
 then Dbedit2.Visible:=true;DbEdit1.Visible:=false;
 label2.Visible:=false;edit3.Visible:=false;
 label3.Visible:=true;Edit4.Visible:=true;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
//if label1.left> -200 then
//label1.Left :=label1.Left-1
//else
//label1.Left:=700;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
label8.Caption:=timetostr(time);
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
label5.Caption:='Nous sommes :'+datetostr(date)+' � '+timetostr(time);
end;

procedure TForm1.Timer6Timer(Sender: TObject);
begin
label10.Caption:='Nous sommes :'+datetostr(date)+' � '+timetostr(time);
end;

end.
