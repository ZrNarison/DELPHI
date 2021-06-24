object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Client'
  ClientHeight = 482
  ClientWidth = 937
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
    Left = 16
    Top = 24
    Width = 51
    Height = 13
    Caption = 'Recherche'
  end
  object DBGrid1: TDBGrid
    Left = 7
    Top = 73
    Width = 923
    Height = 202
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit1: TEdit
    Left = 7
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object DataSource1: TDataSource
    Left = 136
    Top = 417
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\DOCUMENTS\DELPHI' +
      '2010\MANITEA\COMMERCE.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 104
    Top = 352
  end
  object ADOTable1: TADOTable
    Left = 216
    Top = 368
  end
end
