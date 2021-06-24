object Form1: TForm1
  Left = 0
  Top = 0
  ClientHeight = 792
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 17
  object Label8: TLabel
    Left = 185
    Top = 0
    Width = 361
    Height = 28
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'ETAT MAJOR DE LA GENDARMERIE'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label22: TLabel
    Left = 142
    Top = 25
    Width = 497
    Height = 28
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'GROUPEMENT DE LA GENDARMERIE IHOROMBE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label24: TLabel
    Left = 225
    Top = 45
    Width = 343
    Height = 24
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = '-------------------------------------------------'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 72
    Width = 25
    Height = 17
    Caption = 'LDT'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 102
    Width = 66
    Height = 17
    Caption = 'FONCTION'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 131
    Width = 44
    Height = 17
    Caption = 'GRADE'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 163
    Width = 72
    Height = 17
    Caption = 'MATRICULE'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 8
    Top = 194
    Width = 72
    Height = 17
    Caption = 'MATRICULE'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 8
    Top = 223
    Width = 29
    Height = 17
    Caption = 'NOM'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 8
    Top = 254
    Width = 54
    Height = 17
    Caption = 'PRENOM'
    FocusControl = DBEdit7
  end
  object Label9: TLabel
    Left = 8
    Top = 286
    Width = 139
    Height = 17
    Caption = 'DATE_DE_NAISSANCE'
    FocusControl = DBEdit8
  end
  object Label10: TLabel
    Left = 8
    Top = 317
    Width = 133
    Height = 17
    Caption = 'LIEU_DE_NAISSANCE'
    FocusControl = DBEdit9
  end
  object Label11: TLabel
    Left = 8
    Top = 348
    Width = 158
    Height = 17
    Caption = 'DATE_RENTRE_A_LA_GN'
    FocusControl = DBEdit10
  end
  object Label12: TLabel
    Left = 8
    Top = 380
    Width = 97
    Height = 17
    Caption = 'DIPL'#212'ME_CIVIL'
    FocusControl = DBEdit11
  end
  object Label13: TLabel
    Left = 8
    Top = 412
    Width = 127
    Height = 17
    Caption = 'DIPL'#212'ME_MILITAIRE'
    FocusControl = DBEdit12
  end
  object Label14: TLabel
    Left = 8
    Top = 446
    Width = 77
    Height = 17
    Caption = 'RECOPENSE'
    FocusControl = DBEdit13
  end
  object Label15: TLabel
    Left = 8
    Top = 477
    Width = 140
    Height = 17
    Caption = 'REF_DATE_MUTATION'
    FocusControl = DBEdit14
  end
  object Label16: TLabel
    Left = 8
    Top = 508
    Width = 123
    Height = 17
    Caption = 'DATE_NOMINATION'
    FocusControl = DBEdit15
  end
  object Label17: TLabel
    Left = 8
    Top = 541
    Width = 198
    Height = 17
    Caption = 'NOTES_03_DERNIERS_ANNEES'
    FocusControl = DBEdit16
  end
  object Label18: TLabel
    Left = 8
    Top = 572
    Width = 153
    Height = 17
    Caption = 'SITUATION_DE_FAMILLE'
    FocusControl = DBEdit17
  end
  object Label19: TLabel
    Left = 8
    Top = 602
    Width = 85
    Height = 17
    Caption = 'DECORATION'
    FocusControl = DBEdit18
  end
  object Label20: TLabel
    Left = 8
    Top = 632
    Width = 125
    Height = 17
    Caption = 'FONCTION_EPOUSE'
    FocusControl = DBEdit19
  end
  object Label21: TLabel
    Left = 8
    Top = 664
    Width = 124
    Height = 17
    Caption = 'REF_DISPONIBILITE'
    FocusControl = DBEdit20
  end
  object Label23: TLabel
    Left = 8
    Top = 695
    Width = 96
    Height = 17
    Caption = 'DATE_ARRIVEE'
    FocusControl = DBEdit21
  end
  object Label25: TLabel
    Left = 8
    Top = 726
    Width = 86
    Height = 17
    Caption = 'AFFECTATION'
    FocusControl = DBEdit22
  end
  object DBEdit1: TDBEdit
    Left = 185
    Top = 64
    Width = 172
    Height = 25
    DataField = 'LDT'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 185
    Top = 94
    Width = 174
    Height = 25
    DataField = 'FONCTION'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 185
    Top = 124
    Width = 172
    Height = 25
    DataField = 'GRADE'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 185
    Top = 155
    Width = 174
    Height = 25
    DataField = 'MATRICULE'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 185
    Top = 186
    Width = 174
    Height = 25
    DataField = 'MATRICULE'
    DataSource = DataSource2
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 185
    Top = 215
    Width = 336
    Height = 25
    DataField = 'NOM'
    DataSource = DataSource2
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 185
    Top = 246
    Width = 336
    Height = 25
    DataField = 'PRENOM'
    DataSource = DataSource2
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 185
    Top = 278
    Width = 172
    Height = 25
    DataField = 'DATE_DE_NAISSANCE'
    DataSource = DataSource2
    MaxLength = 8
    TabOrder = 7
  end
  object DBEdit9: TDBEdit
    Left = 185
    Top = 309
    Width = 417
    Height = 25
    DataField = 'LIEU_DE_NAISSANCE'
    DataSource = DataSource2
    TabOrder = 8
  end
  object DBEdit10: TDBEdit
    Left = 185
    Top = 340
    Width = 172
    Height = 25
    DataField = 'DATE_RENTRE_A_LA_GN'
    DataSource = DataSource2
    MaxLength = 8
    TabOrder = 9
  end
  object DBEdit11: TDBEdit
    Left = 185
    Top = 372
    Width = 264
    Height = 25
    DataField = 'DIPL'#212'ME_CIVIL'
    DataSource = DataSource2
    TabOrder = 10
  end
  object DBEdit12: TDBEdit
    Left = 185
    Top = 404
    Width = 264
    Height = 25
    DataField = 'DIPL'#212'ME_MILITAIRE'
    DataSource = DataSource2
    TabOrder = 11
  end
  object DBEdit13: TDBEdit
    Left = 185
    Top = 438
    Width = 264
    Height = 25
    DataField = 'RECOPENSE'
    DataSource = DataSource2
    TabOrder = 12
  end
  object DBEdit14: TDBEdit
    Left = 185
    Top = 469
    Width = 264
    Height = 25
    DataField = 'REF_DATE_MUTATION'
    DataSource = DataSource2
    TabOrder = 13
  end
  object DBEdit15: TDBEdit
    Left = 185
    Top = 500
    Width = 174
    Height = 25
    DataField = 'DATE_NOMINATION'
    DataSource = DataSource2
    MaxLength = 8
    TabOrder = 14
  end
  object DBEdit16: TDBEdit
    Left = 225
    Top = 533
    Width = 213
    Height = 25
    DataField = 'NOTES_03_DERNIERS_ANNEES'
    DataSource = DataSource2
    TabOrder = 15
  end
  object DBEdit17: TDBEdit
    Left = 185
    Top = 564
    Width = 317
    Height = 25
    DataField = 'SITUATION_DE_FAMILLE'
    DataSource = DataSource2
    TabOrder = 16
  end
  object DBEdit18: TDBEdit
    Left = 185
    Top = 595
    Width = 312
    Height = 25
    DataField = 'DECORATION'
    DataSource = DataSource2
    TabOrder = 17
  end
  object DBEdit19: TDBEdit
    Left = 188
    Top = 624
    Width = 309
    Height = 25
    DataField = 'FONCTION_EPOUSE'
    DataSource = DataSource2
    TabOrder = 18
  end
  object DBEdit20: TDBEdit
    Left = 185
    Top = 656
    Width = 293
    Height = 25
    DataField = 'REF_DISPONIBILITE'
    DataSource = DataSource2
    TabOrder = 19
  end
  object DBEdit21: TDBEdit
    Left = 185
    Top = 687
    Width = 174
    Height = 25
    DataField = 'DATE_ARRIVEE'
    DataSource = DataSource2
    MaxLength = 8
    TabOrder = 20
  end
  object DBEdit22: TDBEdit
    Left = 185
    Top = 718
    Width = 312
    Height = 25
    DataField = 'AFFECTATION'
    DataSource = DataSource2
    TabOrder = 21
  end
  object BitBtn1: TBitBtn
    Left = 104
    Top = 760
    Width = 137
    Height = 25
    Caption = 'ENREGISTRER'
    DoubleBuffered = True
    Kind = bkOK
    ParentDoubleBuffered = False
    TabOrder = 22
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 328
    Top = 760
    Width = 129
    Height = 25
    Caption = 'ANNULER'
    DoubleBuffered = True
    Kind = bkCancel
    ParentDoubleBuffered = False
    TabOrder = 23
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'RENSGN'
    TableName = 'FRN.db'
    Left = 552
    Top = 80
    object Table1LDT: TStringField
      FieldName = 'LDT'
    end
    object Table1FONCTION: TStringField
      FieldName = 'FONCTION'
    end
    object Table1GRADE: TStringField
      FieldName = 'GRADE'
    end
    object Table1MATRICULE: TFloatField
      FieldName = 'MATRICULE'
      MaxValue = 999999.000000000000000000
    end
  end
  object Table2: TTable
    Active = True
    DatabaseName = 'RENSGN'
    TableName = 'FRCI.DB'
    Left = 616
    Top = 80
    object Table2MATRICULE: TFloatField
      FieldName = 'MATRICULE'
      MaxValue = 999999.000000000000000000
    end
    object Table2NOM: TStringField
      FieldName = 'NOM'
      Size = 80
    end
    object Table2PRENOM: TStringField
      FieldName = 'PRENOM'
      Size = 60
    end
    object Table2DATE_DE_NAISSANCE: TDateField
      FieldName = 'DATE_DE_NAISSANCE'
      EditMask = '!99/99/00;1;_'
    end
    object Table2LIEU_DE_NAISSANCE: TStringField
      FieldName = 'LIEU_DE_NAISSANCE'
      Size = 60
    end
    object Table2DATE_RENTRE_A_LA_GN: TDateField
      FieldName = 'DATE_RENTRE_A_LA_GN'
      EditMask = '!99/99/00;1;_'
    end
    object Table2DIPLÔME_CIVIL: TStringField
      FieldName = 'DIPL'#212'ME_CIVIL'
      Size = 40
    end
    object Table2DIPLÔME_MILITAIRE: TStringField
      FieldName = 'DIPL'#212'ME_MILITAIRE'
      Size = 40
    end
    object Table2RECOPENSE: TStringField
      FieldName = 'RECOPENSE'
      Size = 40
    end
    object Table2REF_DATE_MUTATION: TStringField
      FieldName = 'REF_DATE_MUTATION'
      Size = 40
    end
    object Table2DATE_NOMINATION: TDateField
      FieldName = 'DATE_NOMINATION'
      EditMask = '!99/99/00;1;_'
    end
    object Table2NOTES_03_DERNIERS_ANNEES: TStringField
      FieldName = 'NOTES_03_DERNIERS_ANNEES'
      Size = 40
    end
    object Table2SITUATION_DE_FAMILLE: TStringField
      FieldName = 'SITUATION_DE_FAMILLE'
      Size = 40
    end
    object Table2DECORATION: TStringField
      FieldName = 'DECORATION'
      Size = 40
    end
    object Table2FONCTION_EPOUSE: TStringField
      FieldName = 'FONCTION_EPOUSE'
      Size = 40
    end
    object Table2REF_DISPONIBILITE: TStringField
      FieldName = 'REF_DISPONIBILITE'
      Size = 40
    end
    object Table2DATE_ARRIVEE: TDateField
      FieldName = 'DATE_ARRIVEE'
      EditMask = '!99/99/00;1;_'
    end
    object Table2AFFECTATION: TStringField
      FieldName = 'AFFECTATION'
      Size = 40
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 544
    Top = 136
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 616
    Top = 136
  end
end
