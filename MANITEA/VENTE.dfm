object Form13: TForm13
  Left = 0
  Top = 0
  Caption = 'VENTE'
  ClientHeight = 509
  ClientWidth = 743
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel
    Left = 6
    Top = 12
    Width = 36
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Code_C'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 6
    Top = 42
    Width = 33
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Nom_C'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 6
    Top = 72
    Width = 47
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Prenom_C'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 6
    Top = 108
    Width = 42
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Adress_C'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 6
    Top = 144
    Width = 47
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Telephone'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 6
    Top = 180
    Width = 25
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'RC_C'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 6
    Top = 216
    Width = 21
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Al_C'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 6
    Top = 252
    Width = 22
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'IF_C'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 5
    Top = 282
    Width = 44
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Reference'
    FocusControl = DBEdit9
  end
  object Label10: TLabel
    Left = 5
    Top = 311
    Width = 52
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Designation'
    FocusControl = DBEdit10
  end
  object Label11: TLabel
    Left = 5
    Top = 347
    Width = 47
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Qte_Stock'
    FocusControl = DBEdit11
  end
  object Label12: TLabel
    Left = 5
    Top = 383
    Width = 46
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Prix_achat'
    FocusControl = DBEdit12
  end
  object Label13: TLabel
    Left = 5
    Top = 419
    Width = 47
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Prix_vente'
    FocusControl = DBEdit13
  end
  object Label14: TLabel
    Left = 6
    Top = 444
    Width = 32
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Num_V'
    FocusControl = DBEdit14
  end
  object Label15: TLabel
    Left = 6
    Top = 469
    Width = 25
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Ref_P'
    FocusControl = DBEdit15
  end
  object Label16: TLabel
    Left = 6
    Top = 505
    Width = 27
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Qte_V'
    FocusControl = DBEdit16
  end
  object Label17: TLabel
    Left = 444
    Top = 30
    Width = 32
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Num_V'
    FocusControl = DBEdit17
  end
  object Label18: TLabel
    Left = 444
    Top = 66
    Width = 25
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Ref_P'
    FocusControl = DBEdit18
  end
  object Label19: TLabel
    Left = 444
    Top = 102
    Width = 27
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Qte_V'
    FocusControl = DBEdit19
  end
  object DBEdit1: TDBEdit
    Left = 60
    Top = 6
    Width = 63
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DataField = 'Code_C'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 60
    Top = 36
    Width = 243
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DataField = 'Nom_C'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 59
    Top = 66
    Width = 243
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DataField = 'Prenom_C'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 59
    Top = 102
    Width = 363
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DataField = 'Adress_C'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 59
    Top = 138
    Width = 255
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DataField = 'Telephone'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 59
    Top = 174
    Width = 183
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DataField = 'RC_C'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 59
    Top = 210
    Width = 183
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DataField = 'Al_C'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 59
    Top = 246
    Width = 183
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DataField = 'IF_C'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEdit9: TDBEdit
    Left = 60
    Top = 276
    Width = 63
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DataField = 'Reference'
    DataSource = DataSource2
    TabOrder = 8
  end
  object DBEdit10: TDBEdit
    Left = 60
    Top = 305
    Width = 243
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DataField = 'Designation'
    DataSource = DataSource2
    TabOrder = 9
  end
  object DBEdit11: TDBEdit
    Left = 60
    Top = 341
    Width = 123
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DataField = 'Qte_Stock'
    DataSource = DataSource2
    TabOrder = 10
  end
  object DBEdit12: TDBEdit
    Left = 60
    Top = 377
    Width = 123
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DataField = 'Prix_achat'
    DataSource = DataSource2
    TabOrder = 11
  end
  object DBEdit13: TDBEdit
    Left = 60
    Top = 413
    Width = 123
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DataField = 'Prix_vente'
    DataSource = DataSource2
    TabOrder = 12
  end
  object DBEdit14: TDBEdit
    Left = 60
    Top = 438
    Width = 123
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DataField = 'Num_V'
    DataSource = DataSource3
    TabOrder = 13
  end
  object DBEdit15: TDBEdit
    Left = 60
    Top = 463
    Width = 63
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DataField = 'Ref_P'
    DataSource = DataSource3
    TabOrder = 14
  end
  object DBEdit16: TDBEdit
    Left = 60
    Top = 499
    Width = 123
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DataField = 'Qte_V'
    DataSource = DataSource3
    TabOrder = 15
  end
  object DBEdit17: TDBEdit
    Left = 504
    Top = 24
    Width = 123
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DataField = 'Num_V'
    DataSource = DataSource4
    TabOrder = 16
  end
  object DBEdit18: TDBEdit
    Left = 504
    Top = 60
    Width = 63
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DataField = 'Ref_P'
    DataSource = DataSource4
    TabOrder = 17
  end
  object DBEdit19: TDBEdit
    Left = 504
    Top = 96
    Width = 123
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DataField = 'Qte_V'
    DataSource = DataSource4
    TabOrder = 18
  end
  object BitBtn1: TBitBtn
    Left = 444
    Top = 192
    Width = 103
    Height = 19
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'ENREGISTRE'
    DoubleBuffered = True
    Kind = bkOK
    ParentDoubleBuffered = False
    TabOrder = 19
    OnClick = BitBtn1Click
  end
  object DataSource1: TDataSource
    Left = 544
    Top = 360
  end
  object DataSource2: TDataSource
    Left = 352
    Top = 366
  end
  object DataSource3: TDataSource
    Left = 704
    Top = 96
  end
  object DataSource4: TDataSource
    Left = 768
    Top = 96
  end
  object Client: TADOTable
    Left = 416
    Top = 368
  end
  object Produit: TADOTable
    Left = 472
    Top = 368
  end
  object Facture_vente: TADOTable
    Left = 472
    Top = 440
  end
  object Facture_achat: TADOTable
    Left = 392
    Top = 440
  end
end
