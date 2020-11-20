unit Repayment_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids;

type
  TfrmRepayment = class(TForm)
    MainGrid: TGridPanel;
    TopGrip: TGridPanel;
    lblID: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    lblDate: TLabel;
    MidGrid: TGridPanel;
    GridPanel1: TGridPanel;
    btnPay: TButton;
    btnCancel: TButton;
    Panel: TPanel;
    clientGrid: TGridPanel;
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
    groupGrid: TGridPanel;
    Label2: TLabel;
    Label12: TLabel;
    Label3: TLabel;
    Label22: TLabel;
    Label28: TLabel;
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
    btnAdd1: TButton;
    btnAdd2: TButton;
    btnAdd3: TButton;
    btnAdd4: TButton;
    lblM4ID: TLabel;
    btnAdd5: TButton;
    Label5: TLabel;
    lblGID: TLabel;
    GridPanel2: TGridPanel;
    Label13: TLabel;
    lblDueDate: TLabel;
    Label17: TLabel;
    lblPO: TLabel;
    Label21: TLabel;
    lblP: TLabel;
    Label26: TLabel;
    lblInterest: TLabel;
    Label31: TLabel;
    lblInstallment: TLabel;
    StringGrid: TStringGrid;
    procedure setAutoID();
    procedure setClientData();
    procedure setGroupData();
    procedure calculator();
    procedure DeleteRow(Grid: TStringGrid);
    procedure ViewClientDetails(ID : string);
    procedure btnAdd1Click(Sender: TObject);
    procedure btnAdd2Click(Sender: TObject);
    procedure btnAdd3Click(Sender: TObject);
    procedure btnAdd4Click(Sender: TObject);
    procedure btnAdd5Click(Sender: TObject);
    procedure PaymentSetData();
    procedure btnPayClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure prepareView(sform, sID, sloanID, samount, sduration, srate, sduedate: string);
  end;

var
  frmRepayment: TfrmRepayment;
  today : TDateTime;
  ID : string;
  loanrequestID : string;
  amount : Integer;
  duration : Integer;
  frmtype : string;
  rate : Float64;
  duedate : string;

implementation

{$R *.dfm}

uses shareFunction, MyQury, clientView, ViewDetails;

{ TfrmRepayment }

procedure TfrmRepayment.prepareView(sform, sID, sloanID, samount, sduration, srate, sduedate : string);
begin
  today := Now;
  frmtype := sform;
  ID := sID;
  loanrequestID := sloanID;
  amount := StrToInt(samount);
  duration := StrToInt(sduration);
  rate := StrToFloat(srate);
  duedate := sduedate;
  if frmtype = 'client' then
  begin
    clientGrid.Visible := True;
    groupGrid.Visible := False;
    setClientData;
  end
  else
  begin
    clientGrid.Visible := False;
    groupGrid.Visible := True;
    setGroupData;
  end;
  setAutoID;
  calculator;
  PaymentSetData;
end;

procedure TfrmRepayment.setAutoID;
begin
   today := Now;
   lblID.Caption := getAutoID('RepaymentID', 'Repayment', 'RE-');
   lblDate.Caption := FormatDateTime('yyyy/MM/dd', today);
end;

procedure TfrmRepayment.setClientData;
begin
    lblCID.Caption := ID;
    lblName.Caption := GetClientDetailsFromID(ID)[0];
    lblNRC.Caption := GetClientDetailsFromID(ID)[1];
    lblDOB.Caption := GetClientDetailsFromID(ID)[2];
    lblAddress.Caption := GetClientDetailsFromID(ID)[3];
    lblPhone.Caption := GetClientDetailsFromID(ID)[4];
    lblHome.Caption := GetClientDetailsFromID(ID)[5];
    lblJob.Caption := GetClientDetailsFromID(ID)[6];
    lblSalary.Caption := GetClientDetailsFromID(ID)[7];
end;

procedure TfrmRepayment.setGroupData;
begin
    lblGID.Caption := ID;
    lblLeadID.Caption := GetGroupDetailsFromID(ID)[0];
    lblLeadName.Caption := GetGroupDetailsFromID(ID)[1];
    lblM1ID.Caption := GetGroupDetailsFromID(ID)[2];
    lblM1Name.Caption := GetGroupDetailsFromID(ID)[3];
    lblM2ID.Caption := GetGroupDetailsFromID(ID)[4];
    lblM2Name.Caption := GetGroupDetailsFromID(ID)[5];
    lblM3ID.Caption := GetGroupDetailsFromID(ID)[6];
    lblM3Name.Caption := GetGroupDetailsFromID(ID)[7];
    lblM4ID.Caption := GetGroupDetailsFromID(ID)[8];
    lblM4Name.Caption := GetGroupDetailsFromID(ID)[9];
end;

procedure TfrmRepayment.DeleteRow(Grid: TStringGrid);
var
  i: Integer;
begin
  for i := 1 to Grid.RowCount -1 do
    Grid.Rows[i] := Grid.Rows[i + Grid.RowCount];
     Grid.RowCount := 0;
end;

procedure TfrmRepayment.PaymentSetData();
var
num : Integer;
begin
  num := GetPaymentNumber(loanrequestID);
  lblDueDate.Caption := duedate;
  lblPO.Caption := StringGrid.Cells[1,num];
  lblP.Caption := StringGrid.Cells[2,num];
  lblInterest.Caption := StringGrid.Cells[3,num];
  lblInstallment.Caption := StringGrid.Cells[4,num];
end;

procedure TfrmRepayment.btnAdd1Click(Sender: TObject);
begin
  ViewClientDetails(lblLeadID.Caption);
end;

procedure TfrmRepayment.btnAdd2Click(Sender: TObject);
begin
  ViewClientDetails(lblM1ID.Caption);
end;

procedure TfrmRepayment.btnAdd3Click(Sender: TObject);
begin
  ViewClientDetails(lblM2ID.Caption);
end;

procedure TfrmRepayment.btnAdd4Click(Sender: TObject);
begin
  ViewClientDetails(lblM3ID.Caption);
end;

procedure TfrmRepayment.btnAdd5Click(Sender: TObject);
begin
  ViewClientDetails(lblM4ID.Caption);
end;

procedure TfrmRepayment.btnPayClick(Sender: TObject);
var
data : array of string;
fs: TFormatSettings;
begin
  fs := TFormatSettings.Create;
  fs.DateSeparator := '/';
  fs.ShortDateFormat := 'yyyy/MM/dd';
  fs.TimeSeparator := ':';
  fs.ShortTimeFormat := 'hh:mm';
  fs.LongTimeFormat := 'hh:mm:ss';

  SetLength(data, 4);
  data[0] := lblID.Caption;
  data[1] := loanrequestID;
  data[2] := lblDate.Caption;
  data[3] := lblInstallment.Caption;
  if InsertData('repayment', data) then
  begin
    if UpdateDueDate(frmtype, CalculateDueDate(StrToDate(duedate,fs)), loanrequestID) then
    begin
      ShowMessage(lblInstallment.Caption+ ' is Paid Successfully!');
      Close;
    end
    else
    begin
       ShowMessage('Failed to Save new Pay Record!');
    end;
  end;
end;

procedure TfrmRepayment.ViewClientDetails(ID: string);
begin
  frmClientView.prepareView(ID);
  frmClientView.Show;
end;

procedure TfrmRepayment.calculator();
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

end.
