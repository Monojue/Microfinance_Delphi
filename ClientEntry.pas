unit ClientEntry;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.WinXCtrls, Vcl.ComCtrls;

type
  TfrmCleintEntry = class(TForm)
    MainGrip: TGridPanel;
    BtmGrip: TGridPanel;
    TopGrip: TGridPanel;
    lblID: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    lblDate: TLabel;
    RelativePanel1: TRelativePanel;
    editName: TEdit;
    Label3: TLabel;
    editAddress: TEdit;
    lable: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cboxNo: TComboBox;
    cboxR: TComboBox;
    editNRC: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    cboxDate: TComboBox;
    cboxMonth: TComboBox;
    cboxYear: TComboBox;
    Label11: TLabel;
    Label12: TLabel;
    editPhone: TEdit;
    checkHome: TCheckBox;
    JOB: TLabel;
    Label14: TLabel;
    editJOB: TEdit;
    editSalary: TEdit;
    btnSave: TButton;
    btnClose: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure prepareupdate(data : array of String);
    procedure setAutoID;
  private
    { Private declarations }
  public
    { Public declarations }
    function check : boolean;
    procedure ClearFields;
  end;

var
  frmCleintEntry: TfrmCleintEntry;
  today : TDateTime;

implementation

{$R *.dfm}

uses shareFunction, MyQury, DataModule, ClientFrame;

procedure TfrmCleintEntry.FormCreate(Sender: TObject);
begin
  setAutoID;
end;


procedure TfrmCleintEntry.prepareupdate(data: array of String);
begin
  lblID.Caption := data[0] ;
  editName.Text := data[1] ;
  cboxNo.Text := shareFunction.splitNRC(data[2])[0];
  cboxR.Text := shareFunction.splitNRC(data[2])[1];
  editNRC.Text := shareFunction.splitNRC(data[2])[2];  
  editAddress.Text	:= data[3];
  editPhone.Text	:= data[4];
  cboxDate.Text := shareFunction.splitDOB(data[5])[0];
  cboxMonth.Text := shareFunction.splitDOB(data[5])[1];
  cboxYear.Text := shareFunction.splitDOB(data[5])[2];
  if data[6].Equals('Owned') then
  begin
     checkHome.Checked := True;
  end
  else
  begin
     checkHome.Checked := False;
  end;
  
  editJOB.Text	:= data[7]; 
  editSalary.Text	:= data[8];
  btnSave.Caption := 'Update';
end;

procedure TfrmCleintEntry.setAutoID;
begin
  today := Now;
  lblDate.Caption := FormatDateTime('yyyy/MM/dd', today);
  lblID.Caption := shareFunction.getAutoID('clientID','Client','CL-');
end;

procedure TfrmCleintEntry.btnSaveClick(Sender: TObject);
var
  NRC : string;
  DOB : string;
  Home : string;
  data : array of string;
  save : boolean;
begin
    if check then
  begin
    NRC := cboxNo.Text+'/'+ cboxR.Text +'(N)'+ editNRC.Text;
    DOB := cboxDate.Text +'-'+ cboxMonth.Text + '-' + cboxYear.Text;
    if checkHome.Checked then
    begin
      Home := 'Owned';  
    end
    else
    begin
      Home := 'Not Owned';
    end;
    

    SetLength(data, 9);
    data[0] := lblID.Caption;
    data[1] := editName.Text;
    data[2] := NRC;
    data[3] := editAddress.Text;
    data[4] := editPhone.Text;
    data[5] := DOB;
    data[6] := Home;
    data[7] := editJOB.Text;
    data[8] := editSalary.Text;
    if btnSave.Caption = 'Save' then
    begin
//       
        save := InsertData('Client', data);
         if save then
         begin
             ShowMessage('Save Successfully!');
             
         end
         else
         begin
           ShowMessage('Error!');
         end;
    end
    else if btnSave.Caption = 'Update' then
    begin
        save := UpdateData('Client', data);
         if save then
         begin
             ShowMessage('Update Successfully!');
         end
         else
         begin
           ShowMessage('Error!');
         end;
    end;

  end;
end;

function TfrmCleintEntry.check: boolean;
begin
  if (editName.Text = EmptyStr) or (editAddress.Text = EmptyStr)
  or (editNRC.Text = EmptyStr) or (editPhone.Text = EmptyStr) or
  (editJOB.Text =  EmptyStr) or  (editSalary.Text = EmptyStr) or
  (cboxNo.Text = EmptyStr) or(cboxR.Text = EmptyStr) or
  (cboxDate.Text = EmptyStr) or (cboxMonth.Text = EmptyStr) or
  (cboxYear.Text = EmptyStr) then
  begin
    ShowMessage('All fields Required!');
    Exit(False)
  end;
  Result := True;
end;

procedure TfrmCleintEntry.ClearFields;
begin
  editName.Text := '';
end;

end.
