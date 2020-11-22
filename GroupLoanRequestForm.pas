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
    StringGrid: TStringGrid;
    procedure setAutoID;
    function check : boolean;
    procedure btnSelectClick(Sender: TObject);
    procedure btnRequestClick(Sender: TObject);
    procedure barAmountChange(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure barDurationChange(Sender: TObject);
    procedure GetGLoanSetting;
    procedure DeleteRow(Grid: TStringGrid);
    procedure btnCalculateClick(Sender: TObject);
    procedure calculator(amount, duration: Integer;
  rate: Float64);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function setSelectGroup(data: array of string): boolean;
  end;

var
  GroupLoanRequest: TGroupLoanRequest;
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

uses shareFunction, frmSelector, MyQury;

{ TClientLoanRequest }

procedure TGroupLoanRequest.DeleteRow(Grid: TStringGrid);
var
  i: Integer;
begin
  for i := 1 to Grid.RowCount -1 do
    Grid.Rows[i] := Grid.Rows[i + Grid.RowCount];
  Grid.RowCount := 0;
end;

procedure TGroupLoanRequest.FormShow(Sender: TObject);
begin
  setAutoID;
  GetGLoanSetting;
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

procedure TGroupLoanRequest.btnCalculateClick(Sender: TObject);
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

procedure TGroupLoanRequest.btnCancelClick(Sender: TObject);
begin
  Free;
  Close;
end;

procedure TGroupLoanRequest.btnRequestClick(Sender: TObject);
var
data : array of string;
insert, insert1 : boolean;
begin
  if check then
  begin

    SetLength(data, 5);
    data[0] := lblID.Caption;
    data[1] := 'Group';
    data[2] := editAmount.Caption;
    data[3] := editDuration.Caption;
    data[4] := lblRate.Caption;
    insert := InsertData('loanrequest',data);

    if insert then
    begin
    SetLength(data, 3);
    data[0] := lblGID.Caption;
    data[1] := lblID.Caption;
    data[2] := lblDate.Caption;
    insert1 := InsertData('groupdetails',data);
    end;

    if insert and insert1 then
    begin
      ShowMessage('Saved Successfully!');
      Close;
    end
    else if not insert then
    begin
      ShowMessage('Failed to Save Loan New Request!');
    end
    else if not insert1 then
    begin
      ShowMessage('Failed to Save Details!');
    end;
  end
  else
  begin

  end;
end;

procedure TGroupLoanRequest.calculator(amount, duration: Integer;
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

function TGroupLoanRequest.check: boolean;
begin
  if lblGID.Caption = '' then
  begin
    ShowMessage('Please Select Group');
  end

  else if (editAmount.Caption = EmptyStr) or (editDuration.Caption = EmptyStr) then
  begin
    ShowMessage('Please Choose Loan Information!');
    Exit(False);
  end;
  Result := True;
end;

procedure TGroupLoanRequest.GetGLoanSetting;
var
data : array of string;
begin
    try
      MinAmount := MyQury.GetGroupLoanSetting[0].ToInteger;
      MaxAmount := MyQury.GetGroupLoanSetting[1].ToInteger;
      MinDuration := MyQury.GetGroupLoanSetting[2].ToInteger;
      MaxDuration := MyQury.GetGroupLoanSetting[3].ToInteger;
      AmountInterval := MyQury.GetGroupLoanSetting[4].ToInteger;
      DurationInterval := MyQury.GetGroupLoanSetting[5].ToInteger;
      Rate := MyQury.GetGroupLoanSetting[6].ToSingle;
      Fees := MyQury.GetGroupLoanSetting[7].ToInteger;
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
      data[10] := 'Group';
      data[11] := 'OF-0000001';
      InsertData('Gloansetting', data);
      GetGLoanSetting;
   end;
  end;

end;

procedure TGroupLoanRequest.setAutoID;
begin
  today := Now;
  lblID.Caption := getAutoID('LoanRequestID', 'LoanRequest', 'LR-');
  lblDate.Caption := FormatDateTime('yyyy/MM/dd', today);
end;

procedure TGroupLoanRequest.btnSelectClick(Sender: TObject);
begin
  MySelector.setFormType('groupRequest');
  MySelector.Show;
end;


function TGroupLoanRequest.setSelectGroup(data: array of string): boolean;
begin

  if CheckAvaliable('Group', data[0]) then
  begin
    ShowMessage('This Group is Already Requested!');
    Exit(False);
  end
  else
  begin
    lblGID.Caption := data[0];
    lblLeadID.Caption := data[1];
    lblLeadName.Caption := data[2];
    lblM1ID.Caption := data[3];
    lblM1Name.Caption := data[4];
    lblM2ID.Caption := data[5];
    lblM2Name.Caption := data[6];
    lblM3ID.Caption := data[7];
    lblM3Name.Caption := data[8];
    lblM4ID.Caption := data[9];
    lblM4Name.Caption := data[10];
  end;
   Result := True;
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
