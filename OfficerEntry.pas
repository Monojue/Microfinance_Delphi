unit OfficerEntry;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.ExtCtrls;

type
  TfrmOfficerEntry = class(TForm)
    GridPanel1: TGridPanel;
    GridPanel2: TGridPanel;
    GridPanel4: TGridPanel;
    Label1: TLabel;
    lblID: TLabel;
    RelativePanel1: TRelativePanel;
    editName: TEdit;
    Label3: TLabel;
    editAddress: TEdit;
    lable: TLabel;
    Label8: TLabel;
    cboxNo: TComboBox;
    cboxR: TComboBox;
    editNRC: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    editPhone: TEdit;
    JOB: TLabel;
    Label14: TLabel;
    editUserName: TEdit;
    editPassword: TEdit;
    cboxRole: TComboBox;
    editCpassword: TEdit;
    Label2: TLabel;
    btnAdd: TButton;
    btnCancel: TButton;
    procedure btnAddClick(Sender: TObject);
    procedure clearFields;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOfficerEntry: TfrmOfficerEntry;

implementation

{$R *.dfm}

uses MyQury;

procedure TfrmOfficerEntry.btnAddClick(Sender: TObject);
var
NRC : string;
data : array of string;
begin
  if True then
  begin
    NRC := cboxNo.Text + '/' + cboxR.Text + '(N)'+ editNRC.Text;
    data[0] := lblID.Caption;
    data[1] := editName.Text;
    data[2] := editAddress.Text;
    data[3] := editPhone.Text;
    data[4] := NRC;
    data[5] := cboxRole.Text;
    data[6] := editUserName.Text;
    data[7] := editPassword.Text;

    if InsertData('Officer', data) then
    begin
      ShowMessage('Saved Successfully!');
      clearFields;
      Close;
    end
    else
    begin
      ShowMessage('Failed to Save new Record!');
    end;

  end
  else
  begin

  end;
end;

procedure TfrmOfficerEntry.clearFields;
begin
    editName.Text := '';
    editAddress.Text := '';
    cboxNo.ItemIndex := 0;
    cboxR.ItemIndex := 0;
    editNRC.Text := '';
    editPhone.Text := '';
    editUserName.Text := '';
    editPassword.Text := '';
    cboxRole.ItemIndex := 0;
    editCpassword.Text := '';
end;

end.
