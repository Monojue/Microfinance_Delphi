unit frmSelector;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DBXMySQL, Data.FMTBcd, Data.DB, Vcl.DBGrids, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr;

type
  TMySelector = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    cboxSearch: TComboBox;
    editSearch: TEdit;
    btnSearch: TButton;
    btnNew: TButton;
    btnOK: TButton;
    MicrofinanceConnection: TSQLConnection;
    CQuery: TSQLQuery;
    Cprovider: TDataSetProvider;
    ClientDataSet: TClientDataSet;
    ClientDataSource: TDataSource;
    ClientDataSetClientID: TStringField;
    ClientDataSetName: TStringField;
    ClientDataSetNRC: TStringField;
    ClientDataSetAddress: TStringField;
    ClientDataSetPhone: TStringField;
    ClientDataSetDateOfBirth: TStringField;
    ClientDataSetHome: TStringField;
    ClientDataSetJob: TStringField;
    ClientDataSetSalary: TIntegerField;
    DBGrid: TDBGrid;
    GroupDataSet: TClientDataSet;
    GroupDataSource: TDataSource;
    Gprovider: TDataSetProvider;
    GQuery: TSQLQuery;
    GroupDataSetGroupID: TStringField;
    GroupDataSetLeader: TStringField;
    GroupDataSetMember_1: TStringField;
    GroupDataSetMember_2: TStringField;
    GroupDataSetMember_3: TStringField;
    GroupDataSetMember_4: TStringField;
    GroupDataSetleaderName: TStringField;
    GroupDataSetM1Name: TStringField;
    GroupDataSetM2Name: TStringField;
    GroupDataSetM3Name: TStringField;
    GroupDataSetM4Name: TStringField;
    btnRefresh: TButton;
    Label2: TLabel;
    procedure DBGridCellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure editSearchChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure setFormType(settype : string);
  end;

var
  MySelector: TMySelector;
  frmtype : string;
  selID : string;
  selName : string;

implementation

{$R *.dfm}

uses ClientEntry, GroupEntry;

procedure TMySelector.btnNewClick(Sender: TObject);
begin
  if frmtype = 'client' then
  begin
    frmCleintEntry.prepareNew;
    frmCleintEntry.Show;
  end
  else if frmtype = 'group' then
  begin
    frmGroupEntry.Show;
  end;
end;

procedure TMySelector.btnOKClick(Sender: TObject);
var
data : array of string;
begin
  if frmtype = 'client' then
  begin
    if frmGroupEntry.setIDandName(selID, selName) then
    begin
      Close;
    end;
  end
  else if frmtype = 'groupRequest ' then
  begin
    SetLength(data, 11);
    data[0] := DBGrid.Fields[0];
    data[1] := DBGrid.Fields[1];
    data[2] := DBGrid.Fields[2];
    data[3] := DBGrid.Fields[3];
    data[4] := DBGrid.Fields[4];
    data[5] := DBGrid.Fields[5];
    data[6] := DBGrid.Fields[6];
    data[7] := DBGrid.Fields[7];
    data[8] := DBGrid.Fields[8];
    data[9] := DBGrid.Fields[9];
    data[10] := DBGrid.Fields[10];
  end
  else if frmtype = 'clientRequest ' then
  begin
    SetLength(data, 9);
    data[0] := DBGrid.Fields[0];
    data[1] := DBGrid.Fields[1];
    data[2] := DBGrid.Fields[2];
    data[3] := DBGrid.Fields[3];
    data[4] := DBGrid.Fields[4];
    data[5] := DBGrid.Fields[5];
    data[6] := DBGrid.Fields[6];
    data[7] := DBGrid.Fields[7];
    data[8] := DBGrid.Fields[8];
  end;
end;

procedure TMySelector.btnRefreshClick(Sender: TObject);
begin
    
     if frmtype = 'client' then
    begin
    CQuery.Close;
    CQuery.SQL.Clear;
    CQuery.SQL.Add('Select * from client');
    CQuery.Open;
    DBGrid.DataSource := ClientDataSource;
    end
    else if frmtype = 'group' then
    begin
    GQuery.Close;
    GQuery.SQL.Clear;
    GQuery.SQL.Add('Select * from clientgroup');
    GQuery.Open;
    DBGrid.DataSource := GroupDataSource;
    end;
    DBGrid.DataSource.DataSet.Refresh;
    editSearch.Text := '';
end;

procedure TMySelector.btnSearchClick(Sender: TObject);
begin
  if frmtype = 'client' then
  begin
    CQuery.Close;
    CQuery.SQL.Clear;
    if cboxSearch.Text = 'Client Name' then
    begin
    CQuery.SQL.Add('Select * from client where name Like "'+editSearch.Text+'%"');
    end
    else if cboxSearch.Text = 'Client ID' then
    begin
    CQuery.SQL.Add('Select * from client where clientID = "CL-'+editSearch.Text+'"');
    end;
    CQuery.Open;
  end
  else if frmtype = 'group' then
  begin
    GQuery.Close;
    GQuery.SQL.Clear;
    if cboxSearch.ItemIndex = 0 then
    begin
    GQuery.SQL.Add('Select * from clientgroup where Leadername Like "'+editSearch.Text+'%"');
    end
    else if cboxSearch.ItemIndex = 1 then
    begin
    GQuery.SQL.Add('Select * from clientgroup where groupID = "GP-'+editSearch.Text+'"');
    end
    else if cboxSearch.ItemIndex = 2 then
    begin
    GQuery.SQL.Add('Select * from clientgroup where "'+editSearch.Text+'" in (LeaderName, M1Name, M2Name, M3Name, M4Name)');
    end
    else if cboxSearch.ItemIndex = 3 then
    begin
    GQuery.SQL.Add('Select * from clientgroup where "CL-'+editSearch.Text+'" in (Leader, Member_1, Member_2, Member_3, Member_4)');
    end;
    GQuery.Open;
  end;
  DBGrid.DataSource.DataSet.Refresh;
end;

procedure TMySelector.DBGridCellClick(Column: TColumn);
begin
  btnOK.Enabled := True;
  selID := DBGrid.Fields[0].AsString;
  selName := DBGrid.Fields[1].AsString;
end;

procedure TMySelector.editSearchChange(Sender: TObject);
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

procedure TMySelector.FormShow(Sender: TObject);
begin
  cboxSearch.Items.Clear;
  if frmtype = 'client' then
  begin
    cboxSearch.Items.Add('Client Name');
    cboxSearch.Items.Add('Client ID');
    DBGrid.DataSource := ClientDataSource;
  end
  else
  begin
    cboxSearch.Items.Add('Leader Name');
    cboxSearch.Items.Add('Group ID');
    cboxSearch.Items.Add('Client Name');
    cboxSearch.Items.Add('Client ID');
    DBGrid.DataSource := GroupDataSource;
  end;
  cboxSearch.ItemIndex := 0;
  DBGrid.DataSource.DataSet.Refresh;
end;

procedure TMySelector.setFormType(settype: string);
begin
  frmtype := settype;
end;

end.
