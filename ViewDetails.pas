unit ViewDetails;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmDetails = class(TForm)
    GridPanel1: TGridPanel;
    TopGrip: TGridPanel;
    lblID: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    lblDate: TLabel;
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
    Label16: TLabel;
    Label22: TLabel;
    Label28: TLabel;
    Label34: TLabel;
    Label40: TLabel;
    lblGID: TLabel;
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
    GridPanel2: TGridPanel;
    Label17: TLabel;
    lblAmount: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label27: TLabel;
    lblRate: TLabel;
    Label30: TLabel;
    Label41: TLabel;
    lblFees: TLabel;
    Label43: TLabel;
    lblDuration: TLabel;
    Label36: TLabel;
    GridPanel3: TGridPanel;
    memoRemark: TMemo;
    GridPanel4: TGridPanel;
    btnAccept: TButton;
    btnDecline: TButton;
    btnCancel: TButton;
    Label3: TLabel;

    procedure FormShow(Sender: TObject);
    procedure setClientData(data : array of string);
    procedure setGroupData(data : array of string);
    procedure btnAcceptClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure setformType(formtype : string; data : array of string);
  end;

var
  frmDetails: TfrmDetails;
  frmtype : string;

implementation

{$R *.dfm}

uses MyQury;

{ TfrmDetails }

procedure TfrmDetails.btnAcceptClick(Sender: TObject);
var
approve : array of string;
begin
  SetLength(approve, 2);
  approve[0] := lblID.Caption;
  approve[1] := '1';
  if UpdateData('loanrequest',approve) then
  begin
    ShowMessage('New Loan Request is Approved Sucessfully!');
  end
  else
  begin
    ShowMessage('Failed to Approve Request!');
  end;
end;

procedure TfrmDetails.FormShow(Sender: TObject);
begin
  if (frmtype = 'clientreport') or (frmtype = 'clientloan') then
  begin
    clientGrid.Visible := True;
    groupGrid.Visible := False;
  end
  else if (frmtype = 'groupreport') or (frmtype = 'grouploan') then
  begin
    clientGrid.Visible := False;
    groupGrid.Visible := True;
  end;

  if (frmtype = 'clientreport') or (frmtype = 'groupreport') then
  begin
    btnAccept.Caption := 'Accept';
    btnDecline.Caption := 'Decline';
    btnAccept.Visible := True;
  end
  else if (frmtype = 'clientloan') or (frmtype = 'grouploan') then
  begin
    btnDecline.Caption := 'Pay';
    btnAccept.Visible := False;
  end;
end;



procedure TfrmDetails.setClientData(data: array of string);
begin
    lblID.Caption := data[0];
    lblCID.Caption := data[1];
    lblAmount.Caption := data[2];
    lblDuration.Caption := data[3];
    lblRate.Caption := data[4];
    lblFees.Caption := '1%';
    memoRemark.Text := data[5];


    lblName.Caption := GetClientDetailsFromID(data[1])[0];
    lblNRC.Caption := GetClientDetailsFromID(data[1])[1];
    lblDOB.Caption := GetClientDetailsFromID(data[1])[2];
    lblAddress.Caption := GetClientDetailsFromID(data[1])[3];
    lblPhone.Caption := GetClientDetailsFromID(data[1])[4];
    lblHome.Caption := GetClientDetailsFromID(data[1])[5];
    lblJob.Caption := GetClientDetailsFromID(data[1])[6];
    lblSalary.Caption := GetClientDetailsFromID(data[1])[7];
end;

procedure TfrmDetails.setformType(formtype: string; data : array of string);
begin
  frmtype := formtype;
  if (frmtype = 'clientreport') or (frmtype = 'clientloan') then
  begin
    setClientData(data);
  end
  else if (frmtype = 'groupreport') or (frmtype = 'grouploan') then
  begin
    setGroupData(data);
  end;

end;

procedure TfrmDetails.setGroupData(data: array of string);
begin
    lblID.Caption := data[0];
    lblGID.Caption := data[1];
    lblAmount.Caption := data[2];
    lblDuration.Caption := data[3];
    lblRate.Caption := data[4];
    lblFees.Caption := '1%';
    memoRemark.Text := data[5];

    lblLeadID.Caption := GetGroupDetailsFromID(data[1])[0];
    lblLeadName.Caption := GetGroupDetailsFromID(data[1])[1];
    lblM1ID.Caption := GetGroupDetailsFromID(data[1])[2];
    lblM1Name.Caption := GetGroupDetailsFromID(data[1])[3];
    lblM2ID.Caption := GetGroupDetailsFromID(data[1])[4];
    lblM2Name.Caption := GetGroupDetailsFromID(data[1])[5];
    lblM3ID.Caption := GetGroupDetailsFromID(data[1])[6];
    lblM3Name.Caption := GetGroupDetailsFromID(data[1])[7];
    lblM4ID.Caption := GetGroupDetailsFromID(data[1])[8];
    lblM4Name.Caption := GetGroupDetailsFromID(data[1])[9];

end;

end.
