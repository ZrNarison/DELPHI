unit UTCryptage;

// Utilisation :
//
// var Encryption : TEncryption;
// Encryption := TEncryption.Create('une clef'); // Initialise l'objet
// ChaineCryptee := Encryption.CryptString('une chaine non-cryptée'); // Crype
// ChaineDecryptee := Encryption.DecryptString('ÆÉ@¼<má¿Ð«|‹ReÙû.Åƒ') // Decrypte

interface

type TEncryption = class(TObject)
  private
    pRandomArray : array [0..255] of byte;
    pRandomArrayIndex : word;
    pKey : string;
    pSequenceEncryption : boolean;
    procedure GenerateRandomArray();
    procedure RotateByte(byteToShift : byte; const numberOfBits : byte; const direction : byte);
    function CheckSum(const s : string) : byte;
  public
    constructor Create(const iKey : string);
    function CryptString(const s : string) : string;
    function DecryptString(const s : string) : string;
    procedure SequenceEncryption(const b : boolean);
  end;

implementation

constructor TEncryption.Create(const iKey : string);
begin
  pKey := iKey;
  self.GenerateRandomArray();
  pSequenceEncryption := FALSE;
  pRandomArrayIndex := 1;
end;

procedure TEncryption.SequenceEncryption(const b : boolean);
begin
  pSequenceEncryption := b;
end;

// Fait un ROR ou un ROL sur un octet
procedure TEncryption.RotateByte(byteToShift : byte; const numberOfBits : byte; const direction : byte);
var i : byte;
begin
  if direction = 1 then begin
    for i := 1 to numberOfBits do begin
      asm
        ROR byteToShift, 1
      end;
    end;
  end else begin
    for i := 1 to numberOfBits do begin
      asm
        ROL byteToShift, 1
      end;
    end;
  end;
end;


// Fait un "checksum" (?) 8 bits de la chaîne
function TEncryption.CheckSum(const s : string) : byte;
var i : integer;
begin
  result := 1;
  for i := 1 to length(s) do begin
    result := result xor byte(ord(s[i]));
  end;
end;

// Créé un tableau d'octets pseudo-aléatoire basé sur la clef
procedure TEncryption.GenerateRandomArray();
var i : byte;
    keyCS : byte;
begin
  if length(pKey) > 0 then
    keyCS := CheckSum(pKey)
  else
    keyCS := 0;

  for i := 0 to 255 do
    pRandomArray[i] := round(sin(i * keyCS) * 255);
end;



// Crypte une chaîne
function TEncryption.CryptString(const s : string) : string;
var i, j : integer;
    dec : byte;
    bKey, bS, bResult : byte;
begin
  result := s;
  if length(pKey) > 0 then begin

    if not pSequenceEncryption then
      pRandomArrayIndex := 1;
      
    j := 1;
    for i := 1 to length(s) do begin
      // Converti les caractères en octets
      bKey := ord(pKey[j]);
      bS := ord(s[i]);
      // XOR sur la longueur de la chaîne
      // Deux chaînes qui commencent de la même façon seront cryptées de façon différente (pour peu qu'elles aient une taille différente)
      bS := bS xor byte(length(s));
      // XOR sur la longueur de la clef
      // Une chaîne décodée avec 'AAAA' puis avec 'AAAAAA' donnera deux résultats différents.
      bS := bS xor byte(length(pKey));
      // XOR sur une valeur aléatoire
      bS := bS xor pRandomArray[pRandomArrayIndex];
      pRandomArrayIndex := pRandomArrayIndex + 1;
      if pRandomArrayIndex > length(pRandomArray) then pRandomArrayIndex := 1;
      // XOR entre la clef et la chaîne
      bResult := bKey xor bS;
      dec := (bKey + length(pKey) + ord(pKey[length(pKey)])) mod 8;
      // ROR sur l'octet
      rotateByte(bResult, dec + 1, 1);
      result[i] := chr(bResult);
      j := j + 1;
      if j > length(pKey) then j := 1;
    end;

    // Deuxième couche en passant seulement la clef à l'envers
    j := length(pKey);
    for i := length(result) downto 1 do begin
      bKey := ord(pKey[j]);
      bS := ord(result[i]);
      bResult := bKey xor bS;
      result[i] := chr(bResult);
      j := j - 1;
      if j = 0 then j := length(pKey);
    end;

  end;

end;

function TEncryption.DecryptString(const s : string) : string;
var i, j : integer;
    dec : byte;
    bKey, bS, bResult : byte;
begin
  result := s;
  if length(pKey) > 0 then begin
    j := length(pKey);

    // Enlève la deuxième couche
    for i := length(result) downto 1 do begin
      bKey := ord(pKey[j]);
      bS := ord(result[i]);
      bResult := bKey xor bS;
      result[i] := chr(bResult);
      j := j - 1;
      if j = 0 then j := length(pKey);
    end;

    if not pSequenceEncryption then
      pRandomArrayIndex := 1;

    j := 1;
    for i := 1 to length(Result) do begin
      bKey := ord(pKey[j]);
      bS := ord(Result[i]);
      dec := (bKey + length(pKey) + ord(pKey[length(pKey)])) mod 8;
      // ROL sur l'octet
      rotateByte(bS, dec + 1, 2);
      // XOR sur une valeur aléatoire
      bS := bS xor pRandomArray[pRandomArrayIndex];
      pRandomArrayIndex := pRandomArrayIndex + 1;
      if pRandomArrayIndex > length(pRandomArray) then pRandomArrayIndex := 1;
      // XOR sur la longueur de la clef
      bS := bS xor byte(length(pKey));
      // XOR sur la longueur de chaîne
      bS := bS xor byte(length(result));
      // XOR sur la clef
      bResult := (bKey xor bS);
      result[i] := chr(bResult);
      j := j + 1;
      if j > length(pKey) then j := 1;
    end;

  end;

end;

end.
