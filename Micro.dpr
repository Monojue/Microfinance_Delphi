program Micro;

uses
  Vcl.Forms,
  Login in 'Login.pas' {LoginForm},
  GroupFrame in 'GroupFrame.pas' {GroupFM: TFrame},
  GroupLoanFrame in 'GroupLoanFrame.pas' {GroupLoanFM: TFrame},
  Main in 'Main.pas' {MainForm},
  ClientEntry in 'ClientEntry.pas' {frmCleintEntry},
  MyQury in 'MyQury.pas',
  shareFunction in 'shareFunction.pas',
  DataModule in 'DataModule.pas' {DMMicro: TDataModule},
  ClientFrame in 'ClientFrame.pas' {ClientFM: TFrame},
  frmSelector in 'frmSelector.pas' {MySelector},
  ClientLoanRequestForm in 'ClientLoanRequestForm.pas' {ClientLoanRequest},
  GroupEntry in 'GroupEntry.pas' {frmGroupEntry},
  SettingFrame in 'SettingFrame.pas' {SettingFM: TFrame},
  OfficerEntry in 'OfficerEntry.pas' {frmOfficerEntry},
  SettingHistory in 'SettingHistory.pas' {frmLoanHistory},
  ClientLoanFrame in 'ClientLoanFrame.pas' {ClientLoanFM: TFrame},
  GroupLoanRequestForm in 'GroupLoanRequestForm.pas' {GroupLoanRequest};

{$R *.res}

begin

if TLoginForm.Execute then
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDMMicro, DMMicro);
  Application.CreateForm(TfrmCleintEntry, frmCleintEntry);
  Application.CreateForm(TMySelector, MySelector);
  Application.CreateForm(TClientLoanRequest, ClientLoanRequest);
  Application.CreateForm(TfrmGroupEntry, frmGroupEntry);
  Application.CreateForm(TfrmOfficerEntry, frmOfficerEntry);
  Application.CreateForm(TfrmLoanHistory, frmLoanHistory);
  Application.CreateForm(TGroupLoanRequest, GroupLoanRequest);
  Application.Run;
end;

end.
