object Form12: TForm12
  Left = 0
  Top = 0
  Caption = 'ACHAT'
  ClientHeight = 775
  ClientWidth = 854
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
    Top = 16
    Width = 58
    Height = 16
    Caption = 'Reference'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 64
    Width = 66
    Height = 16
    Caption = 'Designation'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 112
    Width = 58
    Height = 16
    Caption = 'Qte_Stock'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 160
    Width = 59
    Height = 16
    Caption = 'Prix_achat'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 8
    Top = 208
    Width = 65
    Height = 16
    Caption = 'Num_Achat'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 8
    Top = 256
    Width = 57
    Height = 16
    Caption = 'Ref_achat'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 8
    Top = 304
    Width = 59
    Height = 16
    Caption = 'Qte_Achat'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 8
    Top = 346
    Width = 43
    Height = 16
    Caption = 'Code_F'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 8
    Top = 392
    Width = 40
    Height = 16
    Caption = 'Nom_F'
    FocusControl = DBEdit9
  end
  object Label10: TLabel
    Left = 8
    Top = 440
    Width = 58
    Height = 16
    Caption = 'Prenom_F'
    FocusControl = DBEdit10
  end
  object Label11: TLabel
    Left = 8
    Top = 488
    Width = 53
    Height = 16
    Caption = 'Adress_F'
    FocusControl = DBEdit11
  end
  object Label12: TLabel
    Left = 8
    Top = 536
    Width = 60
    Height = 16
    Caption = 'Telephone'
    FocusControl = DBEdit12
  end
  object Label13: TLabel
    Left = 8
    Top = 584
    Width = 30
    Height = 16
    Caption = 'RC_F'
    FocusControl = DBEdit13
  end
  object Label14: TLabel
    Left = 8
    Top = 632
    Width = 28
    Height = 16
    Caption = 'AL_F'
    FocusControl = DBEdit14
  end
  object Label15: TLabel
    Left = 8
    Top = 680
    Width = 25
    Height = 16
    Caption = 'IF_F'
    FocusControl = DBEdit15
  end
  object Label16: TLabel
    Left = 528
    Top = 24
    Width = 60
    Height = 16
    Caption = 'Numero_A'
    FocusControl = DBEdit16
  end
  object Label17: TLabel
    Left = 528
    Top = 72
    Width = 65
    Height = 16
    Caption = 'Date_Achat'
    FocusControl = DBEdit17
  end
  object Label18: TLabel
    Left = 512
    Top = 115
    Width = 100
    Height = 16
    Caption = 'Reglement_Achat'
    FocusControl = DBEdit18
  end
  object DBEdit1: TDBEdit
    Left = 88
    Top = 8
    Width = 84
    Height = 24
    DataField = 'Reference'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 88
    Top = 56
    Width = 324
    Height = 24
    DataField = 'Designation'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 88
    Top = 104
    Width = 164
    Height = 24
    DataField = 'Qte_Stock'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 88
    Top = 152
    Width = 164
    Height = 24
    DataField = 'Prix_achat'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 88
    Top = 200
    Width = 164
    Height = 24
    DataField = 'Num_Achat'
    DataSource = DataSource2
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 88
    Top = 248
    Width = 84
    Height = 24
    DataField = 'Ref_achat'
    DataSource = DataSource2
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 88
    Top = 296
    Width = 164
    Height = 24
    DataField = 'Qte_Achat'
    DataSource = DataSource2
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 88
    Top = 343
    Width = 84
    Height = 24
    DataField = 'Code_F'
    DataSource = DataSource3
    TabOrder = 7
  end
  object DBEdit9: TDBEdit
    Left = 88
    Top = 384
    Width = 324
    Height = 24
    DataField = 'Nom_F'
    DataSource = DataSource3
    TabOrder = 8
  end
  object DBEdit10: TDBEdit
    Left = 88
    Top = 432
    Width = 324
    Height = 24
    DataField = 'Prenom_F'
    DataSource = DataSource3
    TabOrder = 9
  end
  object DBEdit11: TDBEdit
    Left = 88
    Top = 480
    Width = 484
    Height = 24
    DataField = 'Adress_F'
    DataSource = DataSource3
    TabOrder = 10
  end
  object DBEdit12: TDBEdit
    Left = 88
    Top = 528
    Width = 340
    Height = 24
    DataField = 'Telephone'
    DataSource = DataSource3
    TabOrder = 11
  end
  object DBEdit13: TDBEdit
    Left = 88
    Top = 576
    Width = 244
    Height = 24
    DataField = 'RC_F'
    DataSource = DataSource3
    TabOrder = 12
  end
  object DBEdit14: TDBEdit
    Left = 88
    Top = 624
    Width = 244
    Height = 24
    DataField = 'AL_F'
    DataSource = DataSource3
    TabOrder = 13
  end
  object DBEdit15: TDBEdit
    Left = 88
    Top = 672
    Width = 244
    Height = 24
    DataField = 'IF_F'
    DataSource = DataSource3
    TabOrder = 14
  end
  object DBEdit16: TDBEdit
    Left = 616
    Top = 16
    Width = 164
    Height = 24
    DataField = 'Numero_A'
    DataSource = DataSource4
    TabOrder = 15
  end
  object DBEdit17: TDBEdit
    Left = 618
    Top = 61
    Width = 162
    Height = 24
    DataField = 'Date_Achat'
    DataSource = DataSource4
    MaxLength = 8
    TabOrder = 16
  end
  object DBEdit18: TDBEdit
    Left = 618
    Top = 107
    Width = 164
    Height = 24
    DataField = 'Reglement_Achat'
    DataSource = DataSource4
    TabOrder = 17
  end
  object BitBtn1: TBitBtn
    Left = 544
    Top = 224
    Width = 137
    Height = 25
    Caption = 'ENREGISTRER'
    DoubleBuffered = True
    Kind = bkOK
    ParentDoubleBuffered = False
    TabOrder = 18
    OnClick = BitBtn1Click
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'COMMERCE'
    TableName = 'Produit.db'
    Left = 624
    Top = 32
    object Table1Reference: TStringField
      FieldName = 'Reference'
      Size = 5
    end
    object Table1Designation: TStringField
      FieldName = 'Designation'
    end
    object Table1Qte_Stock: TFloatField
      FieldName = 'Qte_Stock'
    end
    object Table1Prix_achat: TCurrencyField
      FieldName = 'Prix_achat'
    end
  end
  object Table2: TTable
    Active = True
    DatabaseName = 'COMMERCE'
    TableName = 'Ligne_Achat.db'
    Left = 688
    Top = 32
    object Table2Num_Achat: TFloatField
      FieldName = 'Num_Achat'
    end
    object Table2Ref_achat: TStringField
      FieldName = 'Ref_achat'
      Size = 5
    end
    object Table2Qte_Achat: TFloatField
      FieldName = 'Qte_Achat'
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 632
    Top = 80
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 688
    Top = 88
  end
  object Table3: TTable
    Active = True
    DatabaseName = 'COMMERCE'
    TableName = 'Fournisseur.DB'
    Left = 744
    Top = 32
    object Table3Nom_F: TStringField
      FieldName = 'Nom_F'
    end
    object Table3Prenom_F: TStringField
      FieldName = 'Prenom_F'
    end
    object Table3Adress_F: TStringField
      FieldName = 'Adress_F'
      Size = 30
    end
    object Table3Telephone: TStringField
      FieldName = 'Telephone'
      Size = 21
    end
    object Table3RC_F: TStringField
      FieldName = 'RC_F'
      Size = 15
    end
    object Table3AL_F: TStringField
      FieldName = 'AL_F'
      Size = 15
    end
    object Table3IF_F: TStringField
      FieldName = 'IF_F'
      Size = 15
    end
    object Table3Code_F: TStringField
      FieldName = 'Code_F'
      Size = 5
    end
  end
  object DataSource3: TDataSource
    DataSet = Table3
    Left = 744
    Top = 80
  end
  object Table4: TTable
    Active = True
    DatabaseName = 'COMMERCE'
    TableName = 'Facture_Achat.db'
    Left = 632
    Top = 152
    object Table4Numero_A: TFloatField
      FieldName = 'Numero_A'
    end
    object Table4Date_Achat: TDateField
      FieldName = 'Date_Achat'
      EditMask = '!99/99/00;1;_'
    end
    object Table4Reglement_Achat: TStringField
      FieldName = 'Reglement_Achat'
      Size = 10
    end
    object Table4Code_Four: TStringField
      FieldName = 'Code_Four'
      Size = 5
    end
  end
  object DataSource4: TDataSource
    DataSet = Table4
    Left = 688
    Top = 160
  end
end
