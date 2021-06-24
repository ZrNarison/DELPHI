object Form9: TForm9
  Left = 0
  Top = 0
  Caption = 'STATISTIQUE DU REGLEMENT'
  ClientHeight = 549
  ClientWidth = 615
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 12
  object PageControl1: TPageControl
    Left = 6
    Top = 12
    Width = 528
    Height = 409
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'REGLEMENT DES ACHATS'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBChart1: TDBChart
        Left = 24
        Top = 78
        Width = 300
        Height = 188
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Title.Text.Strings = (
          'TDBChart')
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'REGLEMENT DES VENTES'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBChart2: TDBChart
        Left = 24
        Top = 78
        Width = 300
        Height = 188
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Title.Text.Strings = (
          'TDBChart')
        TabOrder = 0
      end
    end
  end
end
