unit SettingHistory;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXMySQL, Data.FMTBcd,
  Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid,
  Vcl.Grids, Data.Bind.DBScope, Data.DB, Data.SqlExpr, Vcl.ExtCtrls;

type
  TfrmLoanHistory = class(TForm)
    MicrofinanceConnection: TSQLConnection;
    LoansettingTable: TSQLDataSet;
    BindSourceDB1: TBindSourceDB;
    StringGridBindSourceDB1: TStringGrid;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    GridPanel1: TGridPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoanHistory: TfrmLoanHistory;

implementation

{$R *.dfm}

end.
