object Form1: TForm1
  Left = 0
  Top = 0
  Width = 844
  Height = 261
  Align = alCustom
  AlphaBlend = True
  AutoScroll = True
  AutoSize = True
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMode = pmAuto
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 756
    Top = 205
    Width = 56
    Height = 13
    Caption = ' By RMJVI'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object Label9: TLabel
    Left = 576
    Top = 8
    Width = 127
    Height = 13
    Caption = 'Evenement  WINDOWS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 8
    Top = -4
    Width = 441
    Height = 203
    ActivePage = HORLOGE
    TabOrder = 0
    object HORLOGE: TTabSheet
      Caption = 'HORLOGE'
      object Label2: TLabel
        Left = 3
        Top = 80
        Width = 142
        Height = 19
        Caption = 'Arr'#234't syst'#232'me dans:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 3
        Top = 120
        Width = 200
        Height = 19
        Caption = 'R'#233'demarrage syst'#232'me dans:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 3
        Top = 47
        Width = 163
        Height = 23
        Caption = 'Allumage syst'#232'me :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 3
        Top = 3
        Width = 71
        Height = 26
        Caption = 'Label5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 160
        Top = 47
        Width = 63
        Height = 23
        Caption = 'Label8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 96
        Top = 152
        Width = 31
        Height = 13
        Caption = 'Label6'
      end
      object Button1: TButton
        Left = 331
        Top = 145
        Width = 75
        Height = 25
        Caption = 'ANNULER'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Edit3: TEdit
        Left = 224
        Top = 76
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object Edit4: TEdit
        Left = 224
        Top = 118
        Width = 121
        Height = 21
        TabOrder = 2
      end
    end
    object CHRONO: TTabSheet
      Caption = 'CHRONO'
      ImageIndex = 1
      object Label10: TLabel
        Left = 3
        Top = 3
        Width = 71
        Height = 26
        Caption = 'Label5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BitBtn2: TBitBtn
        Left = 248
        Top = 136
        Width = 89
        Height = 25
        Cancel = True
        Caption = 'ANNULER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = BitBtn2Click
      end
      object BitBtn1: TBitBtn
        Left = 83
        Top = 136
        Width = 89
        Height = 25
        Caption = 'VALIDER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtn1Click
      end
      object RadioButton2: TRadioButton
        Left = 3
        Top = 100
        Width = 142
        Height = 17
        Caption = 'R'#233'd'#233'marrage syst'#232'me'
        TabOrder = 4
        OnClick = RadioButton2Click
      end
      object RadioButton1: TRadioButton
        Left = 3
        Top = 56
        Width = 113
        Height = 17
        Caption = 'Arr'#234't syst'#232'me'
        Checked = True
        TabOrder = 5
        TabStop = True
        OnClick = RadioButton1Click
      end
      object DBEdit1: TDBEdit
        Left = 168
        Top = 52
        Width = 132
        Height = 21
        DataField = 'arr'
        DataSource = DataSource3
        MaxLength = 8
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 168
        Top = 96
        Width = 132
        Height = 21
        DataField = 'red'
        DataSource = DataSource3
        MaxLength = 8
        TabOrder = 1
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 451
    Top = 24
    Width = 374
    Height = 175
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Timer1: TTimer
    Interval = 15
    OnTimer = Timer1Timer
    Left = 512
    Top = 136
  end
  object Timer3: TTimer
    OnTimer = Timer3Timer
    Left = 512
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 416
    Top = 56
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 512
    Top = 136
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 336
    Top = 40
  end
  object Timer4: TTimer
    Left = 512
    Top = 136
  end
  object Timer5: TTimer
    Left = 512
    Top = 136
  end
  object Timer6: TTimer
    OnTimer = Timer6Timer
    Left = 512
    Top = 136
  end
  object DataSource2: TDataSource
    Left = 408
    Top = 120
  end
  object FDMemTable1: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    AutoCommitUpdates = False
    Left = 488
    Top = 80
    object FDMemTable1arr: TTimeField
      FieldName = 'arr'
      EditMask = '!90:00:00;1;_'
    end
    object FDMemTable1red: TTimeField
      FieldName = 'red'
      EditMask = '!90:00:00;1;_'
    end
  end
  object DataSource3: TDataSource
    DataSet = FDMemTable1
    Left = 416
    Top = 128
  end
end
