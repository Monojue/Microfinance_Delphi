unit GroupEntry;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmGroupEntry = class(TForm)
    MainGrid: TGridPanel;
    topGrip: TGridPanel;
    bottomgrip: TGridPanel;
    Label1: TLabel;
    lblID: TLabel;
    Label4: TLabel;
    lblDate: TLabel;
    btnSave: TButton;
    btnCancel: TButton;
    centerGrid: TGridPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label16: TLabel;
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
    procedure btnAdd1Click(Sender: TObject);
    procedure btnAdd2Click(Sender: TObject);
    procedure btnAdd3Click(Sender: TObject);
    procedure btnAdd4Click(Sender: TObject);
    procedure btnAdd5Click(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    function check(ID : string; Name : string): boolean;
    procedure btnCancelClick(Sender: TObject);
    procedure prepareUpdate(data : array of string);
    procedure prepareNew;
    procedure setAutoID;
  private
    { Private declarations }
  public
    { Public declarations }
    function setIDandName(ID : string; Name : string) : Boolean;
    procedure ClearFields;
  end;

var
  frmGroupEntry: TfrmGroupEntry;
  btnType : Integer;
  today : TDateTime;
  data : array of string;
  chk : Boolean;

implementation

{$R *.dfm}

uses frmSelector, shareFunction, DataModule, MyQury;

procedure TfrmGroupEntry.btnAdd1Click(Sender: TObject);
begin
  btnType := 0;
  MySelector.setFormType('client');
  MySelector.Show;
end;

procedure TfrmGroupEntry.btnAdd2Click(Sender: TObject);
begin
  btnType := 1;
  MySelector.setFormType('client');
  MySelector.Show;
end;

procedure TfrmGroupEntry.btnAdd3Click(Sender: TObject);
begin
  btnType := 2;
  MySelector.setFormType('client');
  MySelector.Show;
end;

procedure TfrmGroupEntry.btnAdd4Click(Sender: TObject);
begin
  btnType := 3;
  MySelector.setFormType('client');
  MySelector.Show;
end;

procedure TfrmGroupEntry.btnAdd5Click(Sender: TObject);
begin
  btnType := 4;
  MySelector.setFormType('client');
  MySelector.Show;
end;

procedure TfrmGroupEntry.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmGroupEntry.btnSaveClick(Sender: TObject);
begin
  if (lblLeadID.Caption = EmptyStr) or (lblM1ID.Caption = EmptyStr) or
  (lblM2ID.Caption = EmptyStr) or (lblM3ID.Caption = EmptyStr) or
  (lblM4ID.Caption = EmptyStr) then
  begin
    ShowMessage('Please Fill All Member!');
  end
  else if chk then
  begin
    SetLength(data, 11);
    data[0] := lblID.Caption;
    data[1] := lblLeadID.Caption;
    data[2] := lblM1ID.Caption;
    data[3] := lblM2ID.Caption;
    data[4] := lblM3ID.Caption;
    data[5] := lblM4ID.Caption;

    data[6] := lblLeadName.Caption;
    data[7] := lblM1Name.Caption;
    data[8] := lblM2Name.Caption;
    data[9] := lblM3Name.Caption;
    data[10] := lblM4Name.Caption;

    if btnSave.Caption = 'Save' then
    begin
      if InsertData('group', data) then
      begin
        ShowMessage('Saved Successfully!');
        Close;
      end
      else
      begin
        ShowMessage('Failed to Save new Record!');
      end;
    end
    else if btnSave.Caption = 'Update' then
    begin
       if UpdateData('group', data) then
      begin
        ShowMessage('Updated Successfully!');
        Close;
      end
      else
      begin
        ShowMessage('Failed to Update!');
      end;
    end;
  end
  else
  begin
    ShowMessage('Something Wrong!');
  end;
end;

function TfrmGroupEntry.check(ID : string; Name : string): boolean;
begin
    if CheckClientIsInGroup(ID) then
    begin
      ShowMessage(Name + ' is in another Group!');
      chk := False;
      Exit(False);
    end
    else if CheckAvaliable('Individual',ID) then
    begin
      ShowMessage( Name + ' is already requested Individual Loan!');
      chk := False;
      Exit(False);
    end
    else if (ID=lblLeadID.Caption) or (ID=lblM1ID.Caption) or (ID=lblM2ID.Caption)
    or (ID=lblM3ID.Caption) or (ID=lblM4ID.Caption) then
    begin
      ShowMessage( Name + ' is already Added!');
      chk := False;
      Exit(False);
    end
    else
    begin
       chk := True;
      Result := True;
    end;
end;

procedure TfrmGroupEntry.ClearFields;
begin
  lblLeadName.Caption := '';
  lblLeadID.Caption := '';
  lblM1ID.Caption := '';
  lblM1Name.Caption := '';
  lblM2ID.Caption := '';
  lblM2Name.Caption := '';
  lblM3ID.Caption := '';
  lblM3Name.Caption := '';
  lblM4ID.Caption := '';
  lblM4Name.Caption := '';
end;


procedure TfrmGroupEntry.setAutoID;
begin
  today := Now;
  lblDate.Caption := FormatDateTime('yyyy/MM/dd', today);
  lblID.Caption := shareFunction.getAutoID('groupID','ClientGroup','GP-');
end;

procedure TfrmGroupEntry.prepareNew;
begin
  ClearFields;
  setAutoID;
  btnSave.Caption := 'Save';
end;

procedure TfrmGroupEntry.prepareUpdate(data: array of string);
begin
  lblID.Caption := data[0];
  lblLeadID.Caption := data[1];
  lblM1ID.Caption := data[2];
  lblM2ID.Caption := data[3];
  lblM3ID.Caption := data[4];
  lblM4ID.Caption := data[5];
  lblLeadName.Caption := data[6];
  lblM1Name.Caption := data[7];
  lblM2Name.Caption := data[8];
  lblM3Name.Caption := data[9];
  lblM4Name.Caption := data[10];
  btnSave.Caption := 'Update';
end;

function TfrmGroupEntry.setIDandName(ID, Name: string) : Boolean;
begin
    if check(ID, Name) then
    begin
      if btnType = 0 then
        begin
            lblLeadID.Caption := ID;
            lblLeadName.Caption := Name;
        end
         else if btnType = 1 then
        begin
          lblM1ID.Caption := ID;
          lblM1Name.Caption := Name;
        end
        else if btnType = 2 then
        begin
          lblM2ID.Caption := ID;
          lblM2Name.Caption := Name;
        end
        else if btnType = 3 then
        begin
          lblM3ID.Caption := ID;
          lblM3Name.Caption := Name;
        end
        else if btnType = 4 then
        begin
          lblM4ID.Caption := ID;
          lblM4Name.Caption := Name;
        end;
        Exit(True);
  end;
  Result := False;
end;

end.
