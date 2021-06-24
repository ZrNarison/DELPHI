object frmTCPServer: TfrmTCPServer
  Left = 408
  Top = 182
  BorderStyle = bsDialog
  Caption = 'TCP : Connecter au serveur '
  ClientHeight = 324
  ClientWidth = 430
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbcnx: TLabel
    Left = 8
    Top = 8
    Width = 74
    Height = 13
    Caption = 'Connecter '#224' '
  end
  object lbServer: TListBox
    Left = 8
    Top = 24
    Width = 289
    Height = 289
    ItemHeight = 13
    TabOrder = 0
    OnClick = lbServerClick
    OnDblClick = lbServerDblClick
  end
  object btCnx: TButton
    Left = 304
    Top = 32
    Width = 121
    Height = 25
    Caption = 'Connecter'
    TabOrder = 1
    OnClick = btCnxClick
  end
  object btNew: TButton
    Left = 304
    Top = 64
    Width = 121
    Height = 25
    Caption = 'Nouvelle connexion'
    TabOrder = 2
    OnClick = btNewClick
  end
  object btEdit: TButton
    Left = 304
    Top = 96
    Width = 121
    Height = 25
    Caption = 'Editer'
    TabOrder = 3
    OnClick = btEditClick
  end
  object btDelete: TButton
    Left = 304
    Top = 128
    Width = 121
    Height = 25
    Caption = 'Supprimer'
    TabOrder = 4
    OnClick = btDeleteClick
  end
  object btCancel: TButton
    Left = 304
    Top = 288
    Width = 121
    Height = 25
    Caption = 'Annuler'
    TabOrder = 5
    OnClick = btCancelClick
  end
end
