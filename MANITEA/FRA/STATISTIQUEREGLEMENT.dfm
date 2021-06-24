object Form9: TForm9
  Left = 0
  Top = 0
  Caption = 'STATISTIQUE DU REGLEMENT'
  ClientHeight = 578
  ClientWidth = 720
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 120
  TextHeight = 16
  object PageControl1: TPageControl
    Left = 8
    Top = 16
    Width = 704
    Height = 545
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'REGLEMENT DES ACHATS'
      object DBChart1: TDBChart
        Left = 32
        Top = 104
        Width = 400
        Height = 250
        Title.Text.Strings = (
          'TDBChart')
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'REGLEMENT DES VENTES'
      ImageIndex = 1
      object DBChart2: TDBChart
        Left = 32
        Top = 104
        Width = 400
        Height = 250
        Title.Text.Strings = (
          'TDBChart')
        TabOrder = 0
      end
    end
  end
  object Query1: TQuery
    Active = True
    DatabaseName = 'COMMERCE'
    SQL.Strings = (
      
        'select reglement_achat, count(reglement_achat)as nombre from fac' +
        'ture_achat'
      'group by reglement_achat')
    Left = 16
    Top = 472
  end
  object Query2: TQuery
    Active = True
    DatabaseName = 'COMMERCE'
    SQL.Strings = (
      
        'select regelement_V, count(regelement_V)as nombre from facture_V' +
        'ente'
      'group by regelement_V')
    Left = 136
    Top = 472
  end
end
