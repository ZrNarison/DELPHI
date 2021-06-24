object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'PROTECTION COMPTE D'#39'UTILISATEUR'
  ClientHeight = 158
  ClientWidth = 501
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 17
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 82
    Height = 17
    Caption = 'UTILISATEUR'
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 94
    Height = 17
    Caption = 'MOT_DE_PASS'
  end
  object BitBtn1: TBitBtn
    Left = 208
    Top = 115
    Width = 98
    Height = 33
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    DoubleBuffered = True
    Kind = bkOK
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 398
    Top = 115
    Width = 98
    Height = 33
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    DoubleBuffered = True
    Kind = bkCancel
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object DBLookupCombo1: TDBLookupCombo
    Left = 124
    Top = 8
    Width = 356
    Height = 26
    LookupSource = DataSource2
    LookupDisplay = 'UTILISATEUR'
    LookupField = 'UTILISATEUR'
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 124
    Top = 56
    Width = 356
    Height = 25
    PasswordChar = '*'
    TabOrder = 3
  end
  object Table1: TTable
    DatabaseName = 'RENSGN'
    TableName = 'ADMCOMPTE.db'
    Left = 32
    Top = 128
    object Table1UTILISATEUR: TStringField
      FieldName = 'UTILISATEUR'
      Size = 40
    end
    object Table1MOT_DE_PASS: TStringField
      FieldName = 'MOT_DE_PASS'
      Size = 40
    end
  end
  object DataSource2: TDataSource
    DataSet = Table1
    Left = 88
    Top = 128
  end
  object Database1: TDatabase
    Connected = True
    DatabaseName = 'RENSGN'
    DriverName = 'STANDARD'
    Params.Strings = (
      'PATH=C:\Program Files\Common Files\TABLE'
      'DEFAULT DRIVER=PARADOX'
      'ENABLE BCD=FALSE')
    SessionName = 'Default'
    Left = 40
    Top = 88
  end
end
