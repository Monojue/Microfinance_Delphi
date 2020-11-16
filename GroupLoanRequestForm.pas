unit GroupLoanRequestForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Grids,
  Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB, Vcl.DBGrids;

type
  TGroupLoanRequest = class(TForm)
    MainGrid: TGridPanel;
    TopGrip: TGridPanel;
    lblID: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    lblDate: TLabel;
    MidGrid: TGridPanel;
    GridPanel1: TGridPanel;
    btnRequest: TButton;
    btnCancel: TButton;
    DBGrid1: TDBGrid;
    RelativePanel3: TRelativePanel;
    barAmount: TTrackBar;
    Label16: TLabel;
    Label19: TLabel;
    barDuration: TTrackBar;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    btnCalculate: TButton;
    editAmount: TLabel;
    editDuration: TLabel;
    centerGrid: TGridPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label22: TLabel;
    Label3: TLabel;
    Label34: TLabel;
    Label40: TLabel;
    lblLeadName: TLabel;
    lblLeadID: TLabel;
    lblM1Name: TLabel;
    lblM1ID: TLabel;
    lblM2Name: TLabel;
    lblM2ID: TLabel;
    lblM3Name: TLabel;
    lblM3ID: TLabel;
    lblM4Name: TLabel;
    lblM4ID: TLabel;
    Label5: TLabel;
    lblGID: TLabel;
    btnSelect: TButton;
    procedure setAutoID;
    function check : boolean;
    procedure btnSelectClick(Sender: TObject);
    procedure btnRequestClick(Sender: TObject);
    procedure barAmountChange(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure barDurationChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function setSelectClient(data: array of string): boolean;
  end;

var
  GroupLoanRequest: TGroupLoanRequest;
  today : TDateTime;

implementation

{$R *.dfm}

uses shareFunction, frmSelector;

{ TClientLoanRequest }


procedure TGroupLoanRequest.btnCancelClick(Sender: TObject);
begin
  Free;
  Close;
end;

procedure TGroupLoanRequest.btnRequestClick(Sender: TObject);
begin
  if check then
  begin

  end
  else
  begin

  end;
end;

function TGroupLoanRequest.check: boolean;
begin
//  if lblCID.Caption = '' then
//  begin
//    ShowMessage('Please Select Client');
//  end
//  else if (editName.Text = EmptyStr) or (cboxNo.Text = EmptyStr) or
//   (cboxR.Text = EmptyStr) or (editNRC.Text = EmptyStr) or
//   (editAddress.Text = EmptyStr) or (editPhone.Text = EmptyStr) or
//   (editJob.Text = EmptyStr) or (editSalary.Text = EmptyStr) or
//   (editRelation.Text = EmptyStr) then
//  begin
//    ShowMessage('Please Type Guarantor Information!');
//    Exit(False);
//  end
//  else if (editAmount.Caption = EmptyStr) or (editDuration.Caption = EmptyStr) then
//  begin
//    ShowMessage('Please Choose Loan Information!');
//    Exit(False);
//  end;
//  Result := True;
end;

procedure TGroupLoanRequest.setAutoID;
begin
  lblID.Caption := getAutoID('LoanRequestID', 'LoanRequest', 'LR-');
  lblDate.Caption := FormatDateTime('dd/MM/yyyy', today);
end;

procedure TGroupLoanRequest.btnSelectClick(Sender: TObject);
begin
  MySelector.setFormType('clientRequest');
  MySelector.Show;
end;


function TGroupLoanRequest.setSelectClient(data: array of string): boolean;
begin
//  lblCID.Caption := data[0];
//  lblName.Caption := data[1];
//  lblNRC.Caption := data[2];
//  lblDOB.Caption := data[5];
//  lblAddress.Caption := data[3];
//  lblPhone.Caption := data[4];
//  lblHome.Caption := data[6];
//  lblJob.Caption := data[7];
//  lblSalary.Caption := data[8];
//  Result := True;
end;

procedure TGroupLoanRequest.barAmountChange(Sender: TObject);
begin
  editAmount.Caption := barAmount.Position.ToString;
end;

procedure TGroupLoanRequest.barDurationChange(Sender: TObject);
begin
  editDuration.Caption := barDuration.Position.ToString;
end;

end.
