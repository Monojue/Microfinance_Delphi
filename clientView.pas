unit clientView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.ExtCtrls;

type
  TfrmClientView = class(TForm)
    MainGrip: TGridPanel;
    BtmGrip: TGridPanel;
    btnClose: TButton;
    RelativePanel1: TRelativePanel;
    Label3: TLabel;
    lable: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    JOB: TLabel;
    Label14: TLabel;
    TopGrip: TGridPanel;
    lblID: TLabel;
    Label1: TLabel;
    lblName: TLabel;
    lblNRC: TLabel;
    lblDOB: TLabel;
    lblAddress: TLabel;
    lblPhone: TLabel;
    lblJob: TLabel;
    lblSalary: TLabel;
    lblHome: TLabel;
    procedure prepareView(ID : string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientView: TfrmClientView;

implementation

{$R *.dfm}

uses MyQury;

{ TfrmClientView }

procedure TfrmClientView.prepareView(ID: string);
begin
  lblID.Caption := ID;
  lblName.Caption := GetClientDetailsFromID(ID)[0];
  lblNRC.Caption := GetClientDetailsFromID(ID)[1];
  lblDOB.Caption := GetClientDetailsFromID(ID)[2];
  lblAddress.Caption := GetClientDetailsFromID(ID)[3];
  lblPhone.Caption := GetClientDetailsFromID(ID)[4];
  lblHome.Caption := GetClientDetailsFromID(ID)[5];
  lblJob.Caption := GetClientDetailsFromID(ID)[6];
  lblSalary.Caption := GetClientDetailsFromID(ID)[7];
end;

end.
