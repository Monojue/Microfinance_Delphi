unit DataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMySQL, Data.FMTBcd, Data.DB,
  Data.SqlExpr;

type
  TDMMicro = class(TDataModule)
    MicrofinanceConnection: TSQLConnection;
    SQLQuery: TSQLQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMMicro: TDMMicro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
