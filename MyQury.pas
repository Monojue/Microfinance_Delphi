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
function GetGroupDetailsFromID(id : string): Resultdata;
function GetClientDetailsFromID(id : string): Resultdata;
function UpdateDueDate(tbName,Date, LoanRequestID : string) : boolean;
function GetPaymentNumber(ID : string) : Integer;
function checkBeforeDelete(tbName, ID : string) : Resultdata;
function checkInTable(tbName, ID : string) : boolean;
function getGroupIDFormClientID(CID : string) : string;
function getLoanIDfromGroupID(groupID : string) : string;
function getLoanIDfromClientID(ClientID : string) :string;
function CheckPassword(username, password : string) : boolean;

function AutoDelete(tbName, key, ID : string) : boolean;
function deletePayment(LoanRequestID : string) : boolean;
function deleteclientLoanRequest(clientID : string) : boolean;
function deleteclientLoanRequestLoanID(LoanID : string) : boolean;
function deleteClientDetailsLoanID(LoanID : string) : boolean;
function deleteGroupFromGroupID(ID : string) : boolean;
function deleteGroupLoanRequest(GroupID : string) : boolean;
function deleteGroupLoanRequestLoanID(LoanID : string) : boolean;
function deleteGroupDetailsLoanID(LoanID : string) : boolean;

function deleteClient(ID : string) : boolean;
function deleteOfficer(ID : string) : boolean;

implementation

uses DataModule;

function deleteClient(ID : string) : boolean;
begin
  with DMMicro do
  begin
  DMMicro.SQLQuery.Close;
  SQLQuery.SQL.Clear;
  SQLQuery.SQL.Add('Delete from client where clientID="'+ID+'"');

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

function deleteOfficer(ID : string) : boolean;
begin
  with DMMicro do
  begin
  DMMicro.SQLQuery.Close;
  SQLQuery.SQL.Clear;
  SQLQuery.SQL.Add('Delete from officer where officerID="'+ID+'" and Role="Staff"');

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

function deleteclientLoanRequest(clientID : string) : boolean;
begin

  Result := deleteclientLoanRequestLoanID(getLoanIDfromClientID(clientID));
end;

function deleteGroupDetailsLoanID(LoanID : string) : boolean;
begin
  with DMMicro do
  begin
  DMMicro.SQLQuery.Close;
  SQLQuery.SQL.Clear;
  SQLQuery.SQL.Add('Delete from GroupDetails where LoanRequestID="'+LoanID+'"');

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

function deleteGroupLoanRequestLoanID(LoanID : string) : boolean;
begin
  deleteGroupDetailsLoanID(LoanID);
  with DMMicro do
  begin
  DMMicro.SQLQuery.Close;
  SQLQuery.SQL.Clear;
  SQLQuery.SQL.Add('Delete from LoanRequest where LoanRequestID="'+LoanID+'"');

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

function deleteclientLoanRequestLoanID(LoanID : string) : boolean;
begin
  deleteClientDetailsLoanID(LoanID);
  with DMMicro do
  begin
  DMMicro.SQLQuery.Close;
  SQLQuery.SQL.Clear;
  SQLQuery.SQL.Add('Delete from LoanRequest where LoanRequestID="'+LoanID+'"');

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

function deleteGroupLoanRequest(GroupID : string) : boolean;
begin
  Result := deleteGroupLoanRequestLoanID(getLoanIDfromGroupID(GroupID));
end;

function deleteClientDetailsLoanID(LoanID : string) : boolean;
begin
  with DMMicro do
  begin
  DMMicro.SQLQuery.Close;
  SQLQuery.SQL.Clear;
  SQLQuery.SQL.Add('Delete from ClientDetails where LoanRequestID="'+LoanID+'"');

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

function deletePayment(LoanRequestID : string) : boolean;
begin
  with DMMicro do
  begin
  DMMicro.SQLQuery.Close;
  SQLQuery.SQL.Clear;
  SQLQuery.SQL.Add('Delete from repayment where LoanRequestID="'+LoanRequestID+'"');

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

function AutoDelete(tbName, key, ID : string) : boolean;
begin
  if tbName = 'client' then
  begin
    if key = 'Individual Repayment' then
    begin
      if deletePayment(getLoanIDfromClientID(ID)) then
        Exit(True);
    end;
    if key = 'Group Repayment' then
    begin
      if deletePayment(getLoanIDfromGroupID(getGroupIDFormClientID(ID))) then
        Exit(True);
    end
    else if key = 'Group Loan' then
    begin
      if deleteGroupLoanRequest(getGroupIDFormClientID(ID)) then
        Exit(True);
    end
    else if key = 'Client Loan' then
    begin
      if deleteclientLoanRequest(ID) then
        Exit(True);
    end
    else if key = 'Group' then
    begin
      if deleteGroupFromGroupID(getGroupIDFormClientID(ID)) then
        Exit(True);
    end;
    
  end
  else if tbName = 'group' then
  begin
    if key = 'Group Repayment' then
    begin
      if deletePayment(getLoanIDfromGroupID(ID)) then
        Exit(True);
    end
    else if key = 'Group Loan' then
    begin
      if deleteGroupLoanRequest(ID) then
        Exit(True);
    end;
  end
  else if tbName = 'loanrequest' then
  begin
    if key = 'Repayment' then
    begin
      if deletePayment(ID) then
        Exit(True);
    end;
  end;
  Result := False;
end;

function deleteGroupFromGroupID(ID : string) : boolean;
begin
  with DMMicro do
  begin
  DMMicro.SQLQuery.Close;
  SQLQuery.SQL.Clear;
  SQLQuery.SQL.Add('Delete from clientgroup where GroupID="'+ID+'"');

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

function CheckPassword(username, password : string) : boolean;
begin
  with DMMicro.SQLQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select * from officer where binary username ="'+username+'" and binary password="'+password+'"');
    Open;
    if  not Eof then
    begin
      Exit(True);
    end
    else
    begin
      Exit(False);
    end;
  end;
end;

function checkBeforeDelete(tbName, ID : string) : Resultdata;
begin
  
  if tbName = 'client' then
  begin
    if checkInTable('group', ID) then
    begin
      SetLength(Result ,1);
      Result[0] := 'Group';
      if checkInTable('groupdetails',getGroupIDFormClientID(ID)) then
      begin
        SetLength(Result ,2);
        Result[1] := 'Group Loan';
        if checkInTable('repayment', getLoanIDfromGroupID(getGroupIDFormClientID(ID))) then
        begin
          SetLength(Result ,3);
          Result[2] := 'Group Repayment';
        end;
      end;
    end
    else
    begin
      if checkInTable('clientdetails', ID) then
      begin
        SetLength(Result ,1);
        Result[0] := 'Client Loan';
        if checkInTable('repayment', getLoanIDfromClientID(ID)) then
        begin
          SetLength(Result ,2);
          Result[1] :=  'Individual Repayment';
        end;
      end;
    end;
  end
  else if tbName = 'group' then
  begin
    if checkInTable('groupdetails', ID) then
    begin
      SetLength(Result ,1);
      Result[0] := 'Group Loan';
      if checkInTable('repayment', getLoanIDfromGroupID(ID)) then
      begin
        SetLength(Result ,2);
        Result[1] := 'Group Repayment';
      end;
    end;
  end
  else if tbName = 'loanrequest' then
  begin
    if checkInTable('repayment', ID) then
    begin
      SetLength(Result ,1);
      Result[0] := 'Repayment';
    end;
  end;
end;

function getLoanIDfromClientID(ClientID : string) :string;
begin
  with DMMicro.SQLQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select * from ClientDetails where clientID="'+ClientID+'"');
    Open;
    Result := Fields[1].AsString;
  end;
end;

function getLoanIDfromGroupID(groupID : string) : string;
begin
  with DMMicro.SQLQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select * from GroupDetails where GroupID="'+GroupID+'"');
    Open;
    Result := Fields[1].AsString;
   
  end;
end;

function getGroupIDFormClientID(CID : string) : string;
begin
  with DMMicro.SQLQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM clientgroup where Leader="'+CID+'" or Member_1="'+CID+'" or Member_2="'+CID+'" or Member_3="'+CID+'" or Member_4="'+CID+'"');
    Open;
    Result := Fields[0].AsString;
 
  end;
end;

function checkInTable(tbName, ID : string) : boolean;
begin
  with DMMicro.SQLQuery do
  begin
    Close;
    SQL.Clear;
    if tbName = 'client' then
    begin
      SQL.Add('Select * from client where clientID='+ID+'"');
    end
    else if tbName = 'group' then
    begin
      SQL.Add('SELECT * FROM clientgroup where Leader="'+ID+'" or Member_1="'+ID+'" or Member_2="'+ID+'" or Member_3="'+ID+'" or Member_4="'+ID+'"');
    end
    else if tbName = 'groupdetails' then
    begin
      SQL.Add('Select * from groupdetails where GroupID="'+ID+'"');
    end
    else if tbName = 'clientdetails' then
    begin
     SQL.Add('Select * from clientdetails where ClientID="'+ID+'"');
    end
    else if tbName = 'repayment' then
    begin
     SQL.Add('Select * from repayment where LoanRequestID="'+ID+'"');
    end;
    Open;
    if  not Eof then
    begin
      Exit(True);
    end
    else
    begin
      Exit(False);
    end;
  end;
end;


function GetPaymentNumber(ID : string) : Integer;
var
num : integer;
begin
  num := 1;
  with DMMicro.SQLQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select * from repayment where LoanRequestID= "'+ID+'"');
    Open;
    while not Eof do
    begin
      num := num + 1;
      Next;
    end;
  end;
  Result := num;
end;


function UpdateDueDate(tbName,Date, LoanRequestID : string) : boolean;
begin
  with DMMicro do
  begin
  DMMicro.SQLQuery.Close;
  SQLQuery.SQL.Clear;
    if (tbName = 'clientloan') or (tbName = 'client') then
    begin
      SQLQuery.SQL.Add('update clientDetails set DueDate= "'+Date+'" where LoanrequestID= "'+LoanRequestID+'"');
    end
    else if (tbName = 'grouploan') or (tbName = 'group') then
    begin
      SQLQuery.SQL.Add('update groupDetails set DueDate= "'+Date+'" where LoanrequestID= "'+LoanRequestID+'"');
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
  end
  else if table = 'loanrequest' then
  begin
  SQLQuery.SQL.Add('insert into loanrequest(LoanRequestID,LoanType,Amount,Duration,InterestRate) ');
  SQLQuery.SQL.Add('values("'+data[0]+'","'+data[1]+'",'+data[2]+','+data[3]+','+data[4]+')');
  end
  else if table = 'clientdetails' then
  begin
  SQLQuery.SQL.Add('insert into clientdetails(ClientID,LoanRequestID,RequestDate) ');
  SQLQuery.SQL.Add('values("'+data[0]+'","'+data[1]+'","'+data[2]+'")');
  end
  else if table = 'groupdetails' then
  begin
  SQLQuery.SQL.Add('insert into groupdetails(GroupID,LoanRequestID,RequestDate) ');
  SQLQuery.SQL.Add('values("'+data[0]+'","'+data[1]+'","'+data[2]+'")');
  end
  else if table = 'repayment' then
  begin
  SQLQuery.SQL.Add('insert into repayment(RepaymentID,LoanRequestID,PaymentDate,Amount) ');
  SQLQuery.SQL.Add('values("'+data[0]+'","'+data[1]+'","'+data[2]+'",'+data[3]+')');
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
  else if table = 'guarantor' then
  begin
  SQLQuery.SQL.Add('update client set GName= "'+data[1]+'",GJob= "'+data[2]+'",GSalary= '+data[3]+' ,Relationship= "'+data[4]+'" ,GAddress= "'+data[5]+'" ,GPhone= "'+data[6]+'" ,GNRC= "'+data[7]+'" where ClientID= "'+data[0]+'"');
  end
   else if table = 'loanrequest' then
  begin
  SQLQuery.SQL.Add('update loanrequest set Approved= "'+data[1]+'",Remark= "'+data[2]+'" where LoanrequestID= "'+data[0]+'"');
  end
//   else if table = 'loanrequestDecline' then
//  begin
//  SQLQuery.SQL.Add('update loanrequest set Approved= "'+data[1]+'",Remark= "'+data[2]+'" where LoanrequestID= "'+data[0]+'"');
//  end
   else if table = 'paidday' then
  begin
  SQLQuery.SQL.Add('update loanrequest set PayDay= "'+data[1]+'" where LoanrequestID= "'+data[0]+'"');
  end
  else if table = 'groupColumn' then
  begin
  SQLQuery.SQL.Add('Update clientGroup set '+data[0]+'= "'+data[1]+'" where GroupID="'+data[2]+'"');
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

function GetGroupDetailsFromID(id : string): Resultdata;
begin
  SetLength(Result, 10);
  with DMMicro.SQLQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from clientgroup where groupID="'+ID+'"');
    Open;

    if not Eof then
    begin
      Result[0] := Fields[1].AsString;
			Result[1] := Fields[6].AsString;
			Result[2] := Fields[2].AsString;
			Result[3] := Fields[7].AsString;
			Result[4] := Fields[3].AsString;
			Result[5] := Fields[8].AsString;
			Result[6] := Fields[4].AsString;
			Result[7] := Fields[9].AsString;
			Result[8] := Fields[5].AsString;
			Result[9] := Fields[10].AsString;
    end;
  end;

end;

function GetClientDetailsFromID(id : string): Resultdata;
begin
  SetLength(Result, 8);
  with DMMicro.SQLQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from client where clientID="'+ID+'"');
    Open;

    if not Eof then
    begin
      Result[0] := Fields[1].AsString;
			Result[1] := Fields[2].AsString;
			Result[2] := Fields[5].AsString;
			Result[3] := Fields[3].AsString;
			Result[4] := Fields[4].AsString;
			Result[5] := Fields[6].AsString;
			Result[6] := Fields[7].AsString;
			Result[7] := Fields[8].AsString;
    end;
  end;

end;

end.






