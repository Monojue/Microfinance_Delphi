unit MyQury;

interface

uses SysUtils;

type
Resultdata = array of string;

function InsertData(table : string; data :array of string) : boolean;
function UpdateData(table : string; data :array of string) : boolean;
function CheckClientIsInGroup(ID : string) : boolean;
function CheckAvaliable(frmtype : string; ID : string) : boolean;
function GetIndividualLoanSetting() : Resultdata;
function GetIndividualLoanSettingID() : string;
function GetGroupLoanSetting() : Resultdata;
function GetGroupLoanSettingID() : string;

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
  else if table = 'Iloansetting' then
  begin
  SQLQuery.SQL.Add('insert into loansetting(ID,MinAmount,MaxAmount,MinDuration,MaxDuration,AmountInterval,DurationInterval,InterestRate,ServiceRate,Date,Type,OfficerID) ');
  SQLQuery.SQL.Add('values("'+data[0]+'",'+data[1]+','+data[2]+','+data[3]+',"'+data[4]+'",'+data[5]+','+data[6]+','+data[7]+','+data[8]+',"'+data[9]+'","'+data[10]+'","'+data[11]+'")');
  end
  else if table = 'Gloansetting' then
  begin
  SQLQuery.SQL.Add('insert into loansetting(ID,MinAmount,MaxAmount,MinDuration,MaxDuration,AmountInterval,DurationInterval,InterestRate,ServiceRate,Date,Type,OfficerID) ');
  SQLQuery.SQL.Add('values("'+data[0]+'",'+data[1]+','+data[2]+','+data[3]+','+data[4]+','+data[5]+','+data[6]+','+data[7]+','+data[8]+',"'+data[9]+'","'+data[10]+'","'+data[11]+'")');
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
  if table = 'client' then
  begin
  SQLQuery.SQL.Add('update client set Name= "'+data[1]+'",NRC= "'+data[2]+'",Address= "'+data[3]+'" ,Phone= "'+data[4]+'" ,DateOfBirth= "'+data[5]+'" ,Home= "'+data[6]+'" ,Job= "'+data[7]+'",Salary= '+data[8]+' where ClientID= "'+data[0]+'"');
  end
  else if table = 'group' then
  begin
  SQLQuery.SQL.Add('update clientgroup set leader= "'+data[1]+'",Member_1= "'+data[2]+'",Member_2= "'+data[3]+'" ,Member_3= "'+data[4]+'" ,Member_4= "'+data[5]+'" ,leaderName= "'+data[6]+'" ,M1Name= "'+data[7]+'",M2Name= "'+data[8]+'",M3Name= "'+data[9]+'",M4Name= "'+data[10]+'" where GroupID= "'+data[0]+'"');
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


function GetIndividualLoanSetting() : Resultdata;
var
ID : string;
data : array of string;
begin
  ID := GetIndividualLoanSettingID;
  SetLength(data, 11);
  SetLength(Result, 11);
  with DMMicro.SQLQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from loansetting where ID="'+ID+'"');
    Open;

    if not Eof then
    begin
      Result[0] := Fields[1].AsString;
			Result[1] := Fields[2].AsString;
			Result[2] := Fields[3].AsString;
			Result[3] := Fields[4].AsString;
			Result[4] := Fields[5].AsString;
			Result[5] := Fields[6].AsString;
			Result[6] := Fields[7].AsString;
			Result[7] := Fields[8].AsString;
			Result[8] := Fields[9].AsString;
			Result[9] := Fields[10].AsString;
			Result[10] := Fields[11].AsString;
    end;
  end;
end;

function GetGroupLoanSetting() : Resultdata;
var
ID : string;
data : array of string;
begin
  ID := GetGroupLoanSettingID;
  SetLength(data, 11);
  SetLength(Result, 11);
  with DMMicro.SQLQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from loansetting where ID="'+ID+'"');
    Open;

    if not Eof then
    begin
      Result[0] := Fields[1].AsString;
			Result[1] := Fields[2].AsString;
			Result[2] := Fields[3].AsString;
			Result[3] := Fields[4].AsString;
			Result[4] := Fields[5].AsString;
			Result[5] := Fields[6].AsString;
			Result[6] := Fields[7].AsString;
			Result[7] := Fields[8].AsString;
			Result[8] := Fields[9].AsString;
			Result[9] := Fields[10].AsString;
			Result[10] := Fields[11].AsString;
    end;
  end;
end;

function GetIndividualLoanSettingID() : string;
begin
  with DMMicro.SQLQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from loansetting where Type="Individual" order by ID desc limit 1 ');
    Open;

    Result := Fields[0].AsString;

  end;
end;

function GetGroupLoanSettingID() : string;
begin
  with DMMicro.SQLQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from loansetting where Type="Group" order by ID desc limit 1 ');
    Open;

    Result := Fields[0].AsString;

  end;
end;

end.
