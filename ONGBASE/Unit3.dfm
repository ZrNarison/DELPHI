object Form3: TForm3
  Left = 0
  Top = 0
  ClientHeight = 242
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 472
    Height = 242
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Activite'
    end
    object TabSheet2: TTabSheet
      Caption = 'Site'
      ImageIndex = 1
    end
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
    object FICHIER1: TMenuItem
      Caption = '&FICHIER'
      object Nouveau1: TMenuItem
        Caption = '&Nouveau'
        object ActivitPNNC1: TMenuItem
          Caption = '&Activit'#233' PNNC'
        end
        object ONG1: TMenuItem
          Caption = '&Compte'
        end
        object N1: TMenuItem
          Caption = '&ONG'
        end
        object Personnel1: TMenuItem
          Caption = 'Pe&rsonnel'
        end
        object Site1: TMenuItem
          Caption = 'S&ite'
        end
      end
    end
    object EDITER1: TMenuItem
      Caption = '&EDITER'
    end
  end
end
