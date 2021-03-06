unit ClientFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Data.DBXMySQL, Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.FMTBcd, Vcl.Grids,
  Data.Bind.Components, Data.Bind.DBScope, Data.DB, Data.SqlExpr, Data.Bind.Grid,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.DBGrids, Vcl.WinXCtrls, Datasnap.DBClient,
  Datasnap.Provider,DataModule;



type
  TClientFM = class(TFrame)
    GridPanel1: TGridPanel;
    clientGrid: TDBGrid;
    GridPanel2: TGridPanel;
    Label1: TLabel;
    cboxSearch: TComboBox;
    lblPrefix: TLabel;
    editSearch: TEdit;
    btnNew: TButton;
    btnEdit: TButton;
    btnDelete: TButton;
    btnRefresh: TButton;
    btnSearch: TButton;
    provider: TDataSetProvider;
    CDataset: TClientDataSet;
    DataSource: TDataSource;
    CDataset1ClientID: TStringField;
    CDataset1Name: TStringField;
    CDataset1NRC: TStringField;
    CDataset1Address: TStringField;
    CDataset1Phone: TStringField;
    CDataset1DateOfBirth: TStringField;
    CDataset1Home: TStringField;
    CDataset1Job: TStringField;
    CDataset1Salary: TIntegerField;
    CQuery: TSQLQuery;
    SQLConnection1: TSQLConnection;
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure clientGridCellClick(Column: TColumn);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure editSearchChange(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure cboxSearchChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

implementation

{$R *.dfm}

uses ClientEntry, MyQury, frmSelector, shareFunction;

var
 selData : array of string;

procedure TClientFM.btnDeleteClick(Sender: TObject);
var
password, msg, clientID : string;
alength, I : Integer;
OK : boolean;
begin
  msg :=  'This Client is founded in ';
  clientID := clientGrid.Fields[0].AsString;
  alength := Length(checkBeforeDelete('client', clientID));
  OK := False;
  if alength >0 then
  begin
    for I := 0 to alength -1 do
    begin
      msg := msg + '>>'+ checkBeforeDelete('client', clientID)[I];
    end;

    while (password = EmptyStr) do
    begin
      OK := InputQuery('Warning!', msg, password);
      if not OK then
      begin
        Break;
      end;
    end;

    if CheckPassword(getLoginName, password) then
    begin
      for I := 0 to alength-1 do
      begin
        AutoDelete('client', checkBeforeDelete('client', clientID)[(alength-1)-I], clientID);
      end;

      if deleteClient(clientID) then
      begin
        ShowMessage('Successfully Deleted!');
      end
      else
      begin
        ShowMessage('Error Occoured!');
      end;

    end
    else if Ok then
    begin
      ShowMessage('Wrong Password!');
    end;
    
  end
  else
  begin
    while password = EmptyStr do
    begin
      password := InputBox('Warning!', 'Are you sure Want to Delete!', EmptyStr);
    end;
    if CheckPassword(getLoginName, password) then
    begin
      if deleteClient(clientID) then
      begin
        ShowMessage('Successfully Deleted!');
      end
      else
      begin
        ShowMessage('Error Occoured!');
      end;
    end
    else
    begin
      ShowMessage('Wrong Password!');
    end;
  end;


end;

procedure TClientFM.btnEditClick(Sender: TObject);
begin
  frmCleintEntry.prepareupdate(selData);
  frmCleintEntry.Show;
end;

procedure TClientFM.btnNewClick(Sender: TObject);
begin
  frmCleintEntry.prepareNew;
  frmCleintEntry.Show;
end;

procedure TClientFM.btnRefreshClick(Sender: TObject);
begin
with CQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from client');
    Open;
  end;
    clientGrid.DataSource.DataSet.Refresh;
    btnEdit.Enabled := False;
    btnDelete.Enabled := False;
end;

procedure TClientFM.btnSearchClick(Sender: TObject);
begin
  with CQuery do
  begin
    Close;
    SQL.Clear;
    if cboxSearch.Text = 'Name' then
    begin
      SQL.Add('select * from client where name like "'+editSearch.Text+'%"');
    end
    else
    begin
      SQL.Add('select * from client where clientID = "CL-'+editSearch.Text+'"');
    end;

    Open;
    clientGrid.DataSource.DataSet.Refresh;
  end;
end;

procedure TClientFM.cboxSearchChange(Sender: TObject);
begin
  if cboxSearch.ItemIndex = 0 then
    lblPrefix.Caption := '';

  if cboxSearch.ItemIndex = 1 then
    lblPrefix.Caption := 'CL-'
end;

procedure TClientFM.clientGridCellClick(Column: TColumn);
begin

  SetLength(selData , 9);
  selData[0] := clientGrid.Fields[0].AsString;
  selData[1] := clientGrid.Fields[1].AsString;
  selData[2] := clientGrid.Fields[2].AsString;
  selData[3] := clientGrid.Fields[3].AsString;
  selData[4] := clientGrid.Fields[4].AsString;
  selData[5] := clientGrid.Fields[5].AsString;
  selData[6] := clientGrid.Fields[6].AsString;
  selData[7] := clientGrid.Fields[7].AsString;
  selData[8] := clientGrid.Fields[8].AsString;

  if selData[0] <> EmptyStr then
  begin
    btnEdit.Enabled := True;
  btnDelete.Enabled := True;
  end;
end;

procedure TClientFM.editSearchChange(Sender: TObject);
begin
 if editSearch.Text <> EmptyStr then
  begin
    btnSearch.Enabled := True;
  end
  else
  begin
    btnSearch.Enabled := False;
  end;
end;

end.
