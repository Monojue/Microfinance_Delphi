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
    clientGrid: TDBGrid;
    MicrofinanceConnection: TSQLConnection;
    SQLQuery: TSQLQuery;
    DataSetProvider: TDataSetProvider;
    DataSource: TDataSource;
    ClientDataSet: TClientDataSet;
    ClientDataSetLoanRequestID: TStringField;
    ClientDataSetGroupID: TStringField;
    ClientDataSetLeaderName: TStringField;
    ClientDataSetMember1Name: TStringField;
    ClientDataSetMember2Name: TStringField;
    ClientDataSetMember3Name: TStringField;
    ClientDataSetMember4Name: TStringField;
    ClientDataSetRequestDate: TStringField;
    ClientDataSetDueDate: TStringField;
    ClientDataSetAmount: TIntegerField;
    ClientDataSetDuration: TIntegerField;
    ClientDataSetInterestRate: TIntegerField;
    ClientDataSetPayDay: TStringField;
    procedure btnViewDetailsClick(Sender: TObject);
    procedure clientGridCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtype, ID, loanID, amount, duration, rate : string;

implementation

{$R *.dfm}

uses Repayment_u;

procedure TRepaymentFM.btnViewDetailsClick(Sender: TObject);
begin
  frmRepayment.prepareView(frmtype, ID, loanID, amount, duration, rate);
end;

procedure TRepaymentFM.clientGridCellClick(Column: TColumn);
begin
  if RadioGroup.ItemIndex = 0 then
  begin
  frmtype := 'client';
  loanID := clientGrid.Fields[0].AsString;

  end
  else if RadioGroup.ItemIndex = 1 then
  begin
  frmtype := 'group';
  loanID := clientGrid.Fields[0].AsString;
  end;
end;

end.
