object Form13: TForm13
  Left = 0
  Top = 0
  Caption = 'CALENDRIER SCOLAIRE'
  ClientHeight = 524
  ClientWidth = 572
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 572
    Height = 524
    Align = alClient
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 0
    object Label4: TLabel
      Left = 16
      Top = 19
      Width = 45
      Height = 13
      Caption = 'Trimestre'
    end
    object Label5: TLabel
      Left = 16
      Top = 116
      Width = 87
      Height = 13
      Caption = 'Debut trimestrielle'
    end
    object Label6: TLabel
      Left = 16
      Top = 230
      Width = 72
      Height = 13
      Caption = 'Fin trimestrielle'
    end
    object Label7: TLabel
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
    object Label1: TLabel
      Left = 156
      Top = 496
      Width = 49
      Height = 13
      Caption = '<< Detail '
      OnClick = Label1Click
    end
    object DBGrid2: TDBGrid
      Left = 212
      Top = 0
      Width = 361
      Height = 521
      DataSource = DataModule2.DataSource13
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
          ReadOnly = True
          Width = 194
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Debut'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fin'
          Width = 65
          Visible = True
        end>
    end
    object Edit2: TEdit
      Left = 81
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object DateTimePicker3: TDateTimePicker
      Left = 109
      Top = 108
      Width = 97
      Height = 21
      Date = 44144.000000000000000000
      Time = 44144.000000000000000000
      TabOrder = 1
    end
    object DateTimePicker4: TDateTimePicker
      Left = 109
      Top = 222
      Width = 97
      Height = 21
      Date = 44144.000000000000000000
      Time = 44144.000000000000000000
      TabOrder = 2
    end
    object BitBtn5: TBitBtn
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
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
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
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      Left = 109
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
      OnClick = BitBtn7Click
    end
    object BitBtn8: TBitBtn
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
      OnClick = BitBtn8Click
    end
  end
end
