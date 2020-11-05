unit MyQury;

interface

uses SysUtils;

function InsertData(table : string; data :array of string) : boolean;
function UpdateData(table : string; data :array of string) : boolean;
function CheckClientIsInGroup(ID : string) : boolean;
function CheckAvaliable(frmtype : string; ID : string) : boolean;
implementation

uses DataModule;



function InsertData(table : string; data: array of string) : boolean;
begin
with DMMicro do
begin
  DMMicro.SQLQuery.Close;
  SQLQuery.SQL.Clear;
  if table = 'client' then
  begin
  SQLQuery.SQL.Add('INSERT INTO client (ClientID,Name,NRC,Address,Phone,DateofBirth,Home,Job,Salary) ');
  SQLQuery.SQL.Add('values("'+data[0]+'", "'+data[1]+'", "'+data[2]+'", "'+data[3]+'", '+data[4]+', "'+data[5]+'", "'+data[6]+'", "'+data[7]+'", '+data[8]+')');
  end
  else if table = 'group' then
  begin
  SQLQuery.SQL.Add('Insert into clientGroup(groupID, leader, Member_1, Member_2, Member_3, Member_4, leaderName, M1Name, M2Name, M3Name, M4Name) ');
  SQLQuery.SQL.Add('values("'+data[0]+'","'+data[1]+'","'+data[2]+'","'+data[3]+'","'+data[4]+'","'+data[5]+'","'+data[6]+'","'+data[7]+'","'+data[8]+'","'+data[9]+'","'+data[10]+'")');
  end
  else if table = 'officer' then
  begin
  SQLQuery.SQL.Add('Insert into Officer(officerID, Name, Address, Phone, NRC, Role, UserName, Password) ');
  SQLQuery.SQL.Add('values("'+data[0]+'","'+data[1]+'","'+data[2]+'","'+data[3]+'","'+data[4]+'","'+data[5]+'","'+data[6]+'","'+data[7]+'")');
  end;
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


function CheckClientIsInGroup(ID : string) : boolean;
begin
  with DMMicro.SQLQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select * from clientgroup where "'+ID+'" in (Leader, Member_1, Member_2, Member_3, Member_4)');
    Open;
    if not Eof then
    begin
      Exit(True);
    end
    else
    begin
      Exit(False);
    end;
  end;
end;

function CheckAvaliable(frmtype : string; ID : string) : boolean;
begin
  with DMMicro.SQLQuery do
  begin
    Close;
    SQL.Clear;
    if frmtype = 'Individual' then
    begin
    SQL.Add('Select * from clientdetails where clientID= "'+ID+'"');
    end
    else if frmtype = 'Group' then
    begin
        SQL.Add('Select * from groupdetails where groupID= "'+ID+'"');
    end;
    Open;
    if not Eof then
    begin
      Exit(True);
    end
    else
    begin
      Exit(False);
    end;
  end;
end;

end.
