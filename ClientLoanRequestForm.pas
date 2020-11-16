unit ClientLoanRequestForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Grids,
  Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB, Vcl.DBGrids, Datasnap.DBClient;

type
  TClientLoanRequest = class(TForm)
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
    GridPanel2: TGridPanel;
    Label11: TLabel;
    lblCID: TLabel;
    Label32: TLabel;
    lblName: TLabel;
    Label38: TLabel;
    lblNRC: TLabel;
    Label44: TLabel;
    lblDOB: TLabel;
    Label50: TLabel;
    lblAddress: TLabel;
    Label56: TLabel;
    lblPhone: TLabel;
    Label62: TLabel;
    lblHome: TLabel;
    Label68: TLabel;
    lblJob: TLabel;
    Label74: TLabel;
    lblSalary: TLabel;
    btnSelect: TButton;
    RelativePanel3: TRelativePanel;
    barAmount: TTrackBar;
    Label16: TLabel;
    Label19: TLabel;
    barDuration: TTrackBar;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    lblRate: TLabel;
    lblFees: TLabel;
    btnCalculate: TButton;
    editAmount: TLabel;
    editDuration: TLabel;
    RelativePanel2: TRelativePanel;
    Label6: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label89: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    cboxNo: TComboBox;
    cboxR: TComboBox;
    editNRC: TEdit;
    editName: TEdit;
    editPhone: TEdit;
    editJob: TEdit;
    editSalary: TEdit;
    editRelation: TEdit;
    editAddress: TMemo;
    Label22: TLabel;
    StringGrid: TStringGrid;
    Label2: TLabel;
    Label3: TLabel;
    procedure setAutoID;
    function check : boolean;
    procedure btnSelectClick(Sender: TObject);
    procedure btnRequestClick(Sender: TObject);
    procedure barAmountChange(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure barDurationChange(Sender: TObject);
    procedure btnCalculateClick(Sender: TObject);
    procedure GetILoanSetting;
    procedure FormShow(Sender: TObject);
    procedure calculator(amount : Integer; duration : Integer; rate : Double);
    procedure DeleteRow(Grid: TStringGrid);
  private
    { Private declarations }
  public
    { Public declarations }
    function setSelectClient(data: array of string): boolean;
  end;

var
  ClientLoanRequest: TClientLoanRequest;
  today : TDateTime;
  MinAmount : Integer;
  MaxAmount : Integer;
  AmountInterval : Integer;
  MinDuration : Integer;
  MaxDuration : Integer;
  DurationInterval : Integer;
  Rate : Float32;
  Fees : Integer;

implementation

{$R *.dfm}

uses shareFunction, frmSelector, GroupLoanRequestForm, MyQury;

{ TClientLoanRequest }


procedure TClientLoanRequest.DeleteRow(Grid: TStringGrid);
var
  i: Integer;
begin
  for i := 1 to Grid.RowCount -1 do
    Grid.Rows[i] := Grid.Rows[i + Grid.RowCount];
  Grid.RowCount := 0;
end;

procedure TClientLoanRequest.btnCalculateClick(Sender: TObject);

begin


  if (editAmount.Caption <> EmptyStr) or (editDuration.Caption <> EmptyStr) then
  begin
    with StringGrid do
    begin
      Cols[0].Add('No');
      Cols[1].Add('Principal Outstanding');
      Cols[2].Add('Principal');
      Cols[3].Add('Interest');
      Cols[4].Add('Installment');
      ColWidths[0] := 50;
      ColWidths[1] := 120;
      ColWidths[2] := 120;
      ColWidths[3] := 120;
      ColWidths[4] := 120;
    end;
    calculator(StrToInt(editAmount.Caption), StrToInt(editDuration.Caption), StrToFloat(lblRate.Caption));
  end
  else
  begin
    ShowMessage('Please Fill Loan Information');
  end;
end;

procedure TClientLoanRequest.btnCancelClick(Sender: TObject);
begin
  Free;
  Close;
end;

procedure TClientLoanRequest.btnRequestClick(Sender: TObject);
var
NRC : string;
data : array of string;
update, insert, insert1 : boolean;
begin
  if check then
  begin
    SetLength(data, 8);
    data[0] := lblCID.Caption;
    data[1] := editName.Text;
    data[2] := editJob.Text;
    data[3] := editSalary.Text;
    data[4] := editRelation.Text;
    data[5] := editAddress.Text;
    data[6] := editPhone.Text;
    data[7] := NRC;
    update := UpdateData('guarantor' , data);

    if update then
    begin
    SetLength(data, 5);
    data[0] := lblID.Caption;
    data[1] := 'Individual';
    data[2] := editAmount.Caption;
    data[3] := editDuration.Caption;
    data[4] := lblRate.Caption;
    insert := InsertData('loanrequest',data);

      if insert then
      begin
      SetLength(data, 3);
      data[0] := lblCID.Caption;
      data[1] := lblID.Caption;
      data[2] := lblDate.Caption;
      insert1 := InsertData('clientdetails',data);
      end;
    end;

    if update and insert and insert1 then
    begin
      ShowMessage('Saved Successfully!');
    end
    else if not update then
    begin
       ShowMessage('Failed to Save Guarantor Information Request!');
    end
    else if not insert then
    begin
      ShowMessage('Failed to Save Loan New Request!');
    end
    else if not insert1 then
    begin
      ShowMessage('Failed to Save Client Loan New Request!');
    end;
  end
  else
  begin

  end;
end;

procedure TClientLoanRequest.calculator(amount, duration: Integer;
  rate: Float64);
var
TotalRows, interest, principal : Integer;
TotalPrincipal, TotalInterest, TotalInstallment : Integer;
I : Integer;
begin
 DeleteRow(StringGrid);
  TotalPrincipal := 0;
  TotalInterest := 0;
  TotalInstallment := 0;
  principal := Round(amount/duration);

  for I := 0 to duration - 1 do
  begin
    interest := Round((amount*rate)/100);
    StringGrid.RowCount := StringGrid.RowCount+1;
    StringGrid.Cells[0,StringGrid.RowCount-1]:=IntToStr(StringGrid.RowCount-1);
    StringGrid.Cells[1,StringGrid.RowCount-1]:= amount.ToString;
    StringGrid.Cells[2,StringGrid.RowCount-1]:= principal.ToString;
    StringGrid.Cells[3,StringGrid.RowCount-1]:= interest.ToString;
    StringGrid.Cells[4,StringGrid.RowCount-1]:= (principal + interest).ToString;
    amount := amount - principal;
    TotalPrincipal := TotalPrincipal + principal;
    TotalInterest := TotalInterest + interest;
		TotalInstallment := TotalInstallment + principal+interest;

  end;
    StringGrid.RowCount := StringGrid.RowCount + 1;
    TotalRows := StringGrid.RowCount -1 ;
    StringGrid.Cells[1,TotalRows] := 'Total';
    StringGrid.Cells[2,TotalRows] := TotalPrincipal.ToString;
    StringGrid.Cells[3,TotalRows] := TotalInterest.ToString;
    StringGrid.Cells[4,TotalRows] := TotalInstallment.ToString;

end;

function TClientLoanRequest.check: boolean;
begin
  if lblCID.Caption = '' then
  begin
    ShowMessage('Please Select Client');
    Exit(False);
  end
  else if (editName.Text = EmptyStr) or (cboxNo.Text = EmptyStr) or
   (cboxR.Text = EmptyStr) or (editNRC.Text = EmptyStr) or
   (editAddress.Text = EmptyStr) or (editPhone.Text = EmptyStr) or
   (editJob.Text = EmptyStr) or (editSalary.Text = EmptyStr) or
   (editRelation.Text = EmptyStr) then
  begin
    ShowMessage('Please Type Guarantor Information!');
    Exit(False);
  end
  else if (editAmount.Caption = EmptyStr) or (editDuration.Caption = EmptyStr) then
  begin
    ShowMessage('Please Choose Loan Information!');
    Exit(False);
  end;
  Result := True;
end;

procedure TClientLoanRequest.FormShow(Sender: TObject);
begin
  setAutoID;
  GetILoanSetting;
  barAmount.Min := MinAmount;
  barAmount.Max := MaxAmount;
  barDuration.Min := MinDuration;
  barDuration.Max := MaxDuration;
  barAmount.Position := MinAmount;
  barDuration.Position := MinDuration;
  barAmount.SetTick(AmountInterval);
  barDuration.SetTick(DurationInterval);
  lblRate.Caption :=  Rate.ToString;
  lblFees.Caption :=  Fees.ToString;
end;

procedure TClientLoanRequest.GetILoanSetting;
var
data : array of string;
begin
    try
      MinAmount := MyQury.GetIndividualLoanSetting[0].ToInteger;
      MaxAmount := MyQury.GetIndividualLoanSetting[1].ToInteger;
      MinDuration := MyQury.GetIndividualLoanSetting[2].ToInteger;
      MaxDuration := MyQury.GetIndividualLoanSetting[3].ToInteger;
      AmountInterval := MyQury.GetIndividualLoanSetting[4].ToInteger;
      DurationInterval := MyQury.GetIndividualLoanSetting[5].ToInteger;
      Rate := MyQury.GetIndividualLoanSetting[6].ToSingle;
      Fees := MyQury.GetIndividualLoanSetting[7].ToInteger;
  except on E: Exception do
  begin
      SetLength(data,12);
      data[0] :=  shareFunction.getAutoID('ID', 'loansetting', 'Ls-');
      data[1] := '100000';
      data[2] := '1000000';
      data[3] := '6';
      data[4] := '24';
      data[5] := '100000';
      data[6] := '3';
      data[7] := '2.33';
      data[8] := '1';
      data[9] :=  FormatDateTime('yyyy/MM/dd', today);
      data[10] := 'Individual';
      data[11] := 'OF-0000001';
      InsertData('Iloansetting', data);
      GetILoanSetting;
   end;
  end;
end;

procedure TClientLoanRequest.setAutoID;
begin
  lblID.Caption := getAutoID('LoanRequestID', 'LoanRequest', 'LR-');
  lblDate.Caption := FormatDateTime('dd/MM/yyyy', today);
end;

procedure TClientLoanRequest.btnSelectClick(Sender: TObject);
begin
  MySelector.setFormType('clientRequest');
  MySelector.Show;
end;


function TClientLoanRequest.setSelectClient(data: array of string): boolean;
begin
  lblCID.Caption := data[0];
  lblName.Caption := data[1];
  lblNRC.Caption := data[2];
  lblDOB.Caption := data[5];
  lblAddress.Caption := data[3];
  lblPhone.Caption := data[4];
  lblHome.Caption := data[6];
  lblJob.Caption := data[7];
  lblSalary.Caption := data[8];
  Result := True;
end;

procedure TClientLoanRequest.barAmountChange(Sender: TObject);
begin
  editAmount.Caption := barAmount.Position.ToString;
end;

procedure TClientLoanRequest.barDurationChange(Sender: TObject);
begin
  editDuration.Caption := barDuration.Position.ToString;
end;

end.
