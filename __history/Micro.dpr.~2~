program Micro;

uses
  Vcl.Forms,
  Login in 'Login.pas' {LoginForm},
  ClientFrame in 'ClientFrame.pas' {ClientFM: TFrame},
  GroupFrame in 'GroupFrame.pas' {GroupFM: TFrame},
  LoanFrame in 'LoanFrame.pas' {LoanFM: TFrame},
  Main in 'Main.pas' {MainForm};

{$R *.res}

begin

if TLoginForm.Execute then
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end;

end.
