object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Produit'
  ClientHeight = 581
  ClientWidth = 671
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
    Top = 21
    Width = 65
    Height = 17
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Recherche'
  end
  object Label2: TLabel
    Left = 42
    Top = 523
    Width = 93
    Height = 17
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Montant STock'
  end
  object Edit1: TEdit
    Left = 52
    Top = 46
    Width = 159
    Height = 25
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 0
    OnChange = Edit1Change
  end
  object DBGrid1: TDBGrid
    Left = 10
    Top = 126
    Width = 655
    Height = 336
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit2: TEdit
    Left = 73
    Top = 548
    Width = 451
    Height = 25
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 2
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 96
    Top = 480
  end
  object Table1: TTable
    Active = True
    OnCalcFields = Table1CalcFields
    DatabaseName = 'COMMERCE'
    TableName = 'Produit.db'
    Left = 24
    Top = 480
    object Table1Reference: TStringField
      DisplayWidth = 10
      FieldName = 'Reference'
      Size = 5
    end
    object Table1Designation: TStringField
      DisplayWidth = 27
      FieldName = 'Designation'
    end
    object Table1Qte_Stock: TFloatField
      DisplayWidth = 14
      FieldName = 'Qte_Stock'
    end
    object Table1Prix_achat: TCurrencyField
      DisplayWidth = 14
      FieldName = 'Prix_achat'
    end
    object Table1Prix_vente: TCurrencyField
      DisplayWidth = 14
      FieldName = 'Prix_vente'
    end
    object Table1TOTAL: TCurrencyField
      DisplayWidth = 24
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      Calculated = True
    end
  end
  object Query1: TQuery
    Left = 184
    Top = 488
  end
end
