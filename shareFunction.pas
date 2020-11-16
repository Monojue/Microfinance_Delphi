unit shareFunction;

interface

uses
 SysUtils;

 type
  resultData = array of string;


function getAutoID(field: string; table: string; prefix: string): string;
function splitDOB(DOB: string) : resultData;
function splitNRC(NRC: string) : resultData;
procedure setLoginID (ID : string);
function getLoginID () : string;
//function addComma(amount : string) : string;
implementation

uses DataModule, ClientFrame;

var
loginID : string;
  loginName : string;

procedure setLoginID (ID : string);
begin
  loginID := ID;
end;

function getLoginID () : string;
begin
  Result := loginID;
end;

//function addComma(amount : string) : string;
//var
//value : string;
//reverse : string;
//I : integer;
//begin
//  for I := amount.Length to 1 do
//  begin
//     reverse := amount.Substring(I-1,I);
//  end;
//
//  for I := reverse.Length to 1 do
//  begin
//    if I mo and I<> reverse.Length then
//
//  end;
//end;

function getAutoID(field: string; table: string; prefix: string): string;
var
current : integer;
begin
    DMMicro.SQLQuery.Close;
    DMMicro.SQLQuery.SQL.Clear;
    DMMicro.SQLQuery.SQL.Add('Select * from '+table+' order by '+field+' desc');
    DMMicro.SQLQuery.Open;

      current := StrToInt(DMMicro.SQLQuery.FieldByName(field).AsString.Substring(3,10))+1;
      if (current > 0) and (current <= 9) then
        Exit(prefix + '000000'+ current.ToString)
      else if (current > 9) and (current <= 99) then
        Exit(prefix + '00000'+ current.ToString)
      else if (current > 99) and (current <= 999) then
        Exit(prefix + '0000'+ current.ToString)
      else if (current > 999) and (current <= 9999) then
        Exit(prefix + '000'+ current.ToString)
      else if (current > 9999) and (current <= 99999) then
        Exit(prefix + '00'+ current.ToString)
      else if (current > 99999) and (current <= 999999) then
        Exit(prefix + '0'+ current.ToString)
      else if (current > 999999) and (current <= 9999999) then
        Exit(prefix + current.ToString)

end;

function splitDOB(DOB: string) : resultData;
var
data : TArray<string>;
charArray : Array[0..0] of Char;
begin
  SetLength(Result, 3);
  charArray[0] := '-';
  data := DOB.Split(charArray);
  Result[0] := data[0];
  Result[1] := data[1];
  Result[2] := data[2];
end;

function splitNRC(NRC: string) : resultData;
var
data : TArray<string>;
charArray : Array[0..4] of Char;
begin
  SetLength(Result, 3);
  charArray[0] := '/';
  charArray[1] := '(';
  charArray[2] := 'N';
  charArray[3] := ')';

  data := NRC.Split(charArray);

  Result[0] := data[0];
  Result[1]  := data[1];
  Result[2] := data[4];
end;

end.
