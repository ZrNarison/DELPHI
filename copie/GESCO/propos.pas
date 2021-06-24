unit propos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TForm16 = class(TForm)
    ListBox1: TListBox;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form16: TForm16;
  MyFile:TextFile;

implementation

{$R *.dfm}

end.
