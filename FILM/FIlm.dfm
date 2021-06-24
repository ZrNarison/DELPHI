object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 565
  ClientWidth = 775
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
    Width = 775
    Height = 565
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 176
    ExplicitTop = 104
    object TabSheet1: TTabSheet
      Caption = 'FILM'
      ExplicitWidth = 281
      ExplicitHeight = 165
      object Label1: TLabel
        Left = 591
        Top = 277
        Width = 26
        Height = 13
        Caption = 'DATE'
      end
      object Label2: TLabel
        Left = 591
        Top = 400
        Width = 54
        Height = 13
        Caption = 'CONTENUE'
        FocusControl = DBEdit1
      end
      object Label3: TLabel
        Left = 591
        Top = 5
        Width = 77
        Height = 13
        Caption = 'TITRE SUR WEB'
      end
      object PathImage: TLabel
        Left = 591
        Top = 170
        Width = 173
        Height = 13
      end
      object PathVideo: TLabel
        Left = 591
        Top = 239
        Width = 173
        Height = 13
      end
      object Label4: TLabel
        Left = 591
        Top = 341
        Width = 33
        Height = 13
        Caption = 'GENRE'
      end
      object Image1: TImage
        Left = 696
        Top = 110
        Width = 68
        Height = 60
        Stretch = True
      end
      object SpeedButton3: TSpeedButton
        Left = 675
        Top = 472
        Width = 84
        Height = 22
        Caption = 'ANNULER'
      end
      object SpeedButton4: TSpeedButton
        Left = 591
        Top = 472
        Width = 72
        Height = 22
        Caption = 'ENREGISTRER'
        OnClick = SpeedButton4Click
      end
      object Label5: TLabel
        Left = 591
        Top = 69
        Width = 92
        Height = 13
        Caption = 'TITRE SUR LE FILM'
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 0
        Width = 582
        Height = 537
        DataSource = DataSource1
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'N'#176
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TITRE'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'POSTEUR'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATE'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GENRE'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTENUE'
            Width = 90
            Visible = True
          end>
      end
      object Edit1: TEdit
        Left = 591
        Top = 24
        Width = 173
        Height = 21
        TabOrder = 0
      end
      object Panel1: TPanel
        Left = 591
        Top = 144
        Width = 76
        Height = 17
        Caption = 'Image'
        TabOrder = 2
        OnClick = Panel1Click
      end
      object Panel2: TPanel
        Left = 591
        Top = 216
        Width = 76
        Height = 17
        Caption = 'Fichier'
        TabOrder = 3
        OnClick = Panel2Click
      end
      object DateTimePicker1: TDateTimePicker
        Left = 591
        Top = 296
        Width = 113
        Height = 21
        Date = 44150.000000000000000000
        Time = 44150.000000000000000000
        TabOrder = 4
      end
      object ComboBox1: TComboBox
        Left = 591
        Top = 360
        Width = 132
        Height = 21
        TabOrder = 5
        Items.Strings = (
          'film'
          's'#233'rie')
      end
      object DBEdit1: TDBEdit
        Left = 591
        Top = 419
        Width = 66
        Height = 21
        DataField = 'CONTENUE'
        DataSource = DataSource1
        TabOrder = 6
      end
      object Edit2: TEdit
        Left = 591
        Top = 88
        Width = 173
        Height = 21
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'CLIENT'
      ImageIndex = 1
      ExplicitWidth = 285
      ExplicitHeight = 169
    end
    object TabSheet3: TTabSheet
      Caption = 'FILM'
      ImageIndex = 2
    end
    object TabSheet4: TTabSheet
      Caption = 'CLIENT'
      ImageIndex = 3
    end
  end
  object FDMemTable1: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    AutoCommitUpdates = False
    StoreDefs = True
    Left = 444
    Top = 448
    object FDMemTable1N: TAutoIncField
      FieldName = 'N'#176
    end
    object FDMemTable1TITRE: TStringField
      FieldName = 'TITRE'
      Size = 200
    end
    object FDMemTable1POSTEUR: TStringField
      FieldName = 'POSTEUR'
      Size = 70
    end
    object FDMemTable1DATE: TDateField
      FieldName = 'DATE'
      EditMask = '!99/99/0000;1;_'
    end
    object FDMemTable1GENRE: TStringField
      FieldName = 'GENRE'
      Size = 50
    end
    object FDMemTable1CONTENUE: TStringField
      FieldName = 'CONTENUE'
      EditMask = '00;1;_'
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 532
    Top = 336
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'Tous (*.avi;*.3gp;*.mpg;*.mp4;*.vob;*.flv;*.kmv;*.ts;*)|*.avi;*.' +
      'dat;*|Video Mobile  (*.3gp)|*.mp4|Video Inacod'#233' (*.flv)|*.flv|Fi' +
      'chier video  (*.ts)|*.ts|Fichier image JPEG (*.mp4)|*.mp4|Portab' +
      'le Network Graphics (*.png)|*.png|Bitmaps (*.bmp)|*.bmp|Images T' +
      'IFF (*.tif)|*.tif|Images TIFF (*.tiff)|*.tiff|Ic'#244'nes (*.ico)|*.i' +
      'co|M'#233'tafichiers '#233'volu'#233's (*.emf)|*.emf|M'#233'tafichiers (*.wmf)|*.wmf'
    Left = 476
    Top = 216
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 436
    Top = 96
  end
  object MainMenu1: TMainMenu
    Left = 708
    Top = 168
    object Fichier1: TMenuItem
      Caption = '&FICHIER'
      object Nouveau1: TMenuItem
        Caption = '&Nouveau'
        object Film1: TMenuItem
          Caption = 'F&ilm'
          OnClick = Film1Click
        end
        object Clint1: TMenuItem
          Caption = 'Clie&nt'
        end
      end
      object Liste1: TMenuItem
        Caption = '&Liste'
        object Film2: TMenuItem
          Caption = 'Fil&m'
        end
        object Client1: TMenuItem
          Caption = 'Clien&t'
        end
      end
      object QUITTER1: TMenuItem
        Caption = '&QUITTER'
      end
    end
    object Editer1: TMenuItem
      Caption = '&EDITER'
    end
    object N1: TMenuItem
      Caption = '&?'
    end
  end
  object IBDatabase1: TIBDatabase
    DatabaseName = 'FILM'
    Params.Strings = (
      'CREATE DATABASE FILM')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 188
    Top = 296
  end
end
