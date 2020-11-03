unit ClientFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Data.DBXMySQL, Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.FMTBcd, Vcl.Grids,
  Data.Bind.Components, Data.Bind.DBScope, Data.DB, Data.SqlExpr, Data.Bind.Grid,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.DBGrids, Vcl.WinXCtrls, Datasnap.DBClient,
  Datasnap.Provider;



type
  TClientFM = class(TFrame)
    GridPanel1: TGridPanel;
    clientGrid: TDBGrid;
    GridPanel2: TGridPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Edit2: TEdit;
    btnNew: TButton;
    btnEdit: TButton;
    btnDelete: TButton;
    MicrofinanceConnection: TSQLConnection;
    ClientTable: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1ClientID: TStringField;
    ClientDataSet1Name: TStringField;
    ClientDataSet1NRC: TStringField;
    ClientDataSet1Address: TStringField;
    ClientDataSet1Phone: TStringField;
    ClientDataSet1DateOfBirth: TStringField;
    ClientDataSet1Home: TStringField;
    ClientDataSet1Job: TStringField;
    ClientDataSet1Salary: TIntegerField;
    btnRefresh: TButton;
    btnSearch: TButton;
    SQLQuery1: TSQLQuery;
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure clientGridCellClick(Column: TColumn);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

implementation

{$R *.dfm}

uses ClientEntry, DataModule, MyQury;

var
 selData : array of string;

procedure TClientFM.btnEditClick(Sender: TObject);
begin
  CleintEntry.prepareupdate(selData);
  ClientEntry.CleintEntry.Show;
end;

procedure TClientFM.btnNewClick(Sender: TObject);
begin
  CleintEntry.Show;
end;

procedure TClientFM.btnRefreshClick(Sender: TObject);
begin
    clientGrid.DataSource.DataSet.Refresh;
    btnEdit.Enabled := False;
    btnDelete.Enabled := False;
end;

procedure TClientFM.btnSearchClick(Sender: TObject);
begin
   with SQLQuery1 do
     begin
       close;
       SQL.Clear;
       SQL.Add('Select * from client where Name = "Kaung"');
       Open;

     end;
end;

procedure TClientFM.clientGridCellClick(Column: TColumn);
begin
  btnEdit.Enabled := True;
  btnDelete.Enabled := True;
  SetLength(selData , 9);
  selData[0] := clientGrid.Fields[0].AsString;
  selData[1] := clientGrid.Fields[1].AsString;
  selData[2] := clientGrid.Fields[2].AsString;
  selData[3] := clientGrid.Fields[3].AsString;
  selData[4] := clientGrid.Fields[4].AsString;
  selData[5] := clientGrid.Fields[5].AsString;
  selData[6] := clientGrid.Fields[6].AsString;
  selData[7] := clientGrid.Fields[7].AsString;
  selData[8] := clientGrid.Fields[8].AsString;
end;

end.
