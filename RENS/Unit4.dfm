object Form4: TForm4
  Left = 0
  Top = 0
  ClientHeight = 126
  ClientWidth = 649
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 120
  TextHeight = 17
  object Label1: TLabel
    Left = 11
    Top = 15
    Width = 82
    Height = 17
    Caption = 'UTILISATEUR'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 11
    Top = 56
    Width = 94
    Height = 17
    Caption = 'MOT_DE_PASS'
  end
  object Label3: TLabel
    Left = 8
    Top = 101
    Width = 97
    Height = 17
    Caption = 'CONFIRMATION'
  end
  object BitBtn1: TBitBtn
    Left = 495
    Top = 1
    Width = 147
    Height = 33
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'ENREGISTRER'
    DoubleBuffered = True
    Kind = bkOK
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 493
    Top = 84
    Width = 147
    Height = 33
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = '&SUPPRIMER'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object DBEdit1: TDBEdit
    Left = 123
    Top = 7
    Width = 345
    Height = 25
    DataField = 'UTILISATEUR'
    DataSource = DataSource2
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 123
    Top = 48
    Width = 345
    Height = 25
    PasswordChar = '*'
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 123
    Top = 93
    Width = 345
    Height = 25
    PasswordChar = '*'
    TabOrder = 4
  end
  object Table1: TTable
    Active = True
    AutoRefresh = True
    DatabaseName = 'RENSGN'
    TableName = 'ADMCOMPTE.db'
    Left = 16
    Top = 32
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
    Left = 8
    Top = 80
  end
end
