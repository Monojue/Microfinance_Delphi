unit GroupFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DBXMySQL, Data.FMTBcd, Vcl.Bind.Grid, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Vcl.Grids,
  Data.Bind.DBScope, Data.DB, Data.SqlExpr, Vcl.DBGrids, Datasnap.DBClient,
  Datasnap.Provider;

type
  TGroupFM = class(TFrame)
    GridPanel1: TGridPanel;
    GroupGrid: TDBGrid;
    GridPanel2: TGridPanel;
    Label1: TLabel;
    cboxSearch: TComboBox;
    Label2: TLabel;
    editSearch: TEdit;
    btnSearch: TButton;
    btnNew: TButton;
    btnEdit: TButton;
    btnDelete: TButton;
    MicrofinanceConnection: TSQLConnection;
    SQLQuery: TSQLQuery;
    DataSetProvider: TDataSetProvider;
    ClientDataSet: TClientDataSet;
    DataSource: TDataSource;
    ClientDataSetGroupID: TStringField;
    ClientDataSetLeader: TStringField;
    ClientDataSetMember_1: TStringField;
    ClientDataSetMember_2: TStringField;
    ClientDataSetMember_3: TStringField;
    ClientDataSetMember_4: TStringField;
    ClientDataSetleaderName: TStringField;
    ClientDataSetM1Name: TStringField;
    ClientDataSetM2Name: TStringField;
    ClientDataSetM3Name: TStringField;
    ClientDataSetM4Name: TStringField;
    btnRefresh: TButton;
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure GroupGridCellClick(Column: TColumn);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure editSearchChange(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}

uses GroupEntry, shareFunction, MyQury;

var
 seldata : array of string;

procedure TGroupFM.btnDeleteClick(Sender: TObject);
var
password, msg, groupID : string;
data : array of string;
alength, I : Integer;
OK : boolean;
begin
  msg :=  'This Group is founded in ';
  groupID := GroupGrid.Fields[0].AsString;
  alength := Length(checkBeforeDelete('group', groupID));

  if alength >0 then
  begin
    for I := 0 to alength -1 do
    begin
      msg := msg + '>>'+ checkBeforeDelete('group', groupID)[I];
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
        AutoDelete('group', checkBeforeDelete('group', groupID)[(alength-1)-I], groupID);
      end;

      if deleteGroupFromGroupID(groupID) then
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
      if deleteGroupFromGroupID(GroupID) then
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

procedure TGroupFM.btnEditClick(Sender: TObject);
begin
  frmGroupEntry.prepareUpdate(seldata);
  frmGroupEntry.Show;
end;

procedure TGroupFM.btnNewClick(Sender: TObject);
begin
  frmGroupEntry.prepareNew;
  frmGroupEntry.Show;
end;

procedure TGroupFM.btnRefreshClick(Sender: TObject);
begin
  with SQLQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from clientGroup');
    Open;
  end;
    GroupGrid.DataSource.DataSet.Refresh;
    btnEdit.Enabled := False;
    btnDelete.Enabled := False;
end;

procedure TGroupFM.btnSearchClick(Sender: TObject);
begin
  with SQLQuery do
  begin
    Close;
    SQL.Clear;
    if cboxSearch.ItemIndex = 0 then
    begin
    SQL.Add('Select * from clientgroup where Leadername Like "'+editSearch.Text+'%"');
    end
    else if cboxSearch.ItemIndex = 1 then
    begin
    SQL.Add('Select * from clientgroup where groupID = "GP-'+editSearch.Text+'"');
    end
    else if cboxSearch.ItemIndex = 2 then
    begin
    SQL.Add('Select * from clientgroup where "'+editSearch.Text+'" in (LeaderName, M1Name, M2Name, M3Name, M4Name)');
    end
    else if cboxSearch.ItemIndex = 3 then
    begin
    SQL.Add('Select * from clientgroup where "CL-'+editSearch.Text+'" in (Leader, Member_1, Member_2, Member_3, Member_4)');
    end;
    Open;
    GroupGrid.DataSource.DataSet.Refresh;
  end;
end;

procedure TGroupFM.editSearchChange(Sender: TObject);
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

procedure TGroupFM.GroupGridCellClick(Column: TColumn);
begin
  btnEdit.Enabled := True;
  btnDelete.Enabled := True;
  SetLength(selData , 11);
  selData[0] := GroupGrid.Fields[0].AsString;
  selData[1] := GroupGrid.Fields[1].AsString;
  selData[2] := GroupGrid.Fields[3].AsString;
  selData[3] := GroupGrid.Fields[5].AsString;
  selData[4] := GroupGrid.Fields[7].AsString;
  selData[5] := GroupGrid.Fields[9].AsString;
  selData[6] := GroupGrid.Fields[2].AsString;
  selData[7] := GroupGrid.Fields[4].AsString;
  selData[8] := GroupGrid.Fields[6].AsString;
  selData[9] := GroupGrid.Fields[8].AsString;
  selData[10] := GroupGrid.Fields[10].AsString;
end;

end.
