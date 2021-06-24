object Form13: TForm13
  Left = 0
  Top = 0
  Caption = 'VENTE'
  ClientHeight = 710
  ClientWidth = 830
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
    Width = 44
    Height = 16
    Caption = 'Code_C'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 41
    Height = 16
    Caption = 'Nom_C'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 96
    Width = 59
    Height = 16
    Caption = 'Prenom_C'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 144
    Width = 54
    Height = 16
    Caption = 'Adress_C'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 8
    Top = 192
    Width = 60
    Height = 16
    Caption = 'Telephone'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 8
    Top = 240
    Width = 31
    Height = 16
    Caption = 'RC_C'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 8
    Top = 288
    Width = 26
    Height = 16
    Caption = 'Al_C'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 8
    Top = 336
    Width = 26
    Height = 16
    Caption = 'IF_C'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 6
    Top = 376
    Width = 58
    Height = 16
    Caption = 'Reference'
    FocusControl = DBEdit9
  end
  object Label10: TLabel
    Left = 6
    Top = 414
    Width = 66
    Height = 16
    Caption = 'Designation'
    FocusControl = DBEdit10
  end
  object Label11: TLabel
    Left = 6
    Top = 462
    Width = 58
    Height = 16
    Caption = 'Qte_Stock'
    FocusControl = DBEdit11
  end
  object Label12: TLabel
    Left = 6
    Top = 510
    Width = 59
    Height = 16
    Caption = 'Prix_achat'
    FocusControl = DBEdit12
  end
  object Label13: TLabel
    Left = 6
    Top = 558
    Width = 59
    Height = 16
    Caption = 'Prix_vente'
    FocusControl = DBEdit13
  end
  object Label14: TLabel
    Left = 8
    Top = 592
    Width = 41
    Height = 16
    Caption = 'Num_V'
    FocusControl = DBEdit14
  end
  object Label15: TLabel
    Left = 8
    Top = 625
    Width = 33
    Height = 16
    Caption = 'Ref_P'
    FocusControl = DBEdit15
  end
  object Label16: TLabel
    Left = 8
    Top = 673
    Width = 35
    Height = 16
    Caption = 'Qte_V'
    FocusControl = DBEdit16
  end
  object Label17: TLabel
    Left = 592
    Top = 40
    Width = 41
    Height = 16
    Caption = 'Num_V'
    FocusControl = DBEdit17
  end
  object Label18: TLabel
    Left = 592
    Top = 88
    Width = 33
    Height = 16
    Caption = 'Ref_P'
    FocusControl = DBEdit18
  end
  object Label19: TLabel
    Left = 592
    Top = 136
    Width = 35
    Height = 16
    Caption = 'Qte_V'
    FocusControl = DBEdit19
  end
  object DBEdit1: TDBEdit
    Left = 80
    Top = 8
    Width = 84
    Height = 24
    DataField = 'Code_C'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 80
    Top = 48
    Width = 324
    Height = 24
    DataField = 'Nom_C'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 79
    Top = 88
    Width = 324
    Height = 24
    DataField = 'Prenom_C'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 79
    Top = 136
    Width = 484
    Height = 24
    DataField = 'Adress_C'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 79
    Top = 184
    Width = 340
    Height = 24
    DataField = 'Telephone'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 79
    Top = 232
    Width = 244
    Height = 24
    DataField = 'RC_C'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 79
    Top = 280
    Width = 244
    Height = 24
    DataField = 'Al_C'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 79
    Top = 328
    Width = 244
    Height = 24
    DataField = 'IF_C'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEdit9: TDBEdit
    Left = 80
    Top = 368
    Width = 84
    Height = 24
    DataField = 'Reference'
    DataSource = DataSource2
    TabOrder = 8
  end
  object DBEdit10: TDBEdit
    Left = 80
    Top = 406
    Width = 324
    Height = 24
    DataField = 'Designation'
    DataSource = DataSource2
    TabOrder = 9
  end
  object DBEdit11: TDBEdit
    Left = 80
    Top = 454
    Width = 164
    Height = 24
    DataField = 'Qte_Stock'
    DataSource = DataSource2
    TabOrder = 10
  end
  object DBEdit12: TDBEdit
    Left = 80
    Top = 502
    Width = 164
    Height = 24
    DataField = 'Prix_achat'
    DataSource = DataSource2
    TabOrder = 11
  end
  object DBEdit13: TDBEdit
    Left = 80
    Top = 550
    Width = 164
    Height = 24
    DataField = 'Prix_vente'
    DataSource = DataSource2
    TabOrder = 12
  end
  object DBEdit14: TDBEdit
    Left = 80
    Top = 584
    Width = 164
    Height = 24
    DataField = 'Num_V'
    DataSource = DataSource3
    TabOrder = 13
  end
  object DBEdit15: TDBEdit
    Left = 80
    Top = 617
    Width = 84
    Height = 24
    DataField = 'Ref_P'
    DataSource = DataSource3
    TabOrder = 14
  end
  object DBEdit16: TDBEdit
    Left = 80
    Top = 665
    Width = 164
    Height = 24
    DataField = 'Qte_V'
    DataSource = DataSource3
    TabOrder = 15
  end
  object DBEdit17: TDBEdit
    Left = 672
    Top = 32
    Width = 164
    Height = 24
    DataField = 'Num_V'
    DataSource = DataSource4
    TabOrder = 16
  end
  object DBEdit18: TDBEdit
    Left = 672
    Top = 80
    Width = 84
    Height = 24
    DataField = 'Ref_P'
    DataSource = DataSource4
    TabOrder = 17
  end
  object DBEdit19: TDBEdit
    Left = 672
    Top = 128
    Width = 164
    Height = 24
    DataField = 'Qte_V'
    DataSource = DataSource4
    TabOrder = 18
  end
  object BitBtn1: TBitBtn
    Left = 592
    Top = 256
    Width = 137
    Height = 25
    Caption = 'ENREGISTRE'
    DoubleBuffered = True
    Kind = bkOK
    ParentDoubleBuffered = False
    TabOrder = 19
    OnClick = BitBtn1Click
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'COMMERCE'
    TableName = 'Client.DB'
    Left = 512
    Top = 32
    object Table1Code_C: TStringField
      FieldName = 'Code_C'
      Size = 5
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
    object Table1Nom_C: TStringField
      FieldName = 'Nom_C'
    end
  end
  object Table2: TTable
    Active = True
    DatabaseName = 'COMMERCE'
    TableName = 'Produit.db'
    Left = 616
    Top = 32
    object Table2Reference: TStringField
      FieldName = 'Reference'
      Size = 5
    end
    object Table2Designation: TStringField
      FieldName = 'Designation'
    end
    object Table2Qte_Stock: TFloatField
      FieldName = 'Qte_Stock'
    end
    object Table2Prix_achat: TCurrencyField
      FieldName = 'Prix_achat'
    end
    object Table2Prix_vente: TCurrencyField
      FieldName = 'Prix_vente'
    end
  end
  object Table3: TTable
    Active = True
    DatabaseName = 'COMMERCE'
    TableName = 'Ligne_Vente.db'
    Left = 712
    Top = 32
    object Table3Num_V: TFloatField
      FieldName = 'Num_V'
    end
    object Table3Ref_P: TStringField
      FieldName = 'Ref_P'
      Size = 5
    end
    object Table3Qte_V: TFloatField
      FieldName = 'Qte_V'
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 512
    Top = 80
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 616
    Top = 86
  end
  object DataSource3: TDataSource
    DataSet = Table3
    Left = 704
    Top = 96
  end
  object Table4: TTable
    Active = True
    DatabaseName = 'COMMERCE'
    TableName = 'Ligne_Vente.db'
    Left = 768
    Top = 40
    object Table4Num_V: TFloatField
      FieldName = 'Num_V'
    end
    object Table4Ref_P: TStringField
      FieldName = 'Ref_P'
      Size = 5
    end
    object Table4Qte_V: TFloatField
      FieldName = 'Qte_V'
    end
  end
  object DataSource4: TDataSource
    DataSet = Table4
    Left = 768
    Top = 96
  end
end
