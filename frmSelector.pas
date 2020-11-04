unit frmSelector;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DBXMySQL, Data.FMTBcd, Data.DB, Vcl.DBGrids, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr;

type
  TMySelector = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    btnSearch: TButton;
    btnNew: TButton;
    btnOK: TButton;
    MicrofinanceConnection: TSQLConnection;
    CQuery: TSQLQuery;
    Cprovider: TDataSetProvider;
    ClientDataSet: TClientDataSet;
    ClientDataSource: TDataSource;
    ClientDataSetClientID: TStringField;
    ClientDataSetName: TStringField;
    ClientDataSetNRC: TStringField;
    ClientDataSetAddress: TStringField;
    ClientDataSetPhone: TStringField;
    ClientDataSetDateOfBirth: TStringField;
    ClientDataSetHome: TStringField;
    ClientDataSetJob: TStringField;
    ClientDataSetSalary: TIntegerField;
    DBGrid: TDBGrid;
    GroupDataSet: TClientDataSet;
    GroupDataSource: TDataSource;
    Gprovider: TDataSetProvider;
    GQuery: TSQLQuery;
    GroupDataSetGroupID: TStringField;
    GroupDataSetLeader: TStringField;
    GroupDataSetMember_1: TStringField;
    GroupDataSetMember_2: TStringField;
    GroupDataSetMember_3: TStringField;
    GroupDataSetMember_4: TStringField;
    GroupDataSetleaderName: TStringField;
    GroupDataSetM1Name: TStringField;
    GroupDataSetM2Name: TStringField;
    GroupDataSetM3Name: TStringField;
    GroupDataSetM4Name: TStringField;
    btnRefresh: TButton;
    procedure DBGridCellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure setFormType(settype : string);
  end;

var
  MySelector: TMySelector;
  frmtype : string;

implementation

{$R *.dfm}

uses ClientEntry, GroupEntry;

procedure TMySelector.btnNewClick(Sender: TObject);
begin
  if frmtype = 'client' then
  begin
    frmCleintEntry.Show;
  end
  else if frmtype = 'group' then
  begin
    frmGroupEntry.Show;
  end;
end;

procedure TMySelector.btnOKClick(Sender: TObject);
begin
  if frmtype = 'client' then
  begin
    frmGroupEntry.setIDandName('ID','Name');
    Close;
  end
  else
  begin

  end;
end;

procedure TMySelector.btnRefreshClick(Sender: TObject);
begin
     DBGrid.DataSource.DataSet.Refresh;
end;

procedure TMySelector.DBGridCellClick(Column: TColumn);
begin
  btnOK.Enabled := True;
end;

procedure TMySelector.FormShow(Sender: TObject);
begin
  Edit1.Text := frmtype;
end;

procedure TMySelector.setFormType(settype: string);
begin
  frmtype := settype;
  if frmtype = 'client' then
    begin
         DBGrid.DataSource := ClientDataSource;
    end
    else if frmtype = 'group' then
    begin
         DBGrid.DataSource := GroupDataSource;
    end;
     DBGrid.DataSource.DataSet.Refresh;
end;

end.
