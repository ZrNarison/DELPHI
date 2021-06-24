object Form1: TForm1
  Left = 211
  Top = 144
  Width = 619
  Height = 606
  Caption = 
    'Click gauche = d'#233'but ; Click Droit = Fin ; Click Millieu = Posit' +
    'ion'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 31
    Height = 13
    Caption = 'Son 1 '
  end
  object Label2: TLabel
    Left = 16
    Top = 264
    Width = 31
    Height = 13
    Caption = 'Son 2 '
  end
  object btLoadSong1: TButton
    Left = 16
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Load'
    TabOrder = 0
    OnClick = btLoadSong1Click
  end
  object btLoadSong2: TButton
    Left = 16
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Load'
    TabOrder = 1
    OnClick = btLoadSong2Click
  end
  object panColBack: TPanel
    Left = 424
    Top = 40
    Width = 185
    Height = 41
    Caption = 'Background Color'
    TabOrder = 2
    OnClick = PanColorClick
  end
  object panColPeak: TPanel
    Left = 424
    Top = 80
    Width = 185
    Height = 41
    Caption = 'Peak Color'
    TabOrder = 3
    OnClick = PanColorClick
  end
  object panColBorder: TPanel
    Left = 424
    Top = 120
    Width = 185
    Height = 41
    Caption = 'Border Color'
    TabOrder = 4
    OnClick = PanColorClick
  end
  object panColLoopS: TPanel
    Left = 424
    Top = 160
    Width = 185
    Height = 41
    Caption = 'Loop Start Color'
    TabOrder = 5
    OnClick = PanColorClick
  end
  object panColLoopE: TPanel
    Left = 424
    Top = 200
    Width = 185
    Height = 41
    Caption = 'Loop End Color'
    TabOrder = 6
    OnClick = PanColorClick
  end
  object panColPos: TPanel
    Left = 424
    Top = 240
    Width = 185
    Height = 41
    Caption = 'Position Color'
    TabOrder = 7
    OnClick = PanColorClick
  end
  object panColText: TPanel
    Left = 424
    Top = 280
    Width = 185
    Height = 41
    Caption = 'Text Color'
    TabOrder = 8
    OnClick = PanColorClick
  end
  object ComboBox1: TComboBox
    Left = 424
    Top = 328
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Text = 'Th'#232'me'
    OnChange = ComboBox1Change
    Items.Strings = (
      'SpectrumThemeDefault'
      'SpectrumThemeSilver'
      'SpectrumThemeGirly'
      'SpectrumThemeArmy'
      'SpectrumThemeLCD')
  end
  object ColorDialog1: TColorDialog
    Left = 256
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Left = 136
    Top = 48
  end
end
