unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Tabs, Vcl.ComCtrls,
  LoanFrame, Vcl.ExtCtrls, Data.DB, Data.DBXMySQL,
  Data.FMTBcd, Data.SqlExpr, Datasnap.DBClient, Datasnap.Provider, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, ClientFrame, GroupFrame, SettingFrame, ClientLoanFrame,
  GroupLoanFrame, ReportFrame, RepaymentFrame;

type
  TMainForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TGroupFM1: TGroupFM;
    TClientFM1: TClientFM;
    TabSheet4: TTabSheet;
    TabSheet3: TTabSheet;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TClientLoanFM1: TClientLoanFM;
    TGroupLoanFM1: TGroupLoanFM;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TReportFM1: TReportFM;
    TRepaymentFM1: TRepaymentFM;
    TSettingFM1: TSettingFM;
    procedure PageControl1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  MainForm: TMainForm;
  loginRole : string;

implementation

{$R *.dfm}

uses DataModule;


procedure TMainForm.FormCreate(Sender: TObject);
begin
  if loginRole = 'Staff' then
  begin
    PageControl1.Pages[4].TabVisible := false;
    PageControl1.Pages[5].TabVisible := false;
  end;
end;

procedure TMainForm.PageControl1Change(Sender: TObject);
begin
  TSettingFM1.GetIData;
  TSettingFM1.GetGData;
  TRepaymentFM1.RadioGroupClick(Sender);
  TGroupFM1.btnRefreshClick(Sender);
  TClientFM1.btnRefreshClick(Sender);
  TClientLoanFM1.btnRefreshClick(Sender);
  TGroupLoanFM1.btnRefreshClick(Sender);
  TReportFM1.btnRefreshClick(Sender);
end;

end.
