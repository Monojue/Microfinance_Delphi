unit ClientLoanRequestForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Grids,
  Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB, Vcl.DBGrids;

type
  TClientLoanRequest = class(TForm)
    MainGrid: TGridPanel;
    TopGrip: TGridPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    MidGrid: TGridPanel;
    RelativePanel1: TRelativePanel;
    Label3: TLabel;
    lable: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    JOB: TLabel;
    Label14: TLabel;
    Edit6: TEdit;
    Edit5: TEdit;
    CheckBox1: TCheckBox;
    Edit3: TEdit;
    ComboBox3: TComboBox;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Label9: TLabel;
    ComboBox2: TComboBox;
    ComboBox4: TComboBox;
    Label10: TLabel;
    Edit2: TEdit;
    ComboBox5: TComboBox;
    Button1: TButton;
    RelativePanel2: TRelativePanel;
    Label6: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label89: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Memo1: TMemo;
    Label21: TLabel;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    Edit4: TEdit;
    Edit7: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Memo2: TMemo;
    Label22: TLabel;
    RelativePanel3: TRelativePanel;
    TrackBar1: TTrackBar;
    Label16: TLabel;
    Edit8: TEdit;
    Label19: TLabel;
    TrackBar2: TTrackBar;
    Label23: TLabel;
    Edit13: TEdit;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Button2: TButton;
    GridPanel1: TGridPanel;
    Button4: TButton;
    Button5: TButton;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientLoanRequest: TClientLoanRequest;

implementation

{$R *.dfm}

end.
