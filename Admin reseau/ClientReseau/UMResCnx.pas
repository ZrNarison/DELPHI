unit UMResCnx;

interface

Uses
 Registry,classes;

Const
  SessionNoFind = Integer(0); 

Type
  // Base de registre Connexion réseau
  TMResCnxReg = Class(TRegistry)
  private
    function GetAddr(pSession:String): String;
    function GetPort(pSession:String): String;
    function GetProto(pSession:String): String;
    procedure SetAddr(pSession:String; const Value: String);
    procedure SetPort(pSession:String; const Value: String);
    procedure SetProto(pSession:String; const Value: String);
    Function NbNextSession():Integer;
    function GetNum(pSession: String): Integer;
    procedure SetNum(pSession: String; const Value: Integer);
    function GetPwd(pSession: String): String;
    function GetUser(pSession: String): String;
    procedure SetPwd(pSession: String; const Value: String);
    procedure SetUser(pSession: String; const Value: String);
  Public
    Constructor create();
    function OpenKeyReadOnly(const Key: String): Boolean;overload;virtual;
    function OpenKeyReadOnly(const Key,Session: String): Boolean;overload;
    function OpenKey(const Key:String):Boolean;virtual;
    // Donne la liste des sessions
    Procedure ListSession(pList:TStrings);
    // Création d'une session
    Procedure CreateSession(const Value: String);
    // Existance d'un numéro de session
    Function ExistNumSession(pNumSession: Integer):Boolean;
    // Propriètés
    Property Addr[pSession:String] :String  read GetAddr  write SetAddr;
    Property Proto[pSession:String]:String  read GetProto write SetProto;
    Property Port[pSession:String] :String  read GetPort  write SetPort;
    Property Num[pSession:String]  :Integer read GetNum   write SetNum;
    Property User[pSession:String] :String  read GetUser  write SetUser;
    Property Pwd[pSession:String]  :String  read GetPwd   write SetPwd;
  End;

implementation

Uses
 windows,SysUtils,UTCryptage;

Const
  Sect_ResCnx = String('Vaughan\ResCnx\');
  Key_Addr    = String('Addr');
  Key_Proto   = String('Proto');
  Key_Port    = String('Port');
  Key_User    = String('User');
  Key_Pwd     = String('Pwd');
  // Clef de cryptage
  Keycrypt    = String('KeycryptOfCnxServer');

{ TMResCnxReg }


Constructor TMResCnxReg.create;
begin
  inherited;
  RootKey := HKEY_CURRENT_USER;
end;


procedure TMResCnxReg.CreateSession(const Value: String);
begin
  // Création de la session
  OpenKey('');
  WriteString(IntToStr(NbNextSession),Value);
  CloseKey;
end;

function TMResCnxReg.ExistNumSession(pNumSession: Integer): Boolean;
begin
  OpenKeyReadOnly('');
  Result := (ReadString(IntToStr(pNumSession))<>EmptyStr);
  CloseKey;
end;

function TMResCnxReg.GetAddr(pSession:String): String;
begin
  OpenKeyReadOnly(pSession);
  Result := ReadString(Key_Addr);
  CloseKey;
end;

function TMResCnxReg.GetNum(pSession: String): Integer;
Var
  vCpt : Integer;
  vVal : String;
begin
  // Initialisation
  Result := 0;
  vVal   := EmptyStr;
  vCpt   := 0;
  OpenKeyReadOnly('');

  Repeat
    inc(vCpt);
    vVal := ReadString(IntToStr(vCpt));
    If vVal = pSession Then
      Result := vCpt;
  Until (vVal=EmptyStr) Or (vVal=pSession);

  CloseKey;         
end;

function TMResCnxReg.GetPort(pSession:String): String;
begin
  OpenKeyReadOnly(pSession);
  Result := ReadString(Key_Port);
  CloseKey;
end;

function TMResCnxReg.GetProto(pSession:String): String;
begin
  OpenKeyReadOnly(pSession);
  Result := ReadString(Key_Proto);
  CloseKey;
end;

function TMResCnxReg.GetPwd(pSession: String): String;
Var
  vCrypt : TEncryption;
begin
  // Initialisation
  OpenKeyReadOnly(pSession);
  vCrypt := TEncryption.Create(Keycrypt);
  Try
    Result := vCrypt.DecryptString(ReadString(Key_Pwd));
  Finally
    vCrypt.Free;
    CloseKey;
  End;
end;

function TMResCnxReg.GetUser(pSession: String): String;
begin
  OpenKeyReadOnly(pSession);
  Result := ReadString(Key_User);
  CloseKey;
end;

Procedure TMResCnxReg.ListSession(pList: TStrings);
Var
  vCpt : Integer;
begin
  // Initialisation
  vCpt := 1;
  OpenKeyReadOnly('');

  While ReadString(IntToStr(vCpt)) <> EmptyStr Do
  Begin
    pList.Add(ReadString(IntToStr(vCpt)));
    inc(vCpt);
  End;
  CloseKey;
end;

function TMResCnxReg.NbNextSession: Integer;
Var
  vCpt : Integer;
begin
  // Initialisation
  vCpt := 1;
  // Lancement de la recherche
  OpenKeyReadOnly('');

  While ReadString(IntToStr(vCpt)) <> EmptyStr Do
    inc(vCpt);
  // Retour
  Result := vCpt;
end;

function TMResCnxReg.OpenKey(const Key: String): Boolean;
begin
  Result := inherited OpenKey(Sect_ResCnx+Key,True);
end;

function TMResCnxReg.OpenKeyReadOnly(const Key, Session: String): Boolean;
begin
  Result := inherited OpenKeyReadOnly(Sect_ResCnx+Session+'\'+Key);
end;

function TMResCnxReg.OpenKeyReadOnly(const Key: String): Boolean;
begin
  Result := inherited OpenKeyReadOnly(Sect_ResCnx+Key)
end;

procedure TMResCnxReg.SetAddr(pSession:String; const Value: String);
begin
  OpenKey(pSession);
  WriteString(Key_Addr,Value);
  CloseKey;
end;

procedure TMResCnxReg.SetNum(pSession: String; const Value: Integer);
Var
  vCpt : Integer;
begin
  OpenKey('');
  Try
    // Recherche du numéro de session
    vCpt := 1;
    While ReadString(IntToStr(vCpt))<>pSession Do
      inc(vcpt);
    // Suppression de l'ancien
    DeleteValue(IntToStr(vCpt));
    // Création du nouveau
    WriteString(IntToStr(Value),pSession);
  Finally
    CloseKey;
  End;
end;

procedure TMResCnxReg.SetPort(pSession:String; const Value: String);
begin
  OpenKey(pSession);
  WriteString(Key_Port,Value);
  CloseKey;
end;

procedure TMResCnxReg.SetProto(pSession:String; const Value: String);
begin
  OpenKey(pSession);
  WriteString(Key_Proto,Value);
  CloseKey;
end;

procedure TMResCnxReg.SetPwd(pSession: String; const Value: String);
Var
  vCrypt : TEncryption;
begin
  // Initialisation
  OpenKey(pSession);
  vCrypt := TEncryption.Create(Keycrypt);
  Try
    WriteString(Key_Pwd,vCrypt.CryptString(Value));
  Finally
    vCrypt.Free;
    CloseKey;
  End;
end;

procedure TMResCnxReg.SetUser(pSession: String; const Value: String);
begin
  OpenKey(pSession);
  WriteString(Key_User,Value);
  CloseKey;
end;

end.
