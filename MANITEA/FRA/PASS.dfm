object Form11: TForm11
  Left = 0
  Top = 0
  Caption = 'Form11'
  ClientHeight = 132
  ClientWidth = 516
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 56
    Top = 16
    Width = 57
    Height = 16
    Caption = 'Utilisateur'
  end
  object Label2: TLabel
    Left = 56
    Top = 56
    Width = 81
    Height = 16
    Caption = 'MOT DE PASS'
  end
  object BitBtn1: TBitBtn
    Left = 184
    Top = 96
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkOK
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 376
    Top = 96
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkCancel
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object Edit1: TEdit
    Left = 176
    Top = 8
    Width = 305
    Height = 24
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 176
    Top = 48
    Width = 305
    Height = 24
    PasswordChar = '*'
    TabOrder = 3
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'COMMERCE'
    TableName = 'Protection.db'
    Left = 160
    Top = 128
    object Table1Utilisateur: TStringField
      FieldName = 'Utilisateur'
    end
    object Table1PassWord: TStringField
      FieldName = 'PassWord'
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 216
    Top = 128
  end
end
