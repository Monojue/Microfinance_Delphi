unit SettingFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DBXMySQL, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr;

type
  TSettingFM = class(TFrame)
    GridPanel1: TGridPanel;
    GridPanel2: TGridPanel;
    GridPanel4: TGridPanel;
    IndiGrid: TGridPanel;
    Label9: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    Label30: TLabel;
    Label33: TLabel;
    Label37: TLabel;
    Label40: TLabel;
    Label44: TLabel;
    Label47: TLabel;
    editIMinAmount: TEdit;
    editIMaxAmount: TEdit;
    editIMinDura: TEdit;
    editIMaxDura: TEdit;
    editIAmoInter: TEdit;
    editIDuraInter: TEdit;
    editIRate: TEdit;
    editIFees: TEdit;
    btnIEdit: TButton;
    btnICancel: TButton;
    GroupGrid: TGridPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    editGMinAmount: TEdit;
    editGMaxAmount: TEdit;
    editGMinDura: TEdit;
    editGMaxDura: TEdit;
    editGAmoInter: TEdit;
    editGDuraInter: TEdit;
    editGRate: TEdit;
    editGFees: TEdit;
    btnGEdit: TButton;
    btnGCancel: TButton;
    GridPanel5: TGridPanel;
    Label22: TLabel;
    editSearch: TEdit;
    btnSearch: TButton;
    btnAdd: TButton;
    btnDelete: TButton;
    btnRefresh: TButton;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    MicrofinanceConnection: TSQLConnection;
    SQLQuery: TSQLQuery;
    DataSetProvider: TDataSetProvider;
    ClientDataSet: TClientDataSet;
    DataSource: TDataSource;
    ClientDataSetOfficerID: TStringField;
    ClientDataSetName: TStringField;
    ClientDataSetAddress: TStringField;
    ClientDataSetPhone: TStringField;
    ClientDataSetNRC: TStringField;
    ClientDataSetRole: TStringField;
    Button1: TButton;
    procedure IndividualfieldEnable;
    procedure GroupfieldEnable;
    procedure IfieldDisable;
    procedure GfieldDisable;
    function Icheck : boolean;
    function Gcheck : boolean;

    procedure btnIEditClick(Sender: TObject);
    procedure btnGEditClick(Sender: TObject);
    procedure btnICancelClick(Sender: TObject);
    procedure btnGCancelClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure editSearchChange(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetIData;
    procedure GetGData;
  end;

var
today : TDateTime;

implementation

{$R *.dfm}



uses MyQury, shareFunction, OfficerEntry, SettingHistory;

{ TFrame1 }

procedure TSettingFM.btnAddClick(Sender: TObject);
begin
  frmOfficerEntry.Show;
end;

procedure TSettingFM.btnGCancelClick(Sender: TObject);
begin
  GetGData;
  GfieldDisable;
end;

procedure TSettingFM.btnGEditClick(Sender: TObject);
var
GNewSetting : array of string;
begin
    if btnGEdit.Caption = 'Edit' then
  begin
    GroupfieldEnable;
  end
  else
  begin
    if Gcheck then
    begin
      SetLength(GNewSetting,12);
      GNewSetting[0] := getAutoID('ID', 'loansetting', 'Ls-');
      GNewSetting[1] := editGMinAmount.Text;
      GNewSetting[2] := editGMaxAmount.Text;
      GNewSetting[3] := editGMinDura.Text;
      GNewSetting[4] := editGMaxDura.Text;
      GNewSetting[5] := editGAmoInter.Text;
      GNewSetting[6] := editGDuraInter.Text;
      GNewSetting[7] := editGRate.Text;
      GNewSetting[8] := editGFees.Text;
      GNewSetting[9] := FormatDateTime('yyyy/MM/dd', today);
      GNewSetting[10] := 'Group';
      GNewSetting[11] := getLoginID;
      if InsertData('Gloansetting', GNewSetting) then
      begin
        GfieldDisable;
        ShowMessage('Group Loan Setting is Updated!');
      end
      else
      begin
        GroupfieldEnable;
        ShowMessage('Failed to Update new Group Setting!');
      end;
    end;
  end;
end;

procedure TSettingFM.btnICancelClick(Sender: TObject);
begin
  GetIData;
  IfieldDisable;
end;

procedure TSettingFM.btnIEditClick(Sender: TObject);
var
INewSetting : array of string;
begin
    if btnIEdit.Caption = 'Edit' then
  begin
    IndividualfieldEnable;
  end
  else
  begin
    if Icheck then
    begin
      SetLength(INewSetting,12);
      INewSetting[0] := getAutoID('ID', 'loansetting', 'Ls-');
      INewSetting[1] := editIMinAmount.Text;
      INewSetting[2] := editIMaxAmount.Text;
      INewSetting[3] := editIMinDura.Text;
      INewSetting[4] := editIMaxDura.Text;
      INewSetting[5] := editIAmoInter.Text;
      INewSetting[6] := editIDuraInter.Text;
      INewSetting[7] := editIRate.Text;
      INewSetting[8] := editIFees.Text;
      INewSetting[9] := FormatDateTime('yyyy/MM/dd', today);
      INewSetting[10] := 'Individual';
      INewSetting[11] := getLoginID;
      if InsertData('Iloansetting', INewSetting) then
      begin
        IfieldDisable;
        ShowMessage('Individual Loan Setting is Updated!');
      end
      else
      begin
        IndividualfieldEnable;
        ShowMessage('Failed to Update new Group Setting!');
      end;
    end;
  end;
end;

procedure TSettingFM.btnRefreshClick(Sender: TObject);
begin
  with SQLQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from officer');
      Open;
      DBGrid1.DataSource.DataSet.Refresh;
    end;
end;

procedure TSettingFM.btnSearchClick(Sender: TObject);
begin
  if editSearch.Text <> EmptyStr then
  begin
    with SQLQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from officer where Name like "'+editSearch.Text+'%"');
      Open;
      DBGrid1.DataSource.DataSet.Refresh;
    end;
  end
  else
  begin

  end;
end;

procedure TSettingFM.Button1Click(Sender: TObject);
begin
  frmLoanHistory.Show;
end;

procedure TSettingFM.editSearchChange(Sender: TObject);
begin
  if editSearch.Text <> EmptyStr then
  begin
    btnSearch.Enabled := True;
  end
  else
  begin
    btnSearch.Enabled := False;
  end;
end;

function TSettingFM.Gcheck: boolean;
begin
  if (editGMinAmount.Text = EmptyStr) or (editGMaxAmount.Text = EmptyStr)
  or (editGMinDura.Text = EmptyStr) or (editGMaxDura.Text = EmptyStr)
  or (editGAmoInter.Text = EmptyStr) or (editGDuraInter.Text = EmptyStr)
  or (editGRate.Text = EmptyStr) or (editGFees.Text = EmptyStr)  then
  begin
    ShowMessage('All Fields Cannot be Empty!');
    Exit(False)
  end;
  Result := True;
end;

procedure TSettingFM.GetGData;
var
data : array of string;
begin
  try
    editGMinAmount.Text := MyQury.GetGroupLoanSetting[0];
     editGMaxAmount.Text := MyQury.GetGroupLoanSetting[1];
     editGMinDura.Text := MyQury.GetGroupLoanSetting[2];
     editGMaxDura.Text := MyQury.GetGroupLoanSetting[3];
     editGAmoInter.Text := MyQury.GetGroupLoanSetting[4];
     editGDuraInter.Text := MyQury.GetGroupLoanSetting[5];
     editGRate.Text := MyQury.GetGroupLoanSetting[6];
     editGFees.Text := MyQury.GetGroupLoanSetting[7];
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
      GetGData;
   end;

 end;
end;

procedure TSettingFM.GetIData;
var
data : array of string;
begin
    try
    editIMinAmount.Text := MyQury.GetIndividualLoanSetting[0];
    editIMaxAmount.Text := MyQury.GetIndividualLoanSetting[1];
    editIMinDura.Text := MyQury.GetIndividualLoanSetting[2];
    editIMaxDura.Text := MyQury.GetIndividualLoanSetting[3];
    editIAmoInter.Text := MyQury.GetIndividualLoanSetting[4];
    editIDuraInter.Text := MyQury.GetIndividualLoanSetting[5];
    editIRate.Text := MyQury.GetIndividualLoanSetting[6];
    editIFees.Text := MyQury.GetIndividualLoanSetting[7];
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
      data[10] := 'Individual';
      data[11] := 'OF-0000001';
      InsertData('Iloansetting', data);
      GetIData;
   end;
  end;
end;

procedure TSettingFM.GfieldDisable;
begin
  editGMinAmount.Enabled := False;
  editGMaxAmount.Enabled := False;
  editGMinDura.Enabled := False;
  editGMaxDura.Enabled := False;
  editGAmoInter.Enabled := False;
  editGDuraInter.Enabled := False;
  editGRate.Enabled := False;
  editGFees.Enabled := False;
  btnGEdit.Caption := 'Edit';
  btnGCancel.Visible := False;
end;

procedure TSettingFM.GroupfieldEnable;
begin
  editGMinAmount.Enabled := True;
  editGMaxAmount.Enabled := True;
  editGMinDura.Enabled := True;
  editGMaxDura.Enabled := True;
  editGAmoInter.Enabled := True;
  editGDuraInter.Enabled := True;
  editGRate.Enabled := True;
  editGFees.Enabled := True;
  btnGEdit.Caption := 'Save';
  btnGCancel.Visible := True;
end;

function TSettingFM.Icheck: boolean;
begin
  if (editIMinAmount.Text = EmptyStr) or (editIMaxAmount.Text = EmptyStr)
  or (editIMinDura.Text = EmptyStr) or (editIMaxDura.Text = EmptyStr)
  or (editIAmoInter.Text = EmptyStr) or (editIDuraInter.Text = EmptyStr)
  or (editIRate.Text = EmptyStr) or (editIFees.Text = EmptyStr)  then
  begin
    ShowMessage('All Fields Cannot be Empty!');
    Exit(False)
  end;
  Result := True;
end;

procedure TSettingFM.IfieldDisable;
begin
  editIMinAmount.Enabled := False;
  editIMaxAmount.Enabled := False;
  editIMinDura.Enabled := False;
  editIMaxDura.Enabled := False;
  editIAmoInter.Enabled := False;
  editIDuraInter.Enabled := False;
  editIRate.Enabled := False;
  editIFees.Enabled := False;
  btnIEdit.Caption := 'Edit';
  btnICancel.Visible := False;
end;

procedure TSettingFM.IndividualfieldEnable;
begin
  editIMinAmount.Enabled := True;
  editIMaxAmount.Enabled := True;
  editIMinDura.Enabled := True;
  editIMaxDura.Enabled := True;
  editIAmoInter.Enabled := True;
  editIDuraInter.Enabled := True;
  editIRate.Enabled := True;
  editIFees.Enabled := True;
  btnIEdit.Caption := 'Save';
  btnICancel.Visible := True;
end;

end.
