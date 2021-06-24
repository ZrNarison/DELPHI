object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Exemple2'
  ClientHeight = 114
  ClientWidth = 443
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel
    Left = 36
    Top = 24
    Width = 37
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Prix HT:'
  end
  object Label2: TLabel
    Left = 36
    Top = 60
    Width = 23
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'TVA:'
  end
  object Label3: TLabel
    Left = 216
    Top = 36
    Width = 54
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'TOTAL TTC'
  end
  object Edit1: TEdit
    Left = 90
    Top = 18
    Width = 91
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 90
    Top = 54
    Width = 91
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 1
  end
  object Button1: TButton
    Left = 210
    Top = 90
    Width = 56
    Height = 19
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Calcul'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit3: TEdit
    Left = 270
    Top = 30
    Width = 91
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 3
  end
end
