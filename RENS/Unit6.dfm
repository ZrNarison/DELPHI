object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'MENU'
  ClientHeight = 78
  ClientWidth = 409
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
    Top = 8
    object FICHIER1: TMenuItem
      Caption = '&FICHIER'
      object CONSULTER1: TMenuItem
        Caption = '&NOUVEAU'
        OnClick = CONSULTER1Click
      end
      object QUITTER1: TMenuItem
        Caption = '&QUITTER'
        OnClick = QUITTER1Click
      end
    end
    object EDITER1: TMenuItem
      Caption = '&EDITER'
      object CONSULTER2: TMenuItem
        Caption = '&CONSULTER'
        OnClick = CONSULTER2Click
      end
      object ADMINISTRATEURDECOMPTE1: TMenuItem
        Caption = '&ADMINISTRATEUR DE COMPTE'
        OnClick = ADMINISTRATEURDECOMPTE1Click
      end
    end
  end
end
