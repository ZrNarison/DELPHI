object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Fournisseur'
  ClientHeight = 283
  ClientWidth = 1063
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
    Left = 8
    Top = 75
    Width = 65
    Height = 16
    Caption = 'FILTRAGE :'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 104
    Width = 1057
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 79
    Top = 67
    Width = 121
    Height = 24
    TabOrder = 1
    OnChange = Edit1Change
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'COMMERCE'
    TableName = 'Fournisseur.db'
    Left = 24
    Top = 232
    object Table1Nom_F: TStringField
      FieldName = 'Nom_F'
    end
    object Table1Prenom_F: TStringField
      FieldName = 'Prenom_F'
    end
    object Table1Adress_F: TStringField
      FieldName = 'Adress_F'
      Size = 30
    end
    object Table1Telephone: TStringField
      FieldName = 'Telephone'
      Size = 21
    end
    object Table1RC_F: TStringField
      FieldName = 'RC_F'
      Size = 15
    end
    object Table1AL_F: TStringField
      FieldName = 'AL_F'
      Size = 15
    end
    object Table1IF_F: TStringField
      FieldName = 'IF_F'
      Size = 15
    end
    object Table1Code_F: TStringField
      FieldName = 'Code_F'
      Size = 5
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 96
    Top = 224
  end
end
