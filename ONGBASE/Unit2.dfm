object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 150
  Width = 215
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=D:\LO' +
      'GICIEL\DOCUMENTS\DELPHI\ONGBASE\ORN BASE.mdb;Mode=ReadWrite;Pers' +
      'ist Security Info=False;Jet OLEDB:System database="";Jet OLEDB:R' +
      'egistry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine ' +
      'Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partia' +
      'l Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New ' +
      'Database Password="";Jet OLEDB:Create System Database=False;Jet ' +
      'OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Comp' +
      'act=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLE' +
      'DB:SFP=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 8
  end
  object ADOCommand1: TADOCommand
    Connection = ADOConnection1
    Parameters = <>
    Left = 128
    Top = 8
  end
  object ADODataSet1: TADODataSet
    Connection = ADOConnection1
    Parameters = <>
    Left = 32
    Top = 80
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = ADOConnection1
    Parameters = <>
    Left = 136
    Top = 80
  end
end
