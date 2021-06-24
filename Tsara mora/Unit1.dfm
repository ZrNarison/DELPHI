object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 's'
  ClientHeight = 538
  ClientWidth = 706
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 32
    Width = 61
    Height = 13
    Caption = 'code_entree'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 72
    Top = 72
    Width = 60
    Height = 13
    Caption = 'date_entree'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 72
    Top = 112
    Width = 60
    Height = 13
    Caption = 'nom_produit'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 72
    Top = 152
    Width = 40
    Height = 13
    Caption = 'quantite'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 72
    Top = 192
    Width = 55
    Height = 13
    Caption = 'ref_facture'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 72
    Top = 232
    Width = 54
    Height = 13
    Caption = 'fournisseur'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 72
    Top = 272
    Width = 21
    Height = 13
    Caption = 'frais'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 72
    Top = 312
    Width = 77
    Height = 13
    Caption = 'code_inventaire'
    FocusControl = DBEdit8
  end
  object DBEdit1: TDBEdit
    Left = 72
    Top = 48
    Width = 134
    Height = 21
    DataField = 'code_entree'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 72
    Top = 88
    Width = 238
    Height = 21
    DataField = 'date_entree'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 72
    Top = 128
    Width = 394
    Height = 21
    DataField = 'nom_produit'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 72
    Top = 171
    Width = 134
    Height = 21
    DataField = 'quantite'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 72
    Top = 208
    Width = 134
    Height = 21
    DataField = 'ref_facture'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 72
    Top = 248
    Width = 394
    Height = 21
    DataField = 'fournisseur'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 72
    Top = 288
    Width = 134
    Height = 21
    DataField = 'frais'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 72
    Top = 328
    Width = 134
    Height = 21
    DataField = 'code_inventaire'
    DataSource = DataSource1
    TabOrder = 7
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\DOCUMENTS\DELPHI' +
      '2010\Tsara mora\Commerce.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    AfterConnect = ADOConnection1AfterConnect
    Left = 56
    Top = 472
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Entree'
    Left = 208
    Top = 480
    object ADOTable1code_entree: TAutoIncField
      FieldName = 'code_entree'
      ReadOnly = True
    end
    object ADOTable1date_entree: TDateTimeField
      FieldName = 'date_entree'
    end
    object ADOTable1nom_produit: TWideStringField
      FieldName = 'nom_produit'
      Size = 30
    end
    object ADOTable1quantite: TIntegerField
      FieldName = 'quantite'
    end
    object ADOTable1ref_facture: TWideStringField
      FieldName = 'ref_facture'
      Size = 10
    end
    object ADOTable1fournisseur: TWideStringField
      FieldName = 'fournisseur'
      Size = 30
    end
    object ADOTable1frais: TIntegerField
      FieldName = 'frais'
    end
    object ADOTable1code_inventaire: TIntegerField
      FieldName = 'code_inventaire'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 120
    Top = 472
  end
  object Database1: TDatabase
    DatabaseName = 'Commerce'
    DriverName = 'SYBASE'
    LoginPrompt = False
    SessionName = 'Default'
    OnLogin = Database1Login
    Left = 32
    Top = 416
  end
end
