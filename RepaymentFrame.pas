unit RepaymentFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DBXMySQL, Data.FMTBcd,
  Data.SqlExpr, Datasnap.DBClient, Datasnap.Provider;

type
  TRepaymentFM = class(TFrame)
    GridPanel1: TGridPanel;
    GridPanel2: TGridPanel;
    Label1: TLabel;
    cboxSearch: TComboBox;
    editSearch: TEdit;
    btnViewDetails: TButton;
    btnDelete: TButton;
    btnRefresh: TButton;
    btnSearch: TButton;
    Panel1: TPanel;
    RadioGroup: TRadioGroup;
    lblPrefix: TLabel;
    DBGrid: TDBGrid;
    MicrofinanceConnection: TSQLConnection;
    CQuery: TSQLQuery;
    GQuery: TSQLQuery;
    Cprovider: TDataSetProvider;
    Gprovider: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    GroupDataSet: TClientDataSet;
    ClientDataSource: TDataSource;
    GroupDataSource: TDataSource;
    CQueryLoanRequestID: TStringField;
    CQueryClientID: TStringField;
    CQueryClientName: TStringField;
    CQueryRequestDate: TStringField;
    CQueryDueDate: TStringField;
    CQueryAmount: TIntegerField;
    CQueryDuration: TIntegerField;
    CQueryInterestRate: TIntegerField;
    CQueryPayDay: TStringField;
    CQueryRemark: TStringField;
    CQueryApproved: TShortintField;
    GQueryLoanRequestID: TStringField;
    GQueryGroupID: TStringField;
    GQueryLeaderName: TStringField;
    GQueryMember1Name: TStringField;
    GQueryMember2Name: TStringField;
    GQueryMember3Name: TStringField;
    GQueryMember4Name: TStringField;
    GQueryRequestDate: TStringField;
    GQueryDueDate: TStringField;
    GQueryAmount: TIntegerField;
    GQueryDuration: TIntegerField;
    GQueryInterestRate: TIntegerField;
    GQueryRemark: TStringField;
    GQueryPayDay: TStringField;
    GQueryApproved: TShortintField;
    ClientDataSet1LoanRequestID: TStringField;
    ClientDataSet1ClientID: TStringField;
    ClientDataSet1ClientName: TStringField;
    ClientDataSet1RequestDate: TStringField;
    ClientDataSet1DueDate: TStringField;
    ClientDataSet1Amount: TIntegerField;
    ClientDataSet1Duration: TIntegerField;
    ClientDataSet1InterestRate: TIntegerField;
    ClientDataSet1PayDay: TStringField;
    GroupDataSetLoanRequestID: TStringField;
    GroupDataSetGroupID: TStringField;
    GroupDataSetLeaderName: TStringField;
    GroupDataSetMember1Name: TStringField;
    GroupDataSetMember2Name: TStringField;
    GroupDataSetMember3Name: TStringField;
    GroupDataSetMember4Name: TStringField;
    GroupDataSetRequestDate: TStringField;
    GroupDataSetDueDate: TStringField;
    GroupDataSetAmount: TIntegerField;
    GroupDataSetDuration: TIntegerField;
    GroupDataSetInterestRate: TIntegerField;
    GroupDataSetPayDay: TStringField;
    procedure btnViewDetailsClick(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure RadioGroupClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure editSearchChange(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtype, ID, loanID, amount, duration, rate, radioSelect : string;

implementation

{$R *.dfm}

uses Repayment_u;

procedure TRepaymentFM.btnRefreshClick(Sender: TObject);
begin
  RadioGroupClick(Sender);
end;

procedure TRepaymentFM.btnSearchClick(Sender: TObject);
begin
  if frmtype = 'client' then
  begin
    CQuery.Close;
    CQuery.SQL.Clear;
    if cboxSearch.Text = 'LoanRequest ID' then
    begin
    CQuery.SQL.Add('Select * from clientloanrequest where approved = 1 and PayDay is not null and loanrequestID = "LR-'+editSearch.Text+'"');
    end
    else if cboxSearch.Text = 'Client ID' then
    begin
    CQuery.SQL.Add('Select * from clientloanrequest where approved = 1 and PayDay is not null and clientID = "CL-'+editSearch.Text+'"');
    end
    else if cboxSearch.Text = 'Date' then
    begin
    CQuery.SQL.Add('Select * from clientloanrequest where approved = 1 and PayDay is not null and duedate = "'+editSearch.Text+'"');
    end;
    CQuery.Open;
  end
  else if frmtype = 'group' then
  begin
    GQuery.Close;
    GQuery.SQL.Clear;
    if cboxSearch.Text = 'LoanRequest ID' then
    begin
    GQuery.SQL.Add('Select * from grouploanrequest where approved = 1 and PayDay is not null and loanrequestID = "LR-'+editSearch.Text+'"');
    end
    else if cboxSearch.Text = 'Group ID' then
    begin
    GQuery.SQL.Add('Select * from grouploanrequest where approved = 1 and PayDay is not null and groupID = "GP-'+editSearch.Text+'"');
    end
    else if cboxSearch.Text = 'Date' then
    begin
    GQuery.SQL.Add('Select * from grouploanrequest where approved = 1 and PayDay is not null and duedate = "'+editSearch.Text+'"');
    end;
    GQuery.Open;
  end;
  DBGrid.DataSource.DataSet.Refresh;
end;


procedure TRepaymentFM.btnViewDetailsClick(Sender: TObject);
begin
  frmRepayment.prepareView(frmtype, ID, loanID, amount, duration, rate);
  frmRepayment.Show;
end;

procedure TRepaymentFM.DBGridCellClick(Column: TColumn);
begin
  if RadioGroup.ItemIndex = 0 then
  begin
  loanID := DBGrid.Fields[0].AsString;
  ID := DBGrid.Fields[1].AsString;
  amount := DBGrid.Fields[2].AsString;
  duration := DBGrid.Fields[3].AsString;
  rate := DBGrid.Fields[4].AsString;
  end
  else if RadioGroup.ItemIndex = 1 then
  begin
  loanID := DBGrid.Fields[0].AsString;
  ID := DBGrid.Fields[1].AsString;
  amount := DBGrid.Fields[10].AsString;
  duration := DBGrid.Fields[11].AsString;
  rate := DBGrid.Fields[12].AsString;
  end;
  btnViewDetails.Enabled := True;
  btnDelete.Enabled := True;
end;

procedure TRepaymentFM.editSearchChange(Sender: TObject);
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

procedure TRepaymentFM.RadioGroupClick(Sender: TObject);
begin
  cboxSearch.Items.Clear;
  if RadioGroup.ItemIndex = 0 then
  begin
    cboxSearch.Items.Add('LoanRequest ID');
    cboxSearch.Items.Add('Client ID');
    cboxSearch.Items.Add('Date');
    frmtype := 'client';
    radioSelect := 'clientloanrequest';
    with CQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from clientloanrequest where approved = 1 and PayDay is not null');
      Open;
      DBGrid.DataSource := ClientDataSource;
    end;
  end
  else if RadioGroup.ItemIndex = 1 then
  begin
    frmtype := 'group';
    cboxSearch.Items.Add('LoanRequest ID');
    cboxSearch.Items.Add('Group ID');
    cboxSearch.Items.Add('Date');
    radioSelect := 'grouploanrequest';
    with GQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from grouploanrequest where approved = 1 and PayDay is not null');
      Open;
      DBGrid.DataSource := GroupDataSource;
    end;
  end;
  cboxSearch.ItemIndex := 0;
  DBGrid.DataSource.DataSet.Refresh;
  btnViewDetails.Enabled := False;
  btnDelete.Enabled := False;
end;

end.
