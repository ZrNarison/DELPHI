object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'COURS INFORMATIQUE'
  ClientHeight = 193
  ClientWidth = 422
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 16
    object Fichier1: TMenuItem
      Caption = '&Programmation'
      object Acces1: TMenuItem
        Caption = '&Visual Basic'
      end
      object Delphi1: TMenuItem
        Caption = '&Delphi'
      end
      object Java1: TMenuItem
        Caption = '&Java'
      end
      object JavaScript1: TMenuItem
        Caption = 'Java&Script'
      end
      object Python1: TMenuItem
        Caption = 'M'#233'&ryse'
      end
      object Python2: TMenuItem
        Caption = '&Python'
      end
      object Wlangage1: TMenuItem
        Caption = '&Wlangage'
      end
    end
    object Edition1: TMenuItem
      Caption = '&Maintenance'
      object SofWare1: TMenuItem
        Caption = '&SofWare'
        OnClick = SofWare1Click
      end
      object HardWare1: TMenuItem
        Caption = '&HardWare'
      end
    end
    object Aide1: TMenuItem
      Caption = '&Bureautique'
      object MeContacter1: TMenuItem
        Caption = '&Word'
      end
      object Excel1: TMenuItem
        Caption = '&Excel'
      end
      object Publisher1: TMenuItem
        Caption = '&Publisher'
      end
      object PowerPoint1: TMenuItem
        Caption = 'P&owerPoint'
      end
    end
    object PAO1: TMenuItem
      Caption = 'P&AO'
      object PhotoShop1: TMenuItem
        Caption = 'P&hotoShop'
      end
      object AutoCAD1: TMenuItem
        Caption = 'A&utoCAD'
      end
    end
    object Aide2: TMenuItem
      Caption = '&Aide'
      object MeContacter2: TMenuItem
        Caption = 'M&e Contacter'
      end
    end
  end
  object ADOTable1: TADOTable
    Left = 80
    Top = 80
  end
  object ADOConnection1: TADOConnection
    Left = 152
    Top = 40
  end
  object ADOCommand1: TADOCommand
    Parameters = <>
    Left = 288
    Top = 96
  end
end
