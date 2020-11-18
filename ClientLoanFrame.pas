unit ClientLoanFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.DBGrids, Data.DBXMySQL, Data.FMTBcd,
  Datasnap.DBClient, Data.SqlExpr, Datasnap.Provider;

type
  TClientLoanFM = class(TFrame)
    GridPanel1: TGridPanel;
    GridPanel2: TGridPanel;
    Label1: TLabel;
    cboxSearch: TComboBox;
    editSearch: TEdit;
    btnNew: TButton;
    btnPay: TButton;
    btnDelete: TButton;
    btnRefresh: TButton;
    btnSearch: TButton;
    Panel1: TPanel;
    RadioGroup: TRadioGroup;
    lblPrefix: TLabel;
    MicrofinanceConnection: TSQLConnection;
    SQLQuery: TSQLQuery;
    DataSetProvider: TDataSetProvider;
    ClientDataSet: TClientDataSet;
    DataSource: TDataSource;
    clientGrid: TDBGrid;
    ClientDataSetLoanRequestID: TStringField;
    ClientDataSetClientID: TStringField;
    ClientDataSetClientName: TStringField;
    ClientDataSetRequestDate: TStringField;
    ClientDataSetDueDate: TStringField;
    ClientDataSetAmount: TIntegerField;
    ClientDataSetDuration: TIntegerField;
    ClientDataSetInterestRate: TIntegerField;
    ClientDataSetRemark: TStringField;
    procedure RadioGroupClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure editSearchChange(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnPayClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses ClientLoanRequestForm, ViewDetails;


procedure TClientLoanFM.btnNewClick(Sender: TObject);
begin
  ClientLoanRequest.Show;
end;

procedure TClientLoanFM.btnPayClick(Sender: TObject);
begin
//  frmDetails.setformType('client');
  frmDetails.Show;
end;

procedure TClientLoanFM.btnRefreshClick(Sender: TObject);
begin
  RadioGroupClick(Sender);
end;

procedure TClientLoanFM.btnSearchClick(Sender: TObject);
begin
  with SQLQuery do
  begin
    Close;
    SQL.Clear;
    if cboxSearch.ItemIndex = 0 then
    begin
      SQL.Add('select * from clientloanrequest where LoanRequestID = "LR-'+editSearch.Text+'"');
    end
    else
    begin
      SQL.Add('select * from clientloanrequest where clientID = "CL-'+editSearch.Text+'"');
    end;

    Open;
    clientGrid.DataSource.DataSet.Refresh;
  end;
end;

procedure TClientLoanFM.editSearchChange(Sender: TObject);
begin
  btnSearch.Enabled := True;
end;

procedure TClientLoanFM.RadioGroupClick(Sender: TObject);
begin

  if RadioGroup.ItemIndex = 0 then
  begin
    with SQLQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from clientloanrequest where approved = 1 and PayDay is null');
      Open;
    end;
  end
  else if RadioGroup.ItemIndex = 1 then
  begin
    with SQLQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from clientloanrequest where approved = "" and PayDay is null');
      Open;
    end;
  end;
  clientGrid.DataSource.DataSet.Refresh;
end;

end.
