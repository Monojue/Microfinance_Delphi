unit GroupLoanFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.DBGrids, Data.DBXMySQL, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr;

type
  TGroupLoanFM = class(TFrame)
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
    GroupGird: TDBGrid;
    MicrofinanceConnection: TSQLConnection;
    SQLQuery: TSQLQuery;
    DataSetProvider: TDataSetProvider;
    ClientDataSet: TClientDataSet;
    DataSource: TDataSource;
    procedure RadioGroupClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure editSearchChange(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses GroupLoanRequestForm;

procedure TGroupLoanFM.btnNewClick(Sender: TObject);
begin
  GroupLoanRequest.Show;
end;

procedure TGroupLoanFM.btnRefreshClick(Sender: TObject);
begin
  RadioGroupClick(Sender);
end;

procedure TGroupLoanFM.btnSearchClick(Sender: TObject);
begin
  with SQLQuery do
    begin
      Close;
      SQL.Clear;
      if cboxSearch.ItemIndex = 0 then
      begin
        SQL.Add('select * from grouploanrequest where LoanRequestID = "LR-'+editSearch.Text+'"');
      end
      else
      begin
        SQL.Add('select * from grouploanrequest where groupID = "GP-'+editSearch.Text+'"');
      end;

      Open;
      GroupGird.DataSource.DataSet.Refresh;
  end;
end;

procedure TGroupLoanFM.editSearchChange(Sender: TObject);
begin
  btnSearch.Enabled := True;
end;

procedure TGroupLoanFM.RadioGroupClick(Sender: TObject);
begin
   if RadioGroup.ItemIndex = 0 then
  begin
    with SQLQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from grouploanrequest where approved = 1 and PayDay = ""');
      Open;
    end;
  end
  else if RadioGroup.ItemIndex = 2 then
  begin
    with SQLQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from grouploanrequest where approved = "" and PayDay = ""');
      Open;
    end;
  end;
  GroupGird.DataSource.DataSet.Refresh;
end;

end.
