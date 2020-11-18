unit ReportFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Data.DBXMySQL, Data.FMTBcd, Data.SqlExpr,
  Datasnap.DBClient, Datasnap.Provider;

type
  TReportFM = class(TFrame)
    MainGrid: TGridPanel;
    GridPanel2: TGridPanel;
    btnViewDetails: TButton;
    btnRefresh: TButton;
    IndividualPanel: TPanel;
    ClientGrid: TDBGrid;
    GroupPanel: TPanel;
    GroupGrid: TDBGrid;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    DataSetProvider2: TDataSetProvider;
    ClientDataSet2: TClientDataSet;
    DataSource2: TDataSource;
    SQLQuery1: TSQLQuery;
    SQLQuery2: TSQLQuery;
    ClientDataSet1LoanRequestID: TStringField;
    ClientDataSet1ClientID: TStringField;
    ClientDataSet1ClientName: TStringField;
    ClientDataSet1Amount: TIntegerField;
    ClientDataSet1Duration: TIntegerField;
    ClientDataSet1InterestRate: TIntegerField;
    ClientDataSet1Remark: TStringField;
    MicrofinanceConnection: TSQLConnection;
    procedure btnViewDetailsClick(Sender: TObject);
    procedure ClientGridCellClick(Column: TColumn);
    procedure GroupGridCellClick(Column: TColumn);
    procedure btnRefreshClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
gridType : string;
data : array of string;

implementation

{$R *.dfm}

uses ViewDetails;


procedure TReportFM.btnRefreshClick(Sender: TObject);
begin
  btnViewDetails.Enabled := False;
  gridType := EmptyStr;
end;

procedure TReportFM.btnViewDetailsClick(Sender: TObject);
begin
  frmDetails.setformType(gridType, data);
  frmDetails.Show;
end;

procedure TReportFM.ClientGridCellClick(Column: TColumn);
begin
  gridType := 'clientreport';
  btnViewDetails.Enabled := True;
  SetLength(data, 6);

  data[0] :=  ClientGrid.Fields[0].AsString;
  data[1] :=  ClientGrid.Fields[1].AsString;
  data[2] :=  ClientGrid.Fields[3].AsString;
  data[3] :=  ClientGrid.Fields[4].AsString;
  data[4] :=  ClientGrid.Fields[5].AsString;
  data[5] :=  ClientGrid.Fields[6].AsString;
end;

procedure TReportFM.GroupGridCellClick(Column: TColumn);
begin
  gridType := 'groupreport';
  btnViewDetails.Enabled := True;
  SetLength(data, 6);

  data[0] :=  GroupGrid.Fields[0].AsString;
  data[1] :=  GroupGrid.Fields[1].AsString;
  data[2] :=  GroupGrid.Fields[8].AsString;
  data[3] :=  GroupGrid.Fields[9].AsString;
  data[4] :=  GroupGrid.Fields[10].AsString;
  data[5] :=  GroupGrid.Fields[11].AsString;
end;

end.
