object Form11: TForm11
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  ClientHeight = 522
  ClientWidth = 570
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 570
    Height = 522
    Align = alClient
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 19
      Width = 45
      Height = 13
      Caption = 'Trimestre'
    end
    object Label2: TLabel
      Left = 16
      Top = 116
      Width = 87
      Height = 13
      Caption = 'Debut trimestrielle'
    end
    object Label3: TLabel
      Left = 16
      Top = 230
      Width = 72
      Height = 13
      Caption = 'Fin trimestrielle'
    end
    object Label14: TLabel
      Left = 261
      Top = 397
      Width = 58
      Height = 13
      Caption = 'Graphique'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clOlive
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 156
      Top = 496
      Width = 46
      Height = 13
      Caption = 'Detail >>'
      OnClick = Label4Click
    end
    object DBGrid1: TDBGrid
      Left = 208
      Top = 0
      Width = 361
      Height = 521
      DataSource = DataModule2.DataSource15
      ReadOnly = True
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Trimestre'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dur'#233'e '
          Width = 75
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 81
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
      OnChange = Edit1Change
    end
    object DateTimePicker1: TDateTimePicker
      Left = 109
      Top = 108
      Width = 97
      Height = 21
      Date = 44144.000000000000000000
      Time = 44144.000000000000000000
      TabOrder = 1
    end
    object DateTimePicker2: TDateTimePicker
      Left = 109
      Top = 222
      Width = 97
      Height = 21
      Date = 44144.000000000000000000
      Time = 44144.000000000000000000
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 5
      Top = 385
      Width = 83
      Height = 25
      Caption = '&ENREGISTRER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 113
      Top = 385
      Width = 89
      Height = 25
      Caption = '&MODIFIER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 113
      Top = 433
      Width = 75
      Height = 25
      Caption = 'S&UPPRIMER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 13
      Top = 433
      Width = 75
      Height = 25
      Caption = 'A&NNULER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn4Click
    end
  end
end
