object Memo1: TMemo1
  Left = 0
  Top = 0
  Caption = 'CYBER CLIENT.NET'
  ClientHeight = 283
  ClientWidth = 789
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
  object wIp: TLabel
    Left = 160
    Top = 20
    Width = 103
    Height = 13
    Caption = 'Local Ip non indetifier'
  end
  object LocalIp: TLabel
    Left = 160
    Top = 69
    Width = 102
    Height = 13
    Caption = 'Local Ip non d'#233'tecter'
  end
  object Cdispo: TLabel
    Left = 392
    Top = 20
    Width = 122
    Height = 13
    Caption = 'Connexion non disponible'
  end
  object Ccours: TLabel
    Left = 392
    Top = 69
    Width = 103
    Height = 13
    Caption = 'Connnexion en Cours'
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 8
    Width = 89
    Height = 25
    Caption = 'C&onnecter'
    NumGlyphs = 4
    TabOrder = 0
  end
  object BitBtn2: TBitBtn
    Left = 8
    Top = 57
    Width = 89
    Height = 25
    Caption = 'D'#233'&connecter'
    TabOrder = 1
  end
  object BitBtn3: TBitBtn
    Left = 8
    Top = 112
    Width = 89
    Height = 25
    Caption = 'O&ption'
    TabOrder = 2
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 48
    Top = 160
  end
  object MainMenu1: TMainMenu
    Left = 120
    Top = 48
    object Fichier1: TMenuItem
      Caption = '&Fichier'
    end
    object Editer2: TMenuItem
      Caption = '&Editer'
    end
    object N1: TMenuItem
      Caption = '&?'
    end
  end
end
