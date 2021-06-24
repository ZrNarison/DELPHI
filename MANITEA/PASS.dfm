object Form11: TForm11
  Left = 0
  Top = 0
  Caption = 'ACCESS'
  ClientHeight = 184
  ClientWidth = 379
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 12
  object Label2: TLabel
    Left = 42
    Top = 51
    Width = 66
    Height = 12
    Caption = 'MOT DE PASS'
    FocusControl = DBEdit1
  end
  object BitBtn1: TBitBtn
    Left = 78
    Top = 72
    Width = 56
    Height = 19
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DoubleBuffered = True
    Kind = bkOK
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 204
    Top = 72
    Width = 56
    Height = 19
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DoubleBuffered = True
    Kind = bkCancel
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object DBEdit1: TDBEdit
    Left = 139
    Top = 47
    Width = 138
    Height = 20
    DataField = 'Mtd'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 216
    Top = 128
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\DOCUMENTS\DELPHI' +
      '2010\MANITEA\COMMERCE.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 56
    Top = 104
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Protection'
    Left = 128
    Top = 104
    object ADOTable1Uti: TWideStringField
      FieldName = 'Uti'
      Size = 100
    end
    object ADOTable1Mtd: TWideStringField
      FieldName = 'Mtd'
      Size = 30
    end
  end
end
