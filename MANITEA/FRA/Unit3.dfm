object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Client'
  ClientHeight = 379
  ClientWidth = 1225
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 17
  object Label1: TLabel
    Left = 21
    Top = 31
    Width = 65
    Height = 17
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Recherche'
  end
  object DBGrid1: TDBGrid
    Left = 9
    Top = 96
    Width = 1207
    Height = 263
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit1: TEdit
    Left = 9
    Top = 56
    Width = 158
    Height = 25
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 1
    OnChange = Edit1Change
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 136
    Top = 417
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'COMMERCE'
    TableName = 'Client.DB'
    Left = 40
    Top = 400
    object Table1Code_C: TStringField
      FieldName = 'Code_C'
      Size = 5
    end
    object Table1Nom_C: TStringField
      FieldName = 'Nom_C'
    end
    object Table1Prenom_C: TStringField
      FieldName = 'Prenom_C'
    end
    object Table1Adress_C: TStringField
      FieldName = 'Adress_C'
      Size = 30
    end
    object Table1Telephone: TStringField
      FieldName = 'Telephone'
      Size = 21
    end
    object Table1RC_C: TStringField
      FieldName = 'RC_C'
      Size = 15
    end
    object Table1Al_C: TStringField
      FieldName = 'Al_C'
      Size = 15
    end
    object Table1IF_C: TStringField
      FieldName = 'IF_C'
      Size = 15
    end
  end
end
