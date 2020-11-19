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
    StringGrid: TStringGrid;
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
    Label14: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    procedure setAutoID();
    procedure setClientData();
    procedure setGroupData();
    procedure calculator();
    procedure DeleteRow(Grid: TStringGrid);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure prepareView(sform, sID, sloanID, samount, sduration, srate : string);
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

implementation

{$R *.dfm}

uses shareFunction, MyQury;

{ TfrmRepayment }

procedure TfrmRepayment.prepareView(sform, sID, sloanID, samount, sduration, srate : string);
begin
  frmtype := sform;
  ID := sID;
  loanrequestID := sloanID;
  amount := StrToInt(samount);
  duration := StrToInt(sduration);
  rate := StrToFloat(srate);
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
  calculator;
end;

procedure TfrmRepayment.setAutoID;
begin
   today := Now;
   lblID.Caption := getAutoID('RepaymentID', 'Repayment', 'RE-');
   lblDate.Caption := FormatDateTime('yyyy/MM/dd', today);
end;



procedure TfrmRepayment.setClientData;
begin
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
