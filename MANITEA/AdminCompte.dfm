object Form10: TForm10
  Left = 0
  Top = 0
  Caption = 'ADMINISTRATEUR DE COMPTE'
  ClientHeight = 150
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
  object Label3: TLabel
    Left = 56
    Top = 88
    Width = 73
    Height = 16
    Caption = 'Confirmation'
  end
  object Label1: TLabel
    Left = 56
    Top = 16
    Width = 57
    Height = 16
    Caption = 'Utilisateur'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 56
    Top = 53
    Width = 57
    Height = 16
    Caption = 'PassWord'
  end
  object BitBtn1: TBitBtn
    Left = 176
    Top = 120
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
    Top = 120
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkCancel
    ParentDoubleBuffered = False
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 198
    Top = 13
    Width = 313
    Height = 24
    DataField = 'Utilisateur'
    DataSource = DataSource1
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 198
    Top = 45
    Width = 313
    Height = 24
    PasswordChar = '*'
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 198
    Top = 80
    Width = 313
    Height = 24
    PasswordChar = '*'
    TabOrder = 4
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'COMMERCE'
    TableName = 'Protection.db'
    Left = 80
    Top = 112
    object Table1Utilisateur: TStringField
      FieldName = 'Utilisateur'
    end
    object Table1PassWord: TStringField
      FieldName = 'PassWord'
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 136
    Top = 112
  end
end
