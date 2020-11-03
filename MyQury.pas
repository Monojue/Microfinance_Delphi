unit MyQury;

interface

uses SysUtils;

function InsertData(table : string; data :array of string) : boolean;
function UpdateData(table : string; data :array of string) : boolean;
function SearchData(table : string; data : string) : boolean;
implementation

uses DataModule;



function InsertData(table : string; data: array of string) : boolean;
begin
with DMMicro do
begin
  DMMicro.SQLQuery.Close;
  SQLQuery.SQL.Clear;
  SQLQuery.SQL.Add('INSERT INTO client (ClientID,Name,NRC,Address,Phone,DateofBirth,Home,Job,Salary) ');
  SQLQuery.SQL.Add('values("'+data[0]+'", "'+data[1]+'", "'+data[2]+'", "'+data[3]+'", '+data[4]+', "'+data[5]+'", "'+data[6]+'", "'+data[7]+'", '+data[8]+')');
  if  SQLQuery.ExecSQL >0 then
  begin
    Exit(True);
  end
  else
  begin
    Exit(False);
  end;
end;

end;


function UpdateData(table : string; data :array of string) : boolean;
begin
  with DMMicro do
begin
  DMMicro.SQLQuery.Close;
  SQLQuery.SQL.Clear;
  SQLQuery.SQL.Add('update client set Name= "'+data[1]+'",NRC= "'+data[2]+'",Address= "'+data[3]+'" ,Phone= "'+data[4]+'" ,DateOfBirth= "'+data[5]+'" ,Home= "'+data[6]+'" ,Job= "'+data[7]+'",Salary= '+data[8]+' where ClientID= "'+data[0]+'"');
  if  SQLQuery.ExecSQL >0 then
  begin
    Exit(True);
  end
  else
  begin
    Exit(False);
  end;
end;
end;

function SearchData(table : string; data : string) : boolean;
begin
  if table = 'client' then
  begin
     with DMMicro.SQLQuery do
     begin
       close;
       SQL.Clear;
       SQL.Add('Select * from client where Name like "'+data+'%"');
       Open;
     end;
  end;
end;


end.
