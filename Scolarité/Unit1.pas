unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Menus,
  FMX.TabControl, FMX.Ani, FMX.StdCtrls, Data.DB, Data.Win.ADODB,
  FMX.Controls.Presentation, FMX.Edit, FMX.ComboEdit;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem20: TMenuItem;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    TabItem5: TTabItem;
    TabItem6: TTabItem;
    TabItem7: TTabItem;
    TabItem8: TTabItem;
    TabItem9: TTabItem;
    TabItem10: TTabItem;
    MenuItem21: TMenuItem;
    TabItem11: TTabItem;
    TabItem12: TTabItem;
    TabItem13: TTabItem;
    TabItem14: TTabItem;
    TabItem15: TTabItem;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable1Ref_classe: TWideStringField;
    ADOTable1Tutilaire: TWideStringField;
    ADOTable1Ecolage: TWideStringField;
    Panel1: TPanel;
    FloatAnimation1: TFloatAnimation;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    ComboEdit1: TComboEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Panel2: TPanel;
    Label4: TLabel;
    ADOTable2: TADOTable;
    ADOTable2Id_eco: TWideStringField;
    ADOTable2Code_etudiant: TIntegerField;
    ADOTable2Ecolag_mois: TDateTimeField;
    ADOTable2Montant: TIntegerField;
    ADOTable2Date_pay: TDateTimeField;
    ADOTable2id_Respon: TWideStringField;
    ADOTable2Mode_pay: TWideStringField;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ComboEdit2: TComboEdit;
    procedure FormCreate(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem21Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem17Click(Sender: TObject);
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem19Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.FormCreate(Sender: TObject);
begin
tabcontrol1.Visible:=false;

end;

procedure TForm1.MenuItem10Click(Sender: TObject);
begin
TabControl1.Visible:=true;
tabItem6.Visible:=true;tabitem6.Enabled:=true;
tabItem1.Visible:=false;tabItem1.Enabled:=false;
tabItem3.Visible:=false;tabItem3.Enabled:=false;
tabItem4.Visible:=false;tabItem4.Enabled:=false;
tabItem5.Visible:=false;tabItem5.Enabled:=false;
tabItem2.Visible:=false;tabItem2.Enabled:=false;
tabItem7.Visible:=false;tabItem7.Enabled:=false;
tabItem8.Visible:=false;tabItem8.Enabled:=false;
tabItem9.Visible:=false;tabItem9.Enabled:=false;
tabItem10.Visible:=false;tabItem10.Enabled:=false;
end;

procedure TForm1.MenuItem11Click(Sender: TObject);
begin
TabControl1.Visible:=true;
tabItem8.Visible:=true;tabitem8.Enabled:=true;
tabItem1.Visible:=false;tabItem1.Enabled:=false;
tabItem3.Visible:=false;tabItem3.Enabled:=false;
tabItem4.Visible:=false;tabItem4.Enabled:=false;
tabItem5.Visible:=false;tabItem5.Enabled:=false;
tabItem6.Visible:=false;tabItem6.Enabled:=false;
tabItem2.Visible:=false;tabItem2.Enabled:=false;
tabItem7.Visible:=false;tabItem7.Enabled:=false;
tabItem9.Visible:=false;tabItem9.Enabled:=false;
tabItem10.Visible:=false;tabItem10.Enabled:=false;
end;

procedure TForm1.MenuItem13Click(Sender: TObject);
begin
TabControl1.Visible:=true;
tabItem7.Visible:=true;tabitem7.Enabled:=true;
tabItem1.Visible:=false;tabItem1.Enabled:=false;
tabItem3.Visible:=false;tabItem3.Enabled:=false;
tabItem4.Visible:=false;tabItem4.Enabled:=false;
tabItem5.Visible:=false;tabItem5.Enabled:=false;
tabItem6.Visible:=false;tabItem6.Enabled:=false;
tabItem8.Visible:=false;tabItem8.Enabled:=false;
tabItem2.Visible:=false;tabItem2.Enabled:=false;
tabItem9.Visible:=false;tabItem9.Enabled:=false;
tabItem10.Visible:=false;tabItem10.Enabled:=false;
end;

procedure TForm1.MenuItem15Click(Sender: TObject);
begin
 TabControl1.Visible:=true;
tabItem11.Visible:=true;tabitem11.Enabled:=true;
tabItem2.Visible:=false;tabItem2.Enabled:=false;
tabItem3.Visible:=false;tabItem3.Enabled:=false;
tabItem4.Visible:=false;tabItem4.Enabled:=false;
tabItem5.Visible:=false;tabItem5.Enabled:=false;
tabItem6.Visible:=false;tabItem6.Enabled:=false;
tabItem7.Visible:=false;tabItem7.Enabled:=false;
tabItem8.Visible:=false;tabItem8.Enabled:=false;
tabItem9.Visible:=false;tabItem9.Enabled:=false;
tabItem10.Visible:=false;tabItem10.Enabled:=false;
tabItem1.Visible:=false;tabItem1.Enabled:=false;
tabItem12.Visible:=false;tabItem12.Enabled:=false;
tabItem13.Visible:=false;tabItem13.Enabled:=false;
tabItem14.Visible:=false;tabItem14.Enabled:=false;
tabItem15.Visible:=false;tabItem15.Enabled:=false;
end;

procedure TForm1.MenuItem16Click(Sender: TObject);
begin
TabControl1.Visible:=true;
tabItem13.Visible:=true;tabitem13.Enabled:=true;
tabItem2.Visible:=false;tabItem2.Enabled:=false;
tabItem3.Visible:=false;tabItem3.Enabled:=false;
tabItem4.Visible:=false;tabItem4.Enabled:=false;
tabItem5.Visible:=false;tabItem5.Enabled:=false;
tabItem6.Visible:=false;tabItem6.Enabled:=false;
tabItem7.Visible:=false;tabItem7.Enabled:=false;
tabItem8.Visible:=false;tabItem8.Enabled:=false;
tabItem9.Visible:=false;tabItem9.Enabled:=false;
tabItem10.Visible:=false;tabItem10.Enabled:=false;
tabItem11.Visible:=false;tabItem11.Enabled:=false;
tabItem12.Visible:=false;tabItem12.Enabled:=false;
tabItem1.Visible:=false;tabItem1.Enabled:=false;
tabItem14.Visible:=false;tabItem14.Enabled:=false;
tabItem15.Visible:=false;tabItem15.Enabled:=false;
end;

procedure TForm1.MenuItem17Click(Sender: TObject);
begin
TabControl1.Visible:=true;
tabItem12.Visible:=true;tabitem12.Enabled:=true;
tabItem2.Visible:=false;tabItem2.Enabled:=false;
tabItem3.Visible:=false;tabItem3.Enabled:=false;
tabItem4.Visible:=false;tabItem4.Enabled:=false;
tabItem5.Visible:=false;tabItem5.Enabled:=false;
tabItem6.Visible:=false;tabItem6.Enabled:=false;
tabItem7.Visible:=false;tabItem7.Enabled:=false;
tabItem8.Visible:=false;tabItem8.Enabled:=false;
tabItem9.Visible:=false;tabItem9.Enabled:=false;
tabItem10.Visible:=false;tabItem10.Enabled:=false;
tabItem11.Visible:=false;tabItem11.Enabled:=false;
tabItem1.Visible:=false;tabItem1.Enabled:=false;
tabItem13.Visible:=false;tabItem13.Enabled:=false;
tabItem14.Visible:=false;tabItem14.Enabled:=false;
tabItem15.Visible:=false;tabItem15.Enabled:=false;
end;

procedure TForm1.MenuItem18Click(Sender: TObject);
begin
TabControl1.Visible:=true;
tabItem14.Visible:=true;tabitem14.Enabled:=true;
tabItem2.Visible:=false;tabItem2.Enabled:=false;
tabItem3.Visible:=false;tabItem3.Enabled:=false;
tabItem4.Visible:=false;tabItem4.Enabled:=false;
tabItem5.Visible:=false;tabItem5.Enabled:=false;
tabItem6.Visible:=false;tabItem6.Enabled:=false;
tabItem7.Visible:=false;tabItem7.Enabled:=false;
tabItem8.Visible:=false;tabItem8.Enabled:=false;
tabItem9.Visible:=false;tabItem9.Enabled:=false;
tabItem10.Visible:=false;tabItem10.Enabled:=false;
tabItem11.Visible:=false;tabItem11.Enabled:=false;
tabItem12.Visible:=false;tabItem12.Enabled:=false;
tabItem13.Visible:=false;tabItem13.Enabled:=false;
tabItem1.Visible:=false;tabItem1.Enabled:=false;
tabItem15.Visible:=false;tabItem15.Enabled:=false;
end;

procedure TForm1.MenuItem19Click(Sender: TObject);
begin
TabControl1.Visible:=true;
tabItem15.Visible:=true;tabitem15.Enabled:=true;
tabItem2.Visible:=false;tabItem2.Enabled:=false;
tabItem3.Visible:=false;tabItem3.Enabled:=false;
tabItem4.Visible:=false;tabItem4.Enabled:=false;
tabItem5.Visible:=false;tabItem5.Enabled:=false;
tabItem6.Visible:=false;tabItem6.Enabled:=false;
tabItem7.Visible:=false;tabItem7.Enabled:=false;
tabItem8.Visible:=false;tabItem8.Enabled:=false;
tabItem9.Visible:=false;tabItem9.Enabled:=false;
tabItem10.Visible:=false;tabItem10.Enabled:=false;
tabItem11.Visible:=false;tabItem11.Enabled:=false;
tabItem12.Visible:=false;tabItem12.Enabled:=false;
tabItem13.Visible:=false;tabItem13.Enabled:=false;
tabItem14.Visible:=false;tabItem14.Enabled:=false;
tabItem1.Visible:=false;tabItem1.Enabled:=false;
end;

procedure TForm1.MenuItem21Click(Sender: TObject);
begin
TabControl1.Visible:=true;
tabItem2.Visible:=true;tabitem2.Enabled:=true;
tabItem1.Visible:=false;tabItem1.Enabled:=false;
tabItem3.Visible:=false;tabItem3.Enabled:=false;
tabItem4.Visible:=false;tabItem4.Enabled:=false;
tabItem5.Visible:=false;tabItem5.Enabled:=false;
tabItem6.Visible:=false;tabItem6.Enabled:=false;
tabItem7.Visible:=false;tabItem7.Enabled:=false;
tabItem8.Visible:=false;tabItem8.Enabled:=false;
tabItem9.Visible:=false;tabItem9.Enabled:=false;
tabItem10.Visible:=false;tabItem10.Enabled:=false;
tabItem11.Visible:=false;tabItem11.Enabled:=false;
tabItem12.Visible:=false;tabItem12.Enabled:=false;
tabItem13.Visible:=false;tabItem13.Enabled:=false;
tabItem14.Visible:=false;tabItem14.Enabled:=false;
tabItem15.Visible:=false;tabItem15.Enabled:=false;
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
TabControl1.Visible:=true;
tabItem1.Visible:=true;tabitem1.Enabled:=true;
tabItem2.Visible:=false;tabItem2.Enabled:=false;
tabItem3.Visible:=false;tabItem3.Enabled:=false;
tabItem4.Visible:=false;tabItem4.Enabled:=false;
tabItem5.Visible:=false;tabItem5.Enabled:=false;
tabItem6.Visible:=false;tabItem6.Enabled:=false;
tabItem7.Visible:=false;tabItem7.Enabled:=false;
tabItem8.Visible:=false;tabItem8.Enabled:=false;
tabItem9.Visible:=false;tabItem9.Enabled:=false;
tabItem10.Visible:=false;tabItem10.Enabled:=false;
tabItem11.Visible:=false;tabItem11.Enabled:=false;
tabItem12.Visible:=false;tabItem12.Enabled:=false;
tabItem13.Visible:=false;tabItem13.Enabled:=false;
tabItem14.Visible:=false;tabItem14.Enabled:=false;
tabItem15.Visible:=false;tabItem15.Enabled:=false;
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
TabControl1.Visible:=true;
tabItem3.Visible:=true;tabitem3.Enabled:=true;
tabItem2.Visible:=false;tabItem2.Enabled:=false;
tabItem1.Visible:=false;tabItem1.Enabled:=false;
tabItem4.Visible:=false;tabItem4.Enabled:=false;
tabItem5.Visible:=false;tabItem5.Enabled:=false;
tabItem6.Visible:=false;tabItem6.Enabled:=false;
tabItem7.Visible:=false;tabItem7.Enabled:=false;
tabItem8.Visible:=false;tabItem8.Enabled:=false;
tabItem9.Visible:=false;tabItem9.Enabled:=false;
tabItem10.Visible:=false;tabItem10.Enabled:=false;
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
TabControl1.Visible:=true;
tabItem4.Visible:=true;tabitem4.Enabled:=true;
tabItem2.Visible:=false;tabItem2.Enabled:=false;
tabItem1.Visible:=false;tabItem1.Enabled:=false;
tabItem3.Visible:=false;tabItem3.Enabled:=false;
tabItem5.Visible:=false;tabItem5.Enabled:=false;
tabItem6.Visible:=false;tabItem6.Enabled:=false;
tabItem7.Visible:=false;tabItem7.Enabled:=false;
tabItem8.Visible:=false;tabItem8.Enabled:=false;
tabItem9.Visible:=false;tabItem9.Enabled:=false;
tabItem10.Visible:=false;tabItem10.Enabled:=false;
tabItem11.Visible:=false;tabItem11.Enabled:=false;
tabItem12.Visible:=false;tabItem12.Enabled:=false;
tabItem13.Visible:=false;tabItem13.Enabled:=false;
tabItem14.Visible:=false;tabItem14.Enabled:=false;
tabItem15.Visible:=false;tabItem15.Enabled:=false;
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin
TabControl1.Visible:=true;
tabItem5.Visible:=true;tabitem5.Enabled:=true;
tabItem2.Visible:=false;tabItem2.Enabled:=false;
tabItem3.Visible:=false;tabItem3.Enabled:=false;
tabItem1.Visible:=false;tabItem1.Enabled:=false;
tabItem4.Visible:=false;tabItem4.Enabled:=false;
tabItem6.Visible:=false;tabItem6.Enabled:=false;
tabItem7.Visible:=false;tabItem7.Enabled:=false;
tabItem8.Visible:=false;tabItem8.Enabled:=false;
tabItem9.Visible:=false;tabItem9.Enabled:=false;
tabItem10.Visible:=false;tabItem10.Enabled:=false;
tabItem11.Visible:=false;tabItem11.Enabled:=false;
tabItem12.Visible:=false;tabItem12.Enabled:=false;
tabItem13.Visible:=false;tabItem13.Enabled:=false;
tabItem14.Visible:=false;tabItem14.Enabled:=false;
tabItem15.Visible:=false;tabItem15.Enabled:=false;
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
TabControl1.Visible:=true;
tabItem9.Visible:=true;tabitem9.Enabled:=true;
tabItem1.Visible:=false;tabItem1.Enabled:=false;
tabItem3.Visible:=false;tabItem3.Enabled:=false;
tabItem4.Visible:=false;tabItem4.Enabled:=false;
tabItem5.Visible:=false;tabItem5.Enabled:=false;
tabItem6.Visible:=false;tabItem6.Enabled:=false;
tabItem7.Visible:=false;tabItem7.Enabled:=false;
tabItem8.Visible:=false;tabItem8.Enabled:=false;
tabItem2.Visible:=false;tabItem2.Enabled:=false;
tabItem10.Visible:=false;tabItem10.Enabled:=false;
tabItem11.Visible:=false;tabItem11.Enabled:=false;
tabItem12.Visible:=false;tabItem12.Enabled:=false;
tabItem13.Visible:=false;tabItem13.Enabled:=false;
tabItem14.Visible:=false;tabItem14.Enabled:=false;
tabItem15.Visible:=false;tabItem15.Enabled:=false;
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
TabControl1.Visible:=true;
tabItem10.Visible:=true;tabitem10.Enabled:=true;
tabItem1.Visible:=false;tabItem1.Enabled:=false;
tabItem3.Visible:=false;tabItem3.Enabled:=false;
tabItem4.Visible:=false;tabItem4.Enabled:=false;
tabItem5.Visible:=false;tabItem5.Enabled:=false;
tabItem6.Visible:=false;tabItem6.Enabled:=false;
tabItem7.Visible:=false;tabItem7.Enabled:=false;
tabItem8.Visible:=false;tabItem8.Enabled:=false;
tabItem9.Visible:=false;tabItem9.Enabled:=false;
tabItem2.Visible:=false;tabItem2.Enabled:=false;
tabItem11.Visible:=false;tabItem11.Enabled:=false;
tabItem12.Visible:=false;tabItem12.Enabled:=false;
tabItem13.Visible:=false;tabItem13.Enabled:=false;
tabItem14.Visible:=false;tabItem14.Enabled:=false;
tabItem15.Visible:=false;tabItem15.Enabled:=false;
end;

end.
