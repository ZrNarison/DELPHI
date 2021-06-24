unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form2: TForm2;

implementation
uses Unit1;
{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
 form2.Memo1.Lines.Add(log);
end;

end.
