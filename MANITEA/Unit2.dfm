object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Produit'
  ClientHeight = 531
  ClientWidth = 739
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 51
    Height = 13
    Caption = 'Recherche'
  end
  object Label2: TLabel
    Left = 24
    Top = 359
    Width = 71
    Height = 13
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Montant_stock'
    FocusControl = DBEdit1
  end
  object Edit1: TEdit
    Left = 40
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 96
    Width = 672
    Height = 257
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object DBEdit1: TDBEdit
    Left = 49
    Top = 373
    Width = 133
    Height = 21
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DataField = 'montant_stock'
    DataSource = DataSource2
    TabOrder = 2
  end
  object DataSource1: TDataSource
    Left = 96
    Top = 480
  end
  object DataSource2: TDataSource
    Left = 448
    Top = 288
  end
end
