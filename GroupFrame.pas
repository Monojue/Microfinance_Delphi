unit GroupFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DBXMySQL, Data.FMTBcd, Vcl.Bind.Grid, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Vcl.Grids,
  Data.Bind.DBScope, Data.DB, Data.SqlExpr, Vcl.DBGrids, Datasnap.DBClient,
  Datasnap.Provider;

type
  TGroupFM = class(TFrame)
    GridPanel1: TGridPanel;
    DBGrid1: TDBGrid;
    GridPanel2: TGridPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Edit2: TEdit;
    btnSearch: TButton;
    btnNew: TButton;
    btnEdit: TButton;
    btnDelete: TButton;
    MicrofinanceConnection: TSQLConnection;
    SQLQuery: TSQLQuery;
    DataSetProvider: TDataSetProvider;
    ClientDataSet: TClientDataSet;
    DataSource: TDataSource;
    ClientDataSetGroupID: TStringField;
    ClientDataSetLeader: TStringField;
    ClientDataSetMember_1: TStringField;
    ClientDataSetMember_2: TStringField;
    ClientDataSetMember_3: TStringField;
    ClientDataSetMember_4: TStringField;
    ClientDataSetleaderName: TStringField;
    ClientDataSetM1Name: TStringField;
    ClientDataSetM2Name: TStringField;
    ClientDataSetM3Name: TStringField;
    ClientDataSetM4Name: TStringField;
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}

uses GroupEntry;

procedure TGroupFM.btnEditClick(Sender: TObject);
begin
  frmGroupEntry.prepareUpdate(DBGrid1.Fields[0].AsString);
  frmGroupEntry.Show;
end;

procedure TGroupFM.btnNewClick(Sender: TObject);
begin
  frmGroupEntry.ClearFields;
  frmGroupEntry.Show;
end;

end.
