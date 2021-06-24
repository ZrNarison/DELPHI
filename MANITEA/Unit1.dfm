object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Fiche_Menu'
  ClientHeight = 222
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 17
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 426
    Height = 29
    Caption = 'ToolBar1'
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 8
    object Fichier1: TMenuItem
      Caption = '&Fichier'
      object Produit1: TMenuItem
        Caption = 'Produit'
        OnClick = Produit1Click
      end
      object Fournisseur1: TMenuItem
        Caption = 'Fournisseur'
        OnClick = Fournisseur1Click
      end
      object Client1: TMenuItem
        Caption = 'Client'
        OnClick = Client1Click
      end
      object Quitter1: TMenuItem
        Caption = 'Quitter'
        OnClick = Quitter1Click
      end
    end
    object Edition1: TMenuItem
      Caption = '&Edition'
      object ACHAT1: TMenuItem
        Caption = 'AC&HAT'
        OnClick = ACHAT1Click
      end
      object VENTE2: TMenuItem
        Caption = 'VE&NTE'
        OnClick = VENTE2Click
      end
      object Factureachat1: TMenuItem
        Caption = 'Facture achat'
        OnClick = Factureachat1Click
      end
      object Facturevente1: TMenuItem
        Caption = 'Facture vente'
        OnClick = Facturevente1Click
      end
    end
    object Consultation1: TMenuItem
      Caption = '&Consultation'
      object Achats1: TMenuItem
        Caption = 'Achats'
        OnClick = Achats1Click
      end
      object Vente1: TMenuItem
        Caption = 'Vente'
        OnClick = Vente1Click
      end
    end
    object Etats1: TMenuItem
      Caption = '&Statistique'
      object Rglements1: TMenuItem
        Caption = 'R'#233'glements'
        OnClick = Rglements1Click
      end
    end
    object Statistique1: TMenuItem
      Caption = '&Outils'
      object invetaire1: TMenuItem
        Caption = 'Inventaire'
      end
      object Archivages1: TMenuItem
        Caption = 'Archivages'
      end
      object Protection1: TMenuItem
        Caption = 'Protection'
        OnClick = Protection1Click
      end
      object Cloture1: TMenuItem
        Caption = 'Cloture'
      end
    end
    object N1: TMenuItem
      Caption = '?'
      object APropos1: TMenuItem
        Caption = '&A Propos'
      end
    end
  end
end
