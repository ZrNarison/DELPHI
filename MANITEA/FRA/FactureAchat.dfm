object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'FACTURE ACHAT'
  ClientHeight = 474
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object SpeedButton1: TSpeedButton
    Left = 648
    Top = 4
    Width = 113
    Height = 22
    Caption = 'Imprimer'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object Label3: TLabel
    Left = 408
    Top = 32
    Width = 61
    Height = 16
    Caption = 'Reglement'
  end
  object Label4: TLabel
    Left = 608
    Top = 32
    Width = 100
    Height = 16
    Caption = 'Code Fournisseur'
  end
  object Label1: TLabel
    Left = 8
    Top = 32
    Width = 45
    Height = 16
    Caption = 'Numero'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 224
    Top = 32
    Width = 26
    Height = 16
    Caption = 'Date'
    FocusControl = DBEdit2
  end
  object Label5: TLabel
    Left = 16
    Top = 368
    Width = 59
    Height = 16
    Caption = 'TOTAL HT'
    FocusControl = DBEdit3
  end
  object Label6: TLabel
    Left = 19
    Top = 414
    Width = 39
    Height = 16
    Caption = 'TOTAL'
    FocusControl = DBEdit4
  end
  object Label7: TLabel
    Left = 56
    Top = 432
    Width = 4
    Height = 16
  end
  object Label8: TLabel
    Left = 186
    Top = 444
    Width = 63
    Height = 16
    Caption = 'EN LETTRE'
    OnClick = Label8Click
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 608
    Top = 48
    Width = 145
    Height = 24
    DataField = 'Code_Four'
    DataSource = DataSource1
    KeyField = 'Code_F'
    ListField = 'Code_F;Nom_F'
    ListSource = DataSource2
    TabOrder = 0
    OnKeyDown = DBLookupComboBox1KeyDown
  end
  object DBComboBox1: TDBComboBox
    Left = 408
    Top = 48
    Width = 145
    Height = 24
    DataField = 'Reglement_Achat'
    DataSource = DataSource1
    Items.Strings = (
      'cheque,espece,credit')
    TabOrder = 1
    OnKeyDown = DBComboBox1KeyDown
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 48
    Width = 164
    Height = 24
    DataField = 'Numero_A'
    DataSource = DataSource1
    TabOrder = 2
    OnKeyDown = DBEdit1KeyDown
  end
  object DBEdit2: TDBEdit
    Left = 224
    Top = 48
    Width = 164
    Height = 24
    DataField = 'Date_Achat'
    DataSource = DataSource1
    MaxLength = 8
    TabOrder = 3
    OnKeyDown = DBEdit2KeyDown
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 384
    Width = 164
    Height = 24
    DataField = 'TOTAL_HT'
    DataSource = DataSource4
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 19
    Top = 436
    Width = 161
    Height = 24
    DataField = 'TOTAL'
    DataSource = DataSource4
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 120
    Width = 700
    Height = 242
    DataSource = DataSource3
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Table1: TTable
    Active = True
    AfterInsert = Table1AfterInsert
    DatabaseName = 'COMMERCE'
    TableName = 'Facture_Achat.db'
    Left = 8
    Top = 464
    object Table1Numero_A: TFloatField
      FieldName = 'Numero_A'
    end
    object Table1Date_Achat: TDateField
      FieldName = 'Date_Achat'
      EditMask = '!99/99/00;1;_'
    end
    object Table1Reglement_Achat: TStringField
      FieldName = 'Reglement_Achat'
      Size = 10
    end
    object Table1Code_Four: TStringField
      FieldName = 'Code_Four'
      Size = 5
    end
  end
  object Table2: TTable
    Active = True
    DatabaseName = 'COMMERCE'
    TableName = 'Fournisseur.db'
    Left = 144
    Top = 464
    object Table2Nom_F: TStringField
      FieldName = 'Nom_F'
    end
    object Table2Prenom_F: TStringField
      FieldName = 'Prenom_F'
    end
    object Table2Adress_F: TStringField
      FieldName = 'Adress_F'
      Size = 30
    end
    object Table2Telephone: TStringField
      FieldName = 'Telephone'
      Size = 21
    end
    object Table2RC_F: TStringField
      FieldName = 'RC_F'
      Size = 15
    end
    object Table2AL_F: TStringField
      FieldName = 'AL_F'
      Size = 15
    end
    object Table2IF_F: TStringField
      FieldName = 'IF_F'
      Size = 15
    end
    object Table2Code_F: TStringField
      FieldName = 'Code_F'
      Size = 5
    end
  end
  object Table3: TTable
    Active = True
    OnCalcFields = Table3CalcFields
    AutoRefresh = True
    DatabaseName = 'COMMERCE'
    IndexFieldNames = 'Num_Achat'
    MasterFields = 'Numero_A'
    MasterSource = DataSource1
    TableName = 'Ligne_Achat.db'
    Left = 264
    Top = 464
    object Table3Num_Achat: TFloatField
      DisplayWidth = 12
      FieldName = 'Num_Achat'
    end
    object Table3Ref_achat: TStringField
      DisplayWidth = 10
      FieldName = 'Ref_achat'
      Size = 5
    end
    object Table3Qte_Achat: TFloatField
      DisplayWidth = 12
      FieldName = 'Qte_Achat'
    end
    object Table3Designation: TStringField
      DisplayWidth = 24
      FieldKind = fkCalculated
      FieldName = 'Designation'
      Calculated = True
    end
    object Table3Prix_Vente: TCurrencyField
      DisplayWidth = 12
      FieldKind = fkCalculated
      FieldName = 'Prix'
      Calculated = True
    end
    object Table3TOTAL_HT: TCurrencyField
      DisplayWidth = 16
      FieldKind = fkCalculated
      FieldName = 'TOTAL_HT'
      Calculated = True
    end
    object Table3TOTAL: TCurrencyField
      DisplayWidth = 25
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      Calculated = True
    end
  end
  object Table4: TTable
    Active = True
    DatabaseName = 'COMMERCE'
    TableName = 'Produit.db'
    Left = 392
    Top = 464
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
    Left = 72
    Top = 464
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 200
    Top = 464
  end
  object Query1: TQuery
    Active = True
    DatabaseName = 'COMMERCE'
    SQL.Strings = (
      'Select'
      
        'sum(Qte_Achat*Prix_Achat)as TOTAL_HT,Sum(Qte_Achat*Prix_achat)as' +
        ' TOTAL from Produit,Ligne_Achat'
      'where(reference=Ref_Achat)and(num_Achat=:p)')
    Left = 464
    Top = 472
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
    DataSet = Table3
    Left = 536
    Top = 464
  end
  object DataSource3: TDataSource
    DataSet = Table3
    Left = 320
    Top = 464
  end
end
