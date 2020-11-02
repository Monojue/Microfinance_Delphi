unit shareFunction;

interface

uses
 SysUtils;

function getAutoID(field: string; table: string; prefix: string): string;

implementation

uses DataModule;


function getAutoID(field: string; table: string; prefix: string): string;
var
current : integer;
begin
    DMMicro.SQLQuery.Close;
    DMMicro.SQLQuery.SQL.Clear;
    DMMicro.SQLQuery.SQL.Add('Select * from '+table+' order by '+field+' desc');
    DMMicro.SQLQuery.Open;

      current := StrToInt(DMMicro.SQLQuery.FieldByName('ClientID').AsString.Substring(3,10))+1;
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

end.
