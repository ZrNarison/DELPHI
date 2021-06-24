unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,Registry;

type
  TZR = class(TForm)
    Button1: TButton;
    IHD:TRegistry;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //Ato hanomboka ny fety
  end;

var
  ZR: TZR;
  IHD:TRegistry;

implementation

{$R *.dfm}

procedure TZR.Button1Click(Sender: TObject);
var
 IHD:TRegistry;
begin
IHD:=TRegistry.Create;


end;

procedure TZR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if messagedlg ('Voulez vous quitter vraiment?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
application.Terminate
   else
  showmessage ('Vous pouvez continuer');
 end;

end.
