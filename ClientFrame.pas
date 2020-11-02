unit ClientFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Data.DBXMySQL, Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.FMTBcd, Vcl.Grids,
  Data.Bind.Components, Data.Bind.DBScope, Data.DB, Data.SqlExpr, Data.Bind.Grid,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.DBGrids, Vcl.WinXCtrls;

type
  TClientFM = class(TFrame)
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

  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


end.
