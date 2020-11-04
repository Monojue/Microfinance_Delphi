unit GroupFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DBXMySQL, Data.FMTBcd, Vcl.Bind.Grid, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Vcl.Grids,
  Data.Bind.DBScope, Data.DB, Data.SqlExpr, Vcl.DBGrids;

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
    procedure btnNewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses GroupEntry;

procedure TGroupFM.btnNewClick(Sender: TObject);
begin
  frmGroupEntry.Show;
end;

end.
