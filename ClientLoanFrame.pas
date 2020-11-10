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
    SQLQuery1: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    clientGrid: TDBGrid;
    ClientDataSet1LoanRequestID: TStringField;
    ClientDataSet1ClientID: TStringField;
    ClientDataSet1ClientName: TStringField;
    ClientDataSet1RequestDate: TStringField;
    ClientDataSet1DueDate: TStringField;
    ClientDataSet1Amount: TIntegerField;
    ClientDataSet1Duration: TIntegerField;
    ClientDataSet1InterestRate: TIntegerField;
    ClientDataSet1Remark: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
