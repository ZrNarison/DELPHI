object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 358
  ClientWidth = 595
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object MainMenu1: TMainMenu
    Left = 16
    object Exemple11: TMenuItem
      Caption = 'Exemple&1'
      OnClick = Exemple11Click
    end
    object Exemple22: TMenuItem
      Caption = 'Exemple&2'
      OnClick = Exemple22Click
    end
  end
end
