﻿object DataModule2: TDataModule2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 544
  Width = 815
  object ADOCommand1: TADOCommand
    Parameters = <>
    Left = 120
    Top = 8
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Etablissement'
    Left = 40
    Top = 80
  end
  object ADOTable2: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Classee'
    Left = 128
    Top = 80
    object ADOTable2Classe: TWideStringField
      FieldName = 'Classe'
      Size = 50
    end
    object ADOTable2Tutilaire: TWideStringField
      FieldName = 'Tutilaire'
      Size = 50
    end
    object ADOTable2Ecolage: TWideStringField
      FieldName = 'Ecolage'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 40
    Top = 144
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 136
    Top = 144
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Classee.Classe, Classee.Tutilaire, Ecolage.Montant AS Eco' +
        'lage'
      'FROM Classee, Ecolage'
      'GROUP BY Classee.Classe, Classee.Tutilaire, Ecolage.Montant;')
    Left = 208
    Top = 88
    object ADOQuery1Classe: TWideStringField
      FieldName = 'Classe'
      Size = 50
    end
    object ADOQuery1Tutilaire: TWideStringField
      FieldName = 'Tutilaire'
      Size = 50
    end
    object ADOQuery1Ecolage: TIntegerField
      FieldName = 'Ecolage'
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery1
    Left = 208
    Top = 144
  end
  object ADOTable3: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Matiere'
    Left = 40
    Top = 216
    object ADOTable3Code: TWideStringField
      FieldName = 'Code'
      Size = 3
    end
    object ADOTable3Matiere: TWideStringField
      FieldName = 'Matiere'
      Size = 15
    end
    object ADOTable3Classe: TWideStringField
      FieldName = 'Classe'
      Size = 50
    end
    object ADOTable3Serie: TWideStringField
      FieldName = 'Serie'
      Size = 50
    end
    object ADOTable3Coefficient: TIntegerField
      FieldName = 'Coefficient'
    end
  end
  object DataSource4: TDataSource
    DataSet = ADOTable3
    Left = 40
    Top = 280
  end
  object ADOTable4: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Professeur'
    Left = 128
    Top = 216
    object ADOTable4Appellation: TWideStringField
      FieldName = 'Appellation'
      Size = 50
    end
    object ADOTable4Nom: TWideStringField
      FieldName = 'Nom'
      Size = 50
    end
    object ADOTable4Prenom: TWideStringField
      FieldName = 'Prenom'
      Size = 25
    end
    object ADOTable4Date_naissance: TDateTimeField
      FieldName = 'Date_naissance'
    end
    object ADOTable4Lieu_naissance: TWideStringField
      FieldName = 'Lieu_naissance'
      Size = 50
    end
    object ADOTable4Adress: TWideStringField
      FieldName = 'Adress'
      Size = 50
    end
    object ADOTable4NCIN: TWideStringField
      FieldName = 'N'#176'CIN'
      Size = 50
    end
    object ADOTable4Diplome: TWideStringField
      FieldName = 'Diplome'
    end
    object ADOTable4Matiere: TWideStringField
      FieldName = 'Matiere'
      Size = 50
    end
    object ADOTable4Contact: TWideStringField
      FieldName = 'Contact'
      Size = 50
    end
    object ADOTable4D_Classe: TWideStringField
      FieldName = 'D_Classe'
      Size = 50
    end
    object ADOTable4F_Classe: TWideStringField
      FieldName = 'F_Classe'
      Size = 50
    end
    object ADOTable4Salaire: TFloatField
      FieldName = 'Salaire'
    end
  end
  object DataSource5: TDataSource
    DataSet = ADOTable4
    Left = 128
    Top = 280
  end
  object DataSource6: TDataSource
    DataSet = ADOTable5
    Left = 280
    Top = 144
  end
  object ADOTable5: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Classee'
    Left = 280
    Top = 80
    object WideStringField1: TWideStringField
      FieldName = 'Classe'
      Size = 50
    end
    object WideStringField2: TWideStringField
      FieldName = 'Tutilaire'
      Size = 50
    end
    object WideStringField3: TWideStringField
      FieldName = 'Ecolage'
      Size = 50
    end
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Count(Professeur.D_Classe) AS nb , Diplome'
      'FROM Professeur'
      'GROUP BY Professeur.D_Classe,Professeur.Diplome;')
    Left = 40
    Top = 336
    object ADOQuery2nb: TIntegerField
      FieldName = 'nb'
    end
    object ADOQuery2Diplome: TWideStringField
      FieldName = 'Diplome'
    end
  end
  object DataSource7: TDataSource
    DataSet = ADOQuery1
    Left = 32
    Top = 392
  end
  object ADOTable6: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'Classe'
    MasterFields = 'Classe'
    MasterSource = DataSource20
    TableName = 'Etudiant'
    Left = 200
    Top = 216
    object ADOTable6NMatricule: TAutoIncField
      FieldName = 'N'#176'Matricule'
      ReadOnly = True
    end
    object ADOTable6Nom: TWideStringField
      FieldName = 'Nom'
      Size = 50
    end
    object ADOTable6Date_naissance: TDateTimeField
      FieldName = 'Date_naissance'
    end
    object ADOTable6Lieu_naissance: TWideStringField
      FieldName = 'Lieu_naissance'
      Size = 255
    end
    object ADOTable6Fille_Fils: TWideStringField
      FieldName = 'Fille_Fils'
      Size = 255
    end
    object ADOTable6Adresse: TWideStringField
      FieldName = 'Adresse'
      Size = 25
    end
    object ADOTable6Classe: TWideStringField
      FieldName = 'Classe'
      Size = 50
    end
    object ADOTable6Contact: TWideStringField
      FieldName = 'Contact'
      Size = 50
    end
    object ADOTable6Sexe: TWideStringField
      FieldName = 'Sexe'
      Size = 50
    end
  end
  object DataSource8: TDataSource
    DataSet = ADOTable6
    Left = 200
    Top = 280
  end
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 16
  end
  object ADOQuery3: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 112
    Top = 336
  end
  object DataSource9: TDataSource
    DataSet = ADOQuery3
    Left = 112
    Top = 392
  end
  object ADOQuery4: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Count(Etablissement.N'#176') AS ecole'
      'FROM Etablissement;')
    Left = 200
    Top = 344
    object ADOQuery4ecole: TIntegerField
      FieldName = 'ecole'
    end
  end
  object DataSource10: TDataSource
    DataSet = ADOQuery4
    Left = 200
    Top = 398
  end
  object DataSource11: TDataSource
    DataSet = ADOQuery5
    Left = 416
    Top = 56
  end
  object ADOTable7: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'Ecolage_mois'
    MasterFields = 'Ecolage_mois'
    MasterSource = DataSource24
    TableName = 'Ecolage'
    Left = 288
    Top = 216
  end
  object ecolage: TDataSource
    DataSet = ADOTable7
    Left = 288
    Top = 280
  end
  object ADOQuery6: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Etudiant.Classe'
      'FROM Etudiant'
      'GROUP BY Etudiant.Classe;')
    Left = 288
    Top = 344
    object ADOQuery6Classe: TWideStringField
      FieldName = 'Classe'
      Size = 50
    end
  end
  object reqecolage: TDataSource
    DataSet = ADOQuery6
    Left = 288
    Top = 400
  end
  object DataSource12: TDataSource
    DataSet = ADOTable8
    Left = 352
    Top = 152
  end
  object ADOTable8: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Responsable'
    Left = 352
    Top = 88
    object ADOTable8id_ResF: TWideStringField
      FieldName = 'id_ResF'
      Size = 50
    end
    object ADOTable8CIN: TFloatField
      FieldName = 'CIN'
    end
    object ADOTable8Nom: TWideStringField
      FieldName = 'Nom'
      Size = 60
    end
    object ADOTable8Prenom: TWideStringField
      FieldName = 'Prenom'
      Size = 40
    end
    object ADOTable8Adresse: TWideStringField
      FieldName = 'Adresse'
      Size = 25
    end
    object ADOTable8Telephone: TIntegerField
      FieldName = 'Telephone'
    end
  end
  object DataSource13: TDataSource
    DataSet = ADOTable9
    Left = 352
    Top = 280
  end
  object ADOTable9: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Trimestre'
    Left = 352
    Top = 216
    object ADOTable9Trimestre: TWideStringField
      FieldName = 'Trimestre'
      Size = 50
    end
    object ADOTable9Debut: TDateTimeField
      FieldName = 'Debut'
    end
    object ADOTable9Fin: TDateTimeField
      FieldName = 'Fin'
    end
  end
  object DataSource14: TDataSource
    DataSet = ADOTable10
    Left = 360
    Top = 392
  end
  object ADOTable10: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Resultat'
    Left = 352
    Top = 328
    object ADOTable10N: TAutoIncField
      FieldName = 'N'#176
      ReadOnly = True
    end
    object ADOTable10Matiere: TWideStringField
      FieldName = 'Matiere'
      Size = 50
    end
    object ADOTable10Trimestre: TWideStringField
      FieldName = 'Trimestre'
      Size = 50
    end
    object ADOTable10Devoir: TIntegerField
      FieldName = 'Devoir'
    end
    object ADOTable10Examen: TIntegerField
      FieldName = 'Examen'
    end
    object ADOTable10Observation: TWideStringField
      FieldName = 'Observation'
      Size = 15
    end
    object ADOTable10NMatricule: TIntegerField
      FieldName = 'N'#176'Matricule'
    end
  end
  object ADOQuery7: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Trimestre.Trimestre, Sum(DateDiff("m",[Debut],[Fin]))&" m' +
        'ois" AS [Dur'#233'e ]'
      'FROM Trimestre'
      'GROUP BY Trimestre.Trimestre;')
    Left = 432
    Top = 328
    object ADOQuery7Trimestre: TWideStringField
      FieldName = 'Trimestre'
      Size = 50
    end
    object ADOQuery7Durée: TWideStringField
      FieldName = 'Dur'#233'e '
      ReadOnly = True
      Size = 255
    end
  end
  object DataSource15: TDataSource
    DataSet = ADOQuery7
    Left = 432
    Top = 392
  end
  object ADOQuery8: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Trimestre.Trimestre, Sum(DateDiff("m",[Debut],[Fin])) AS ' +
        'ATO'
      'FROM Trimestre'
      'GROUP BY Trimestre.Trimestre;')
    Left = 416
    Top = 96
    object ADOQuery8Trimestre: TWideStringField
      FieldName = 'Trimestre'
      Size = 50
    end
    object ADOQuery8ATO: TFloatField
      FieldName = 'ATO'
    end
  end
  object ReqTrim: TDataSource
    DataSet = ADOQuery8
    Left = 424
    Top = 160
  end
  object ADOQuery9: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DataSource26
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Ecolage.N'#176'Matricule, Ecolage.Ecolage_mois, Ecolage.Date_p' +
        'ayer, Ecolage.Mode_payement, Ecolage.Responsable'
      'FROM Ecolage, Classee, Trimestre'
      
        'GROUP BY Ecolage.N'#176'Matricule, Ecolage.Ecolage_mois, Ecolage.Date' +
        '_payer, Ecolage.Mode_payement, Ecolage.Responsable'
      'ORDER BY  Ecolage.N'#176'Matricule;')
    Left = 416
    Top = 216
    object ADOQuery9NMatricule: TIntegerField
      FieldName = 'N'#176'Matricule'
    end
    object ADOQuery9Ecolage_mois: TWideStringField
      FieldName = 'Ecolage_mois'
      Size = 255
    end
    object ADOQuery9Date_payer: TDateTimeField
      FieldName = 'Date_payer'
    end
    object ADOQuery9Mode_payement: TWideStringField
      FieldName = 'Mode_payement'
      Size = 50
    end
    object ADOQuery9Responsable: TWideStringField
      FieldName = 'Responsable'
      Size = 50
    end
  end
  object reqecolage1: TDataSource
    DataSet = ADOQuery9
    Left = 424
    Top = 280
  end
  object ADOTable11: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Temps'
    Left = 504
    Top = 104
    object ADOTable11N: TAutoIncField
      FieldName = 'N'#176
      ReadOnly = True
    end
    object ADOTable11Classe: TWideStringField
      FieldName = 'Classe'
      Size = 255
    end
    object ADOTable11Prof: TWideStringField
      FieldName = 'Prof'
      Size = 255
    end
    object ADOTable11Matiere: TWideStringField
      FieldName = 'Matiere'
      Size = 255
    end
    object ADOTable11Jours: TWideStringField
      FieldName = 'Jours'
      Size = 255
    end
    object ADOTable11Duree: TIntegerField
      FieldName = 'Duree'
    end
    object ADOTable11Date: TDateTimeField
      FieldName = 'Date'
    end
  end
  object DataSource16: TDataSource
    DataSet = ADOTable11
    Left = 512
    Top = 168
  end
  object ADOTable12: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'Classe'
    TableName = 'Matiere'
    Left = 504
    Top = 240
    object ADOTable12Code: TWideStringField
      FieldName = 'Code'
      Size = 50
    end
    object ADOTable12Matiere: TWideStringField
      FieldName = 'Matiere'
      Size = 100
    end
    object ADOTable12Classe: TWideStringField
      FieldName = 'Classe'
      Size = 50
    end
    object ADOTable12Serie: TWideStringField
      FieldName = 'Serie'
      Size = 50
    end
    object ADOTable12Coefficient: TIntegerField
      FieldName = 'Coefficient'
    end
  end
  object DataSource17: TDataSource
    DataSet = ADOTable12
    Left = 504
    Top = 304
  end
  object ADOTable13: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Etudiant'
    Left = 592
    Top = 8
    object ADOTable13NMatricule: TAutoIncField
      FieldName = 'N'#176'Matricule'
      ReadOnly = True
    end
    object ADOTable13Nom: TWideStringField
      FieldName = 'Nom'
      Size = 50
    end
    object ADOTable13Date_naissance: TDateTimeField
      FieldName = 'Date_naissance'
    end
    object ADOTable13Lieu_naissance: TWideStringField
      FieldName = 'Lieu_naissance'
      Size = 255
    end
    object ADOTable13Fille_Fils: TWideStringField
      FieldName = 'Fille_Fils'
      Size = 255
    end
    object ADOTable13Adresse: TWideStringField
      FieldName = 'Adresse'
      Size = 25
    end
    object ADOTable13Classe: TWideStringField
      FieldName = 'Classe'
      Size = 50
    end
    object ADOTable13Contact: TWideStringField
      FieldName = 'Contact'
      Size = 50
    end
    object ADOTable13Sexe: TWideStringField
      FieldName = 'Sexe'
      Size = 50
    end
  end
  object DataSource18: TDataSource
    DataSet = ADOTable13
    Left = 592
    Top = 72
  end
  object ADOQuery10: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Classee.Classe'
      'FROM Classee;')
    Left = 504
    Top = 368
    object ADOQuery10Classe: TWideStringField
      FieldName = 'Classe'
      Size = 50
    end
  end
  object DataSource19: TDataSource
    DataSet = ADOQuery10
    Left = 504
    Top = 424
  end
  object ADOQuery5: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Classee.Classe'
      
        'FROM Classee INNER JOIN Etudiant ON Classee.Classe = Etudiant.Cl' +
        'asse'
      'GROUP BY Classee.Classe;')
    Left = 416
    Top = 8
    object ADOQuery5Classe: TWideStringField
      FieldName = 'Classe'
      Size = 50
    end
  end
  object DataSource20: TDataSource
    DataSet = ADOTable14
    Left = 712
    Top = 64
  end
  object ADOTable14: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'Classe'
    MasterFields = 'Classe'
    MasterSource = DataSource11
    TableName = 'Etudiant'
    Left = 720
    Top = 8
    object AutoIncField1: TAutoIncField
      FieldName = 'N'#176'Matricule'
      ReadOnly = True
    end
    object WideStringField4: TWideStringField
      FieldName = 'Nom'
      Size = 50
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'Date_naissance'
    end
    object WideStringField5: TWideStringField
      FieldName = 'Lieu_naissance'
      Size = 255
    end
    object WideStringField6: TWideStringField
      FieldName = 'Fille_Fils'
      Size = 255
    end
    object WideStringField7: TWideStringField
      FieldName = 'Adresse'
      Size = 25
    end
    object WideStringField8: TWideStringField
      FieldName = 'Classe'
      Size = 50
    end
    object WideStringField9: TWideStringField
      FieldName = 'Contact'
      Size = 50
    end
    object WideStringField10: TWideStringField
      FieldName = 'Sexe'
      Size = 50
    end
  end
  object ADOQuery11: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Ecolage.Ecolage_mois'
      'FROM Ecolage'
      'GROUP BY Ecolage.Ecolage_mois;')
    Left = 592
    Top = 368
  end
  object DataSource21: TDataSource
    DataSet = ADOQuery11
    Left = 592
    Top = 424
  end
  object ADOTable15: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Responsable'
    Left = 136
    Top = 456
    object ADOTable15id_ResF: TWideStringField
      FieldName = 'id_ResF'
      Size = 50
    end
    object ADOTable15CIN: TFloatField
      FieldName = 'CIN'
    end
    object ADOTable15Nom: TWideStringField
      FieldName = 'Nom'
      Size = 60
    end
    object ADOTable15Adresse: TWideStringField
      FieldName = 'Adresse'
      Size = 25
    end
    object ADOTable15Telephone: TWideStringField
      FieldName = 'Telephone'
      Size = 255
    end
    object ADOTable15Mot_de_passe: TWideStringField
      FieldName = 'Mot_de_passe'
      Size = 255
    end
    object ADOTable15photo: TBlobField
      FieldName = 'photo'
    end
  end
  object DataSource22: TDataSource
    DataSet = ADOTable15
    Left = 136
    Top = 488
  end
  object ADOQuery12: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT Count([Nom]) AS Nb_etu'
      'FROM Etudiant;')
    Left = 368
    Top = 472
  end
  object DataSource23: TDataSource
    DataSet = ADOQuery12
    Left = 424
    Top = 488
  end
  object DataSource24: TDataSource
    DataSet = ADOQuery13
    Left = 648
    Top = 288
  end
  object ADOQuery13: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Ecolage.Ecolage_mois'
      'FROM Ecolage, Classee'
      'GROUP BY Ecolage.Ecolage_mois;')
    Left = 640
    Top = 232
  end
  object ADOQuery14: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Ecolage.N'#176'Matricule, Ecolage.Responsable, Ecolage.Date_pa' +
        'yer AS [Du], Month([Ecolage]![Ecolage_mois]) AS [Ecolage mois], ' +
        'Ecolage.Montant AS SOMME'
      'FROM Ecolage'
      
        'GROUP BY Ecolage.N'#176'Matricule, Ecolage.Responsable, Ecolage.Date_' +
        'payer, Month([Ecolage]![Ecolage_mois]), Ecolage.Montant;')
    Left = 720
    Top = 232
    object ADOQuery14NMatricule: TIntegerField
      FieldName = 'N'#176'Matricule'
    end
    object ADOQuery14Responsable: TWideStringField
      FieldName = 'Responsable'
      Size = 50
    end
    object ADOQuery14Du: TDateTimeField
      FieldName = 'Du'
    end
    object ADOQuery14Ecolagemois: TSmallintField
      FieldName = 'Ecolage mois'
    end
    object ADOQuery14SOMME: TIntegerField
      FieldName = 'SOMME'
    end
  end
  object DataSource25: TDataSource
    DataSet = ADOQuery14
    Left = 728
    Top = 288
  end
  object ADOQuery15: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Ecolage.Ecolage_mois'
      'FROM Ecolage, Classee'
      'GROUP BY Ecolage.Ecolage_mois;')
    Left = 632
    Top = 136
  end
  object DataSource26: TDataSource
    DataSet = ADOQuery15
    Left = 632
    Top = 184
  end
  object ADOTable16: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'temp'
    Left = 656
    Top = 480
    object ADOTable16Nom: TWideStringField
      FieldName = 'Nom'
      Size = 255
    end
  end
  object DataSource27: TDataSource
    DataSet = ADOTable16
    Left = 728
    Top = 496
  end
  object ADOQuery16: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Responsable.id_ResF AS [USER]'
      'FROM Responsable'
      'GROUP BY Responsable.id_ResF;')
    Left = 688
    Top = 376
    object ADOQuery16USER: TWideStringField
      FieldName = 'USER'
      Size = 50
    end
  end
  object DataSource28: TDataSource
    DataSet = ADOQuery16
    Left = 736
    Top = 448
  end
end
