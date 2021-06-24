object DataModule7: TDataModule7
  OldCreateOrder = False
  Height = 334
  Width = 461
  object Database1: TDatabase
    Connected = True
    DatabaseName = 'table'
    DriverName = 'STANDARD'
    SessionName = 'Default'
    Left = 40
    Top = 40
  end
  object DataSource1: TDataSource
    Left = 32
    Top = 112
  end
  object ADOCommand1: TADOCommand
    Parameters = <>
    Left = 136
    Top = 120
  end
  object Query1: TQuery
    DatabaseName = 'FACT'
    SQL.Strings = (
      'create database FACT;'
      'start database FACT;'
      
        'create dataTable TABLEe(TI CHAR(50),GRADE CHAR(50),NOM CHAR(50),' +
        'PRENOM CHAR(50),D NAISSANCE CHAR(20),L NAISSANCE CHAR(40),D RENT' +
        'REE A LA GN CHAR(20),MATRICULE CHAR(10),FONCTION CHAR(50),D CIVI' +
        'L CHAR(50),D MILITAIRE CHAR(50),RECOMPENSE CHAR(50),NOTES 03 DER' +
        'NIERS ANNEES CHAR(50),PUNITION DERNIERS ANNEES CHAR(50),SITUATIO' +
        'N DE FAMILLE CHAR(40),FONCTION EPOUSE CHAR(50),DECORATION CHAR(4' +
        '0),OBSERVATION CHAR(60),UNITE CHAR(20),D MUTATION CHAR(20),R DIS' +
        'PONIBILITE CHAR(40),AFFECTATION CHAR(30),UTILISATEUR CHAR(50),MT' +
        'D CHAR(50);')
    Left = 128
    Top = 48
  end
end
