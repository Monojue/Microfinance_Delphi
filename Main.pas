unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Tabs, Vcl.ComCtrls,
  LoanFrame, Vcl.ExtCtrls, Data.DB, Data.DBXMySQL,
  Data.FMTBcd, Data.SqlExpr, Datasnap.DBClient, Datasnap.Provider, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, ClientFrame, GroupFrame, SettingFrame, ClientLoanFrame,
  GroupLoanFrame;

type
  TMainForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TGroupFM1: TGroupFM;
    TClientFM1: TClientFM;
    TabSheet4: TTabSheet;
    TSettingFM1: TSettingFM;
    TabSheet3: TTabSheet;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TClientLoanFM1: TClientLoanFM;
    TGroupLoanFM1: TGroupLoanFM;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    procedure TSettingFM1btnIEditClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses DataModule;


procedure TMainForm.PageControl1Change(Sender: TObject);
begin
  TSettingFM1.GetIData;
  TSettingFM1.GetGData;
end;

procedure TMainForm.TSettingFM1btnIEditClick(Sender: TObject);
begin
  TSettingFM1.btnIEditClick(Sender);

end;

end.
