unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Data.DBXMySQL,
  Data.FMTBcd, Data.DB, Data.SqlExpr;

type
  TLoginForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    txtUserName: TEdit;
    txtPassword: TEdit;
    btnLogin: TButton;
    btnCancel: TButton;
    lblError: TLabel;
    MicrofinanceConnection: TSQLConnection;
    OfficerTable: TSQLDataSet;
    SQLOfficer: TSQLQuery;
    DataSource1: TDataSource;
    procedure btnCancelClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    function check : boolean;
  private
    { Private declarations }
    procedure clear;

  public
    { Public declarations }
    class function Execute : boolean;
  end;

var
  LoginForm: TLoginForm;

implementation

{$R *.dfm}


procedure TLoginForm.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

class function TLoginForm.Execute: boolean;
  begin
    with TLoginForm.Create(nil) do
      try
       Result := ShowModal = mrOk;
      finally
      Free;
     end;
  end;

  procedure TLoginForm.btnLoginClick(Sender: TObject);
    begin
      if not check then
        begin
             ShowMessage('Please Type UserName and Password');
        end
    else
        begin
          SQLOfficer.Close;
          SQLOfficer.SQL.Clear;
          SQLOfficer.SQL.Add('Select * from officer where UserName= "'+txtUserName.Text+'" and Password= "'
          + txtPassword.Text+'"');
          SQLOfficer.Open;

          if SQLOfficer.Eof then
            ModalResult := mrOK
          else
            ShowMessage('Wrong UserName or Password!');
            clear;
        end;
    end;
function TLoginForm.check: boolean;
begin
  if (txtUserName.Text = EmptyStr) or (txtPassword.Text = EmptyStr) then
        begin
          lblError.Visible := True;
          Exit(False);
        end;
  Result := True;
end;

procedure TLoginForm.clear;
begin
  txtUserName.Text := '';
  txtPassword.Text := '';
  txtUserName.SetFocus;
end;

end.
