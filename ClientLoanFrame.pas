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
    clientGrid: TDBGrid;
    MicrofinanceConnection: TSQLConnection;
    SQLQuery: TSQLQuery;
    DataSetProvider: TDataSetProvider;
    ClientDataSet: TClientDataSet;
    DataSource: TDataSource;
    ClientDataSetLoanRequestID: TStringField;
    ClientDataSetClientID: TStringField;
    ClientDataSetClientName: TStringField;
    ClientDataSetRequestDate: TStringField;
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
    procedure clientGridCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
data : array of string;

implementation

{$R *.dfm}

uses ClientLoanRequestForm, ViewDetails;


procedure TClientLoanFM.btnNewClick(Sender: TObject);
begin
  ClientLoanRequest.Show;
end;

procedure TClientLoanFM.btnPayClick(Sender: TObject);
begin
  if btnPay.Caption = 'Pay' then
  begin
    frmDetails.setAD('accept');
  end
  else if btnPay.Caption = 'Inform' then
  begin
     frmDetails.setAD('decline');
  end;
  frmDetails.setformType('clientloan', data);
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

procedure TClientLoanFM.clientGridCellClick(Column: TColumn);
begin
  SetLength(data, 6);
  data[0] :=  ClientGrid.Fields[0].AsString;
  data[1] :=  ClientGrid.Fields[1].AsString;
  data[2] :=  ClientGrid.Fields[4].AsString;
  data[3] :=  ClientGrid.Fields[5].AsString;
  data[4] :=  ClientGrid.Fields[6].AsString;
  data[5] :=  ClientGrid.Fields[7].AsString;
  btnPay.Enabled := True;
  btnDelete.Enabled := True;
end;

procedure TClientLoanFM.editSearchChange(Sender: TObject);
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

procedure TClientLoanFM.RadioGroupClick(Sender: TObject);
begin

  if RadioGroup.ItemIndex = 0 then
  begin
    btnPay.Caption := 'Pay';
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
    btnPay.Caption := 'Inform';
    with SQLQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from clientloanrequest where approved = 2 and PayDay is null');
      Open;
    end;
  end;
  clientGrid.DataSource.DataSet.Refresh;
  btnPay.Enabled := False;
  btnDelete.Enabled := False;
end;

end.
