object Form10: TForm10
  Left = 0
  Top = 0
  Caption = 'ADMINISTRATEUR DE COMPTE'
  ClientHeight = 187
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 56
    Top = 24
    Width = 96
    Height = 16
    Caption = 'Nom d'#39'utilisateur'
  end
  object Label2: TLabel
    Left = 56
    Top = 64
    Width = 69
    Height = 16
    Caption = 'Mot de pass'
  end
  object Label3: TLabel
    Left = 56
    Top = 120
    Width = 73
    Height = 16
    Caption = 'Confirmation'
  end
  object BitBtn1: TBitBtn
    Left = 176
    Top = 152
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkOK
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 392
    Top = 152
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkCancel
    ParentDoubleBuffered = False
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 208
    Top = 16
    Width = 313
    Height = 24
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 208
    Top = 56
    Width = 313
    Height = 24
    PasswordChar = '*'
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 208
    Top = 112
    Width = 313
    Height = 24
    PasswordChar = '*'
    TabOrder = 4
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'COMMERCE'
    TableName = 'Protection.db'
    Left = 112
    Top = 144
  end
end
