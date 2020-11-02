unit ClientEntry;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.WinXCtrls, Vcl.ComCtrls;

type
  TCleintEntry = class(TForm)
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


  private
    { Private declarations }
  public
    { Public declarations }
    function check : boolean;
  end;

var
  CleintEntry: TCleintEntry;
  today : TDateTime;

implementation

{$R *.dfm}

uses shareFunction, MyQury;

procedure TCleintEntry.FormCreate(Sender: TObject);
begin
  today := Now;
  lblDate.Caption := FormatDateTime('yyyy/MM/dd', today);
  lblID.Caption := shareFunction.getAutoID('clientID','Client','CL-');
end;

function TCleintEntry.check: boolean;
begin
  if (editName.Text = EmptyStr) or (editAddress.Text = EmptyStr)
  or (editNRC.Text = EmptyStr) or (editPhone.Text = EmptyStr) or
  (editJOB.Text =  EmptyStr) or  (editSalary.Text = EmptyStr) or
  (cboxNo.Text = EmptyStr) or(cboxR.Text = EmptyStr) or
  (cboxDate.Text = EmptyStr) or (cboxMonth.Text = EmptyStr) or
  (cboxYear.Text = EmptyStr) or (not checkHome.Checked) then
  begin
    ShowMessage('All fields Required!');
    Exit(False)
  end;
  Result := True;
end;

//procedure TCleintEntry.btnSaveClick(Sender: TObject);
// var
//  NRC : string;
//  DOB : string;
//  Home : string;
//  data : array of string;
//  save : boolean;
//begin
//  if check then
//  begin
//    NRC := cboxNo.Text + cboxR.Text + editNRC.Text;
//    DOB := cboxDate.Text +'-'+ cboxMonth.Text + '-' + cboxYear.Text;
//    Home := 'Owned';
//
//    data[0] := lblID.Caption;
//    data[1] := editName.Text;
//    data[2] := NRC;
//    data[3] := editAddress.Text;
//    data[4] := editPhone.Text;
//    data[5] := DOB;
//    data[6] := Home;
//    data[7] := editJOB.Text;
//    data[8] := editSalary.Text;
//
//    if btnSave.Caption = 'Save' then
//    begin
//        save := MyQury.InsertData('Client', data);
//         if save then
//         begin
//             ShowMessage('Save Success');
//         end
//         else
//         begin
//           ShowMessage('Error');
//         end;
//    end
//    else
//    begin
//
//    end;
//
//  end;
//end;

end.
