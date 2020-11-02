unit MyQury;

interface

uses SysUtils;

function InsertData(table : string; data :array of string) : boolean;

implementation

uses DataModule;

function InsertData(table : string; data: array of string) : boolean;
begin
with DMMicro do
begin
  SQLQuery.Close;
  SQLQuery.SQL.Clear;
  SQLQuery.SQL.Add('INSERT INTO client (ClientID,Name,NRC,Address,Phone,DateofBirth,Home,Job,Salary) '
+ 'values("CL-0002154","Kaung","12/DaGARA(N)001112","HOME",096085958,"12-Jan-1996",1,"JOB",800000');
  SQLQuery.ExecSQL;
end;

end;


end.
