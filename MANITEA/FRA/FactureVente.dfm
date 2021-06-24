object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'FACTURE VENTE'
  ClientHeight = 519
  ClientWidth = 809
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
    Left = 456
    Top = 24
    Width = 83
    Height = 16
    Caption = 'Regelement_V'
  end
  object Label4: TLabel
    Left = 632
    Top = 24
    Width = 55
    Height = 16
    Caption = 'Code_clie'
  end
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 60
    Height = 16
    Caption = 'Numero_V'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 224
    Top = 24
    Width = 41
    Height = 16
    Caption = 'Date_V'
    FocusControl = DBEdit2
  end
  object Label5: TLabel
    Left = 24
    Top = 368
    Width = 62
    Height = 16
    Caption = 'TOTAL_HT'
    FocusControl = DBEdit3
  end
  object Label6: TLabel
    Left = 32
    Top = 416
    Width = 39
    Height = 16
    Caption = 'TOTAL'
    FocusControl = DBEdit4
  end
  object Label7: TLabel
    Left = 202
    Top = 435
    Width = 63
    Height = 16
    Caption = 'EN LETTRE'
    OnClick = Label7Click
  end
  object DBComboBox1: TDBComboBox
    Left = 456
    Top = 40
    Width = 145
    Height = 24
    DataField = 'Regelement_V'
    DataSource = DataSource1
    TabOrder = 0
    OnKeyDown = DBComboBox1KeyDown
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 134
    Width = 745
    Height = 219
    DataSource = DataSource3
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 40
    Width = 164
    Height = 24
    DataField = 'Numero_V'
    DataSource = DataSource1
    TabOrder = 2
    OnChange = DBEdit1Change
    OnKeyDown = DBEdit1KeyDown
  end
  object DBEdit2: TDBEdit
    Left = 224
    Top = 40
    Width = 164
    Height = 24
    DataField = 'Date_V'
    DataSource = DataSource1
    MaxLength = 8
    TabOrder = 3
    OnKeyDown = DBEdit2KeyDown
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 632
    Top = 40
    Width = 145
    Height = 24
    DataField = 'Code_clie'
    DataSource = DataSource1
    KeyField = 'Code_C'
    ListField = 'Code_C;Nom_C'
    TabOrder = 4
    OnKeyDown = DBLookupComboBox1KeyDown
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 384
    Width = 164
    Height = 24
    DataField = 'TOTAL_HT'
    DataSource = DataSource4
    TabOrder = 5
  end
  object DBEdit4: TDBEdit
    Left = 32
    Top = 432
    Width = 164
    Height = 24
    DataField = 'TOTAL'
    DataSource = DataSource4
    TabOrder = 6
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'COMMERCE'
    TableName = 'Facture_vente.db'
    Left = 16
    Top = 472
    object Table1Numero_V: TFloatField
      FieldName = 'Numero_V'
    end
    object Table1Date_V: TDateField
      FieldName = 'Date_V'
      EditMask = '!99/99/00;1;_'
    end
    object Table1Regelement_V: TStringField
      FieldName = 'Regelement_V'
      Size = 10
    end
    object Table1Code_clie: TStringField
      FieldName = 'Code_clie'
      Size = 5
    end
  end
  object Table2: TTable
    Active = True
    DatabaseName = 'COMMERCE'
    TableName = 'Client.DB'
    Left = 112
    Top = 472
  end
  object Table3: TTable
    Active = True
    OnCalcFields = Table3CalcFields
    DatabaseName = 'COMMERCE'
    IndexFieldNames = 'Num_V'
    MasterFields = 'Numero_V'
    MasterSource = DataSource1
    TableName = 'Ligne_Vente.db'
    Left = 216
    Top = 472
    object Table3Num_V: TFloatField
      DisplayWidth = 12
      FieldName = 'Num_V'
    end
    object Table3Ref_P: TStringField
      DisplayWidth = 6
      FieldName = 'Ref_P'
      Size = 5
    end
    object Table3Qte_V: TFloatField
      DisplayWidth = 12
      FieldName = 'Qte_V'
    end
    object Table3Designation: TStringField
      FieldKind = fkCalculated
      FieldName = 'Designation'
      Size = 30
      Calculated = True
    end
    object Table3Prix_Vente: TCurrencyField
      DisplayWidth = 12
      FieldKind = fkCalculated
      FieldName = 'Prix_Vente'
      Calculated = True
    end
    object Table3TOTAL: TCurrencyField
      DisplayWidth = 27
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      Calculated = True
    end
  end
  object Table4: TTable
    Active = True
    DatabaseName = 'COMMERCE'
    TableName = 'Produit.db'
    Left = 312
    Top = 472
    object Table4Reference: TStringField
      FieldName = 'Reference'
      Size = 5
    end
    object Table4Designation: TStringField
      FieldName = 'Designation'
    end
    object Table4Qte_Stock: TFloatField
      FieldName = 'Qte_Stock'
    end
    object Table4Prix_achat: TCurrencyField
      FieldName = 'Prix_achat'
    end
    object Table4Prix_vente: TCurrencyField
      FieldName = 'Prix_vente'
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 64
    Top = 472
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 160
    Top = 480
  end
  object DataSource3: TDataSource
    DataSet = Table3
    Left = 264
    Top = 472
  end
  object Query1: TQuery
    Active = True
    DatabaseName = 'COMMERCE'
    SQL.Strings = (
      'Select '
      
        'sum(Qte_V*prix_vente) as TOTAL_HT, sum(Qte_V*Prix_Vente)as TOTAL' +
        ' from Produit,Ligne_Vente'
      'where (Reference=reference)and(num_v=:p)')
    Left = 360
    Top = 480
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p'
        ParamType = ptOutput
      end>
    object Query1TOTAL_HT: TCurrencyField
      FieldName = 'TOTAL_HT'
    end
    object Query1TOTAL: TCurrencyField
      FieldName = 'TOTAL'
    end
  end
  object DataSource4: TDataSource
    DataSet = Query1
    Left = 392
    Top = 480
  end
end
