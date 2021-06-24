object Form2: TForm2
  Left = 0
  Top = 0
  ClientHeight = 661
  ClientWidth = 845
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 120
  TextHeight = 17
  object PageControl1: TPageControl
    Left = 10
    Top = 0
    Width = 1425
    Height = 870
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'CONSULTATION'
      object Label1: TLabel
        Left = 4
        Top = 59
        Width = 65
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'FILTRAGE:'
      end
      object Label2: TLabel
        Left = 4
        Top = 449
        Width = 197
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'RESEIGNEMENT  PERSONNELLE'
      end
      object DBGrid1: TDBGrid
        Left = 4
        Top = 84
        Width = 509
        Height = 357
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
        OnColEnter = DBGrid1ColEnter
      end
      object DBGrid2: TDBGrid
        Left = 4
        Top = 474
        Width = 1410
        Height = 96
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataSource = DataSource2
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -14
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Edit1: TEdit
        Left = 77
        Top = 51
        Width = 158
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabOrder = 2
        OnChange = Edit1Change
      end
      object Button2: TButton
        Left = 4
        Top = 578
        Width = 98
        Height = 33
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '&DECEDE'
        TabOrder = 3
        OnClick = Button2Click
      end
    end
  end
  object Table1: TTable
    Active = True
    AutoRefresh = True
    DatabaseName = 'RENSGN'
    TableName = 'FRN.db'
    Left = 24
    Top = 472
  end
  object Table2: TTable
    Active = True
    DatabaseName = 'RENSGN'
    IndexName = 'matr'
    MasterFields = 'MATRICULE'
    MasterSource = DataSource1
    TableName = 'FRCI.DB'
    Left = 288
    Top = 464
    object Table2MATRICULE: TFloatField
      FieldName = 'MATRICULE'
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
    end
    object Table2LIEU_DE_NAISSANCE: TStringField
      FieldName = 'LIEU_DE_NAISSANCE'
      Size = 60
    end
    object Table2DATE_RENTRE_A_LA_GN: TDateField
      FieldName = 'DATE_RENTRE_A_LA_GN'
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
    end
    object Table2AFFECTATION: TStringField
      FieldName = 'AFFECTATION'
      Size = 40
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 64
    Top = 472
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 328
    Top = 464
  end
end
