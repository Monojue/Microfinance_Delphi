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
    procedure FormShow(Sender: TObject);
    function check() : boolean;
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOfficerEntry: TfrmOfficerEntry;

implementation

{$R *.dfm}

uses MyQury, shareFunction;

procedure TfrmOfficerEntry.btnAddClick(Sender: TObject);
var
NRC : string;
data : array of string;
begin
  if check then
  begin
    NRC := cboxNo.Text + '/' + cboxR.Text + '(N)'+ editNRC.Text;
    SetLength(data ,8);
    data[0] := lblID.Caption;
    data[1] := editName.Text;
    data[2] := editAddress.Text;
    data[3] := editPhone.Text;
    data[4] := NRC;
    data[5] := cboxRole.Text;
    data[6] := editUserName.Text;
    data[7] := editPassword.Text;

    if InsertData('officer', data) then
    begin
      ShowMessage('Saved Successfully!');
      clearFields;
      Close;
    end
    else
    begin
      ShowMessage('Failed to Save new Record!');
    end;

  end;
end;

procedure TfrmOfficerEntry.btnCancelClick(Sender: TObject);
begin
  clearFields;
  Close;
end;

function TfrmOfficerEntry.check: boolean;
begin

  if (editName.Text = EmptyStr) or (editAddress.Text = EmptyStr)
  or (cboxNo.Text = EmptyStr) or (cboxR.Text = EmptyStr)
  or (editNRC.Text = EmptyStr) or (editPhone.Text = EmptyStr)
  or (cboxRole.Text = EmptyStr) or (editUserName.Text = EmptyStr)
  or (editPassword.Text = EmptyStr) or (editCpassword.Text = EmptyStr) then
  begin
    ShowMessage('All Fields Cannot be Empty!');
    Exit(False)
  end
  else if editPassword.Text <> editCpassword.Text then
  begin
    ShowMessage('Password and Confirm password is not Same!');
    Exit(False)
  end;
  Result := True;
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

procedure TfrmOfficerEntry.FormShow(Sender: TObject);
begin
  clearFields;
  editName.SetFocus;
  lblID.Caption := getAutoID('officerID', 'officer', 'OF-');
end;

end.
