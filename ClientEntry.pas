unit ClientEntry;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.WinXCtrls, Vcl.ComCtrls, Data.DBXMySQL, Data.FMTBcd, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.DB, Data.SqlExpr, DateUtils;

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
    BindingsList1: TBindingsList;
    procedure FormCreate(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure prepareupdate(data : array of String);
    procedure prepareNew;
    procedure setAutoID;
    procedure btnCloseClick(Sender: TObject);
    procedure SelCombo(sql:String;Q:TSQLQuery; var Combo:TComboBox);
    procedure cboxNoChange(Sender: TObject);
    procedure addDobbox();
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

procedure TfrmCleintEntry.SelCombo(sql:String;Q:TSQLQuery; var Combo:TComboBox);
var i: integer;
begin
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add(sql);
  Q.Open;
  Combo.Text:='';
  while not Q.Eof do begin
    Combo.Items.Add(Q.Fields.Fields[0].AsString);
    Q.Next;
  end;
  Q.Close;
end;

procedure TfrmCleintEntry.prepareNew;
begin
  ClearFields;
  setAutoID;
  addDobbox;
  btnSave.Caption := 'Save';
  SelCombo('SELECT Number FROM nrc group by Number;', DMMicro.SQLQuery, cboxNo);
end;

procedure TfrmCleintEntry.prepareupdate(data: array of String);
begin
  lblID.Caption := data[0] ;
  editName.Text := data[1] ;
  SelCombo('SELECT Number FROM nrc group by Number;', DMMicro.SQLQuery, cboxNo);
  cboxNo.Text := shareFunction.splitNRC(data[2])[0];
  cboxNoChange(Self.cboxNo);
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
  btnSave.Caption := 'Save';
end;

procedure TfrmCleintEntry.addDobbox;
var
I : Integer;
MN : array[1..12] of string;
begin
  for I := 1 to 31 do
  begin
    cboxDate.Items.Add(I.ToString);
  end;

  MN[ 1] := 'Jan';
  MN[ 2] := 'Feb';
  MN[ 3] := 'Mar';
  MN[ 4] := 'Apr';
  MN[ 5] := 'May';
  MN[ 6] := 'Jun';
  MN[ 7] := 'Jul';
  MN[ 8] := 'Aug';
  MN[ 9] := 'Sep';
  MN[10] := 'Oct';
  MN[11] := 'Nov';
  MN[12] := 'Dec';

  for I := 1 to 12 do
  begin
    cboxMonth.Items.Add(MN[I]);
  end;


  for I := YearOf(today) - 18 downto YearOf(today) - 120  do
  begin
    cboxYear.Items.Add(I.ToString);
  end;
end;

procedure TfrmCleintEntry.btnCloseClick(Sender: TObject);
begin
  Close;
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
        save := InsertData('client', data);
         if save then
         begin
             ShowMessage('Save Successfully!');
             Close;
         end
         else
         begin
           ShowMessage('Error Occoured!');
         end;
    end
    else if btnSave.Caption = 'Update' then
    begin
        save := UpdateData('client', data);
         if save then
         begin
             ShowMessage('Update Successfully!');
             Close;
         end
         else
         begin
           ShowMessage('Error Occoured!');
         end;
    end;

  end;
end;

procedure TfrmCleintEntry.cboxNoChange(Sender: TObject);
begin
  SelCombo('SELECT code FROM nrc where Number = "'+ cboxNo.Text+'"', DMMicro.SQLQuery, cboxR);
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
  end
  else if duplicateNRC(cboxNo.Text+'/'+ cboxR.Text +'(N)'+ editNRC.Text) then
  begin
    ShowMessage('This client is already Exit!');
    Exit(False)
  end;
  Result := True;
end;

procedure TfrmCleintEntry.ClearFields;
begin
  editName.Text := '';
  editAddress.Text := '';
  cboxNo.Text := '';
  cboxR.Text := '';
  editNRC.Text := '';
  editPhone.Text	:= '';
  cboxDate.Text := '';
  cboxMonth.Text := '';
  cboxYear.Text := '';
  checkHome.Checked := False;
  editJOB.Text  := '';
  editSalary.Clear;
end;

end.
