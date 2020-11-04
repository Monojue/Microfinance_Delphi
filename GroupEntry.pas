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
  private
    { Private declarations }
  public
    { Public declarations }
    procedure setIDandName(ID : string; Name : string);
  end;

var
  frmGroupEntry: TfrmGroupEntry;
  btnType : Integer;

implementation

{$R *.dfm}

uses frmSelector;

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

procedure TfrmGroupEntry.setIDandName(ID, Name: string);
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
  
end;

end.
