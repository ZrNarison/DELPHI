object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  ClientHeight = 684
  ClientWidth = 781
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 781
    Height = 684
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Ajout'
      ExplicitLeft = 8
      ExplicitTop = 28
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 681
        Height = 653
        Color = clGradientActiveCaption
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
          Left = 48
          Top = 40
          Width = 12
          Height = 13
          Caption = 'N'#176
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 48
          Top = 80
          Width = 30
          Height = 13
          Caption = 'valeur'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 48
          Top = 128
          Width = 28
          Height = 13
          Caption = 'debut'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 48
          Top = 184
          Width = 12
          Height = 13
          Caption = 'fin'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 48
          Top = 240
          Width = 18
          Height = 13
          Caption = 'Prix'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 48
          Top = 288
          Width = 30
          Height = 13
          Caption = 'Valeur'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 48
          Top = 336
          Width = 56
          Height = 13
          Caption = 'D'#233'signation'
          FocusControl = DBEdit7
        end
        object DBEdit1: TDBEdit
          Left = 48
          Top = 56
          Width = 134
          Height = 21
          DataField = 'N'#176
          DataSource = DataSource1
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 48
          Top = 96
          Width = 134
          Height = 21
          DataField = 'valeur'
          DataSource = DataSource1
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 48
          Top = 144
          Width = 134
          Height = 21
          DataField = 'debut'
          DataSource = DataSource1
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 48
          Top = 200
          Width = 134
          Height = 21
          DataField = 'fin'
          DataSource = DataSource1
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 48
          Top = 256
          Width = 134
          Height = 21
          DataField = 'prix'
          DataSource = DataSource1
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 48
          Top = 304
          Width = 134
          Height = 21
          DataField = 'valeur'
          DataSource = DataSource1
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 48
          Top = 352
          Width = 617
          Height = 289
          DataField = 'designation'
          DataSource = DataSource1
          TabOrder = 6
        end
      end
      object BitBtn1: TBitBtn
        Left = 687
        Top = 28
        Width = 75
        Height = 25
        Caption = 'VALIDER'
        TabOrder = 1
      end
      object BitBtn2: TBitBtn
        Left = 687
        Top = 254
        Width = 75
        Height = 25
        Caption = 'ANNULER'
        TabOrder = 2
      end
      object BitBtn3: TBitBtn
        Left = 687
        Top = 462
        Width = 75
        Height = 25
        Caption = 'FERMER'
        TabOrder = 3
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Liste'
      ImageIndex = 1
    end
  end
  object FDMemTable1: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'N'#176
        DataType = ftInteger
      end
      item
        Name = 'designation'
        DataType = ftSmallint
      end
      item
        Name = 'valeur'
        DataType = ftFloat
      end
      item
        Name = 'validation'
        DataType = ftBoolean
      end
      item
        Name = 'debut'
        DataType = ftDate
      end
      item
        Name = 'fin'
        DataType = ftDate
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    AutoCommitUpdates = False
    StoreDefs = True
    Left = 528
    Top = 192
    object FDMemTable1N: TIntegerField
      FieldName = 'N'#176
    end
    object FDMemTable1designation: TSmallintField
      FieldName = 'designation'
    end
    object FDMemTable1valeur: TFloatField
      FieldName = 'valeur'
    end
    object FDMemTable1validation: TBooleanField
      FieldName = 'validation'
    end
    object FDMemTable1debut: TDateField
      FieldName = 'debut'
    end
    object FDMemTable1fin: TDateField
      FieldName = 'fin'
    end
    object FDMemTable1prix: TFloatField
      FieldKind = fkCalculated
      FieldName = 'prix'
      Calculated = True
    end
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 376
    Top = 344
  end
  object MainMenu1: TMainMenu
    Left = 732
    Top = 592
    object Fichier1: TMenuItem
      Caption = '&Fichier'
      object Nouveau1: TMenuItem
        Caption = '&Nouveau'
      end
      object Quitter1: TMenuItem
        Caption = '&Quitter'
      end
    end
    object Editer1: TMenuItem
      Caption = '&Editer'
      object Visualisation1: TMenuItem
        Caption = '&Visualisation'
      end
    end
  end
end
