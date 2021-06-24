object frmTCPcnxDet: TfrmTCPcnxDet
  Left = 409
  Top = 206
  BorderStyle = bsDialog
  Caption = 'TCP : d'#233'tails de connexion'
  ClientHeight = 176
  ClientWidth = 377
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbSession: TLabel
    Left = 49
    Top = 21
    Width = 44
    Height = 13
    Caption = 'Session'
  end
  object lbServer: TLabel
    Left = 12
    Top = 53
    Width = 84
    Height = 13
    Caption = 'H'#244'te (serveur)'
  end
  object lbUser: TLabel
    Left = 9
    Top = 85
    Width = 86
    Height = 13
    Caption = 'Nom utilisateur'
  end
  object lbPwd: TLabel
    Left = 20
    Top = 117
    Width = 75
    Height = 13
    Caption = 'Mot de passe'
  end
  object edSession: TEdit
    Left = 104
    Top = 16
    Width = 265
    Height = 21
    TabOrder = 0
  end
  object edServer: TEdit
    Left = 104
    Top = 48
    Width = 265
    Height = 21
    TabOrder = 1
  end
  object edUser: TEdit
    Left = 104
    Top = 80
    Width = 265
    Height = 21
    TabOrder = 2
  end
  object edPwd: TEdit
    Left = 104
    Top = 112
    Width = 265
    Height = 21
    PasswordChar = '*'
    TabOrder = 3
  end
  object btCancel: TButton
    Left = 296
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Annuler'
    TabOrder = 4
    OnClick = btCancelClick
  end
  object btConf: TButton
    Left = 216
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Confirmer'
    TabOrder = 5
    OnClick = btConfClick
  end
end
