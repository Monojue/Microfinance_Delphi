object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 677
  ClientWidth = 1231
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 18
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1231
    Height = 677
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = '                CLIENT             '
      inline TClientFM1: TClientFM
        Left = 0
        Top = 0
        Width = 1223
        Height = 644
        Align = alClient
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 1223
        ExplicitHeight = 644
        inherited GridPanel1: TGridPanel
          Width = 1223
          Height = 644
          ControlCollection = <
            item
              Column = 0
              Control = TClientFM1.clientGrid
              Row = 1
            end
            item
              Column = 0
              Control = TClientFM1.GridPanel2
              Row = 0
            end>
          ExplicitWidth = 1223
          ExplicitHeight = 644
          inherited clientGrid: TDBGrid
            Width = 1215
            Height = 586
          end
          inherited GridPanel2: TGridPanel
            Width = 1221
            ColumnCollection = <
              item
                SizeStyle = ssAbsolute
                Value = 10.000000000000000000
              end
              item
                SizeStyle = ssAuto
                Value = 70.000000000000000000
              end
              item
                SizeStyle = ssAuto
                Value = 120.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 25.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 130.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 80.000000000000000000
              end
              item
                Value = 100.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 80.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 80.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 80.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 80.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 10.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 1
                Control = TClientFM1.Label1
                Row = 0
              end
              item
                Column = 2
                Control = TClientFM1.cboxSearch
                Row = 0
              end
              item
                Column = 3
                Control = TClientFM1.Label2
                Row = 0
              end
              item
                Column = 4
                Control = TClientFM1.editSearch
                Row = 0
              end
              item
                Column = 7
                Control = TClientFM1.btnNew
                Row = 0
              end
              item
                Column = 8
                Control = TClientFM1.btnEdit
                Row = 0
              end
              item
                Column = 9
                Control = TClientFM1.btnDelete
                Row = 0
              end
              item
                Column = 10
                Control = TClientFM1.btnRefresh
                Row = 0
              end
              item
                Column = 5
                Control = TClientFM1.btnSearch
                Row = 0
              end>
            ExplicitWidth = 1221
            inherited cboxSearch: TComboBox
              Left = 81
              ExplicitLeft = 81
            end
            inherited Label2: TLabel
              Left = 195
              ExplicitLeft = 201
              ExplicitTop = 15
            end
            inherited editSearch: TEdit
              Left = 222
              ExplicitLeft = 222
            end
            inherited btnNew: TButton
              Left = 892
              ExplicitLeft = 892
            end
            inherited btnEdit: TButton
              Left = 972
              ExplicitLeft = 972
            end
            inherited btnDelete: TButton
              Left = 1052
              ExplicitLeft = 1052
            end
            inherited btnRefresh: TButton
              Left = 1132
              ExplicitLeft = 1132
            end
            inherited btnSearch: TButton
              Left = 350
              ExplicitLeft = 350
            end
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = '               GROUP             '
      ImageIndex = 1
      inline TGroupFM1: TGroupFM
        Left = 0
        Top = 0
        Width = 1223
        Height = 644
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1223
        ExplicitHeight = 644
        inherited GridPanel1: TGridPanel
          Width = 1223
          Height = 644
          ControlCollection = <
            item
              Column = 0
              Control = TGroupFM1.GroupGrid
              Row = 1
            end
            item
              Column = 0
              Control = TGroupFM1.GridPanel2
              Row = 0
            end>
          ExplicitWidth = 1223
          ExplicitHeight = 644
          inherited GroupGrid: TDBGrid
            Width = 1215
            Height = 586
            TitleFont.Height = -15
          end
          inherited GridPanel2: TGridPanel
            Width = 1221
            ColumnCollection = <
              item
                SizeStyle = ssAbsolute
                Value = 10.000000000000000000
              end
              item
                SizeStyle = ssAuto
                Value = 70.000000000000000000
              end
              item
                SizeStyle = ssAuto
                Value = 120.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 25.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 130.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 80.000000000000000000
              end
              item
                Value = 100.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 80.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 80.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 80.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 80.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 10.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 1
                Control = TGroupFM1.Label1
                Row = 0
              end
              item
                Column = 2
                Control = TGroupFM1.cboxSearch
                Row = 0
              end
              item
                Column = 3
                Control = TGroupFM1.Label2
                Row = 0
              end
              item
                Column = 4
                Control = TGroupFM1.editSearch
                Row = 0
              end
              item
                Column = 5
                Control = TGroupFM1.btnSearch
                Row = 0
              end
              item
                Column = 7
                Control = TGroupFM1.btnNew
                Row = 0
              end
              item
                Column = 8
                Control = TGroupFM1.btnEdit
                Row = 0
              end
              item
                Column = 9
                Control = TGroupFM1.btnDelete
                Row = 0
              end
              item
                Column = 10
                Control = TGroupFM1.btnRefresh
                Row = 0
              end>
            ExplicitWidth = 1221
            inherited Label1: TLabel
              Left = 11
              Top = 16
              Width = 70
              Height = 18
              ExplicitLeft = 11
              ExplicitTop = 16
              ExplicitWidth = 93
              ExplicitHeight = 18
            end
            inherited cboxSearch: TComboBox
              Left = 81
              Top = 12
              Height = 26
              ExplicitLeft = 81
              ExplicitTop = 12
              ExplicitHeight = 26
            end
            inherited Label2: TLabel
              Left = 195
              Top = 16
              Width = 21
              Height = 18
              ExplicitLeft = 195
              ExplicitTop = 15
              ExplicitWidth = 21
              ExplicitHeight = 18
            end
            inherited editSearch: TEdit
              Left = 222
              Top = 12
              Height = 26
              ExplicitLeft = 222
              ExplicitTop = 12
              ExplicitHeight = 26
            end
            inherited btnSearch: TButton
              Left = 350
              ExplicitLeft = 350
            end
            inherited btnNew: TButton
              Left = 892
              ExplicitLeft = 892
            end
            inherited btnEdit: TButton
              Left = 972
              ExplicitLeft = 972
            end
            inherited btnDelete: TButton
              Left = 1052
              ExplicitLeft = 1052
            end
            inherited btnRefresh: TButton
              Left = 1132
              ExplicitLeft = 1132
            end
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = '         LOAN REQUEST     '
      ImageIndex = 3
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 1223
        Height = 644
        ActivePage = TabSheet5
        Align = alClient
        TabOrder = 0
        object TabSheet5: TTabSheet
          Caption = '     INDIVIDUAL     '
          inline TClientLoanFM1: TClientLoanFM
            Left = 0
            Top = 0
            Width = 1215
            Height = 611
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 1215
            ExplicitHeight = 611
            inherited GridPanel1: TGridPanel
              Width = 1215
              Height = 611
              ControlCollection = <
                item
                  Column = 0
                  Control = TClientLoanFM1.GridPanel2
                  Row = 0
                end
                item
                  Column = 0
                  Control = TClientLoanFM1.clientGrid
                  Row = 1
                end>
              ExplicitWidth = 1215
              ExplicitHeight = 611
              inherited GridPanel2: TGridPanel
                Width = 1213
                ColumnCollection = <
                  item
                    SizeStyle = ssAbsolute
                    Value = 10.000000000000000000
                  end
                  item
                    SizeStyle = ssAuto
                    Value = 70.000000000000000000
                  end
                  item
                    SizeStyle = ssAuto
                    Value = 140.000000000000000000
                  end
                  item
                    SizeStyle = ssAbsolute
                    Value = 25.000000000000000000
                  end
                  item
                    SizeStyle = ssAbsolute
                    Value = 130.000000000000000000
                  end
                  item
                    SizeStyle = ssAbsolute
                    Value = 80.000000000000000000
                  end
                  item
                    Value = 100.000000000000000000
                  end
                  item
                    SizeStyle = ssAbsolute
                    Value = 80.000000000000000000
                  end
                  item
                    SizeStyle = ssAbsolute
                    Value = 80.000000000000000000
                  end
                  item
                    SizeStyle = ssAbsolute
                    Value = 80.000000000000000000
                  end
                  item
                    SizeStyle = ssAbsolute
                    Value = 80.000000000000000000
                  end
                  item
                    SizeStyle = ssAbsolute
                    Value = 10.000000000000000000
                  end>
                ControlCollection = <
                  item
                    Column = 1
                    Control = TClientLoanFM1.Label1
                    Row = 0
                  end
                  item
                    Column = 2
                    Control = TClientLoanFM1.cboxSearch
                    Row = 0
                  end
                  item
                    Column = 4
                    Control = TClientLoanFM1.editSearch
                    Row = 0
                  end
                  item
                    Column = 7
                    Control = TClientLoanFM1.btnNew
                    Row = 0
                  end
                  item
                    Column = 8
                    Control = TClientLoanFM1.btnPay
                    Row = 0
                  end
                  item
                    Column = 9
                    Control = TClientLoanFM1.btnDelete
                    Row = 0
                  end
                  item
                    Column = 10
                    Control = TClientLoanFM1.btnRefresh
                    Row = 0
                  end
                  item
                    Column = 5
                    Control = TClientLoanFM1.btnSearch
                    Row = 0
                  end
                  item
                    Column = 6
                    Control = TClientLoanFM1.Panel1
                    Row = 0
                  end
                  item
                    Column = 3
                    Control = TClientLoanFM1.lblPrefix
                    Row = 0
                  end>
                ExplicitWidth = 1213
                inherited Label1: TLabel
                  Left = 11
                  Top = 16
                  Width = 70
                  Height = 18
                  ExplicitLeft = 11
                  ExplicitTop = 16
                  ExplicitWidth = 93
                  ExplicitHeight = 18
                end
                inherited cboxSearch: TComboBox
                  Left = 81
                  Top = 12
                  Width = 140
                  Height = 26
                  ExplicitLeft = 81
                  ExplicitTop = 12
                  ExplicitWidth = 140
                  ExplicitHeight = 26
                end
                inherited editSearch: TEdit
                  Left = 250
                  Top = 12
                  Height = 26
                  ExplicitLeft = 250
                  ExplicitTop = 12
                  ExplicitHeight = 26
                end
                inherited btnNew: TButton
                  Left = 884
                  ExplicitLeft = 884
                end
                inherited btnPay: TButton
                  Left = 964
                  ExplicitLeft = 964
                end
                inherited btnDelete: TButton
                  Left = 1044
                  ExplicitLeft = 1044
                end
                inherited btnRefresh: TButton
                  Left = 1124
                  ExplicitLeft = 1124
                end
                inherited btnSearch: TButton
                  Left = 378
                  ExplicitLeft = 378
                end
                inherited Panel1: TPanel
                  Left = 456
                  Width = 426
                  ExplicitLeft = 456
                  ExplicitWidth = 426
                  inherited RadioGroup: TRadioGroup
                    ExplicitWidth = 420
                  end
                end
                inherited lblPrefix: TLabel
                  Left = 223
                  Top = 16
                  Width = 21
                  Height = 18
                  ExplicitLeft = 201
                  ExplicitTop = 15
                  ExplicitWidth = 21
                  ExplicitHeight = 18
                end
              end
              inherited clientGrid: TDBGrid
                Width = 1213
                Height = 559
                TitleFont.Height = -15
              end
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = '     GROUP     '
          ImageIndex = 1
          inline TGroupLoanFM1: TGroupLoanFM
            Left = 0
            Top = 0
            Width = 1215
            Height = 611
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 1215
            ExplicitHeight = 611
            inherited GridPanel1: TGridPanel
              Width = 1215
              Height = 611
              ControlCollection = <
                item
                  Column = 0
                  Control = TGroupLoanFM1.GridPanel2
                  Row = 0
                end
                item
                  Column = 0
                  Control = TGroupLoanFM1.GroupGird
                  Row = 1
                end>
              ExplicitWidth = 1215
              ExplicitHeight = 611
              inherited GridPanel2: TGridPanel
                Width = 1213
                ColumnCollection = <
                  item
                    SizeStyle = ssAbsolute
                    Value = 10.000000000000000000
                  end
                  item
                    SizeStyle = ssAuto
                    Value = 70.000000000000000000
                  end
                  item
                    SizeStyle = ssAbsolute
                    Value = 140.000000000000000000
                  end
                  item
                    SizeStyle = ssAbsolute
                    Value = 25.000000000000000000
                  end
                  item
                    SizeStyle = ssAbsolute
                    Value = 130.000000000000000000
                  end
                  item
                    SizeStyle = ssAbsolute
                    Value = 80.000000000000000000
                  end
                  item
                    Value = 100.000000000000000000
                  end
                  item
                    SizeStyle = ssAbsolute
                    Value = 80.000000000000000000
                  end
                  item
                    SizeStyle = ssAbsolute
                    Value = 80.000000000000000000
                  end
                  item
                    SizeStyle = ssAbsolute
                    Value = 80.000000000000000000
                  end
                  item
                    SizeStyle = ssAbsolute
                    Value = 80.000000000000000000
                  end
                  item
                    SizeStyle = ssAbsolute
                    Value = 10.000000000000000000
                  end>
                ControlCollection = <
                  item
                    Column = 1
                    Control = TGroupLoanFM1.Label1
                    Row = 0
                  end
                  item
                    Column = 2
                    Control = TGroupLoanFM1.cboxSearch
                    Row = 0
                  end
                  item
                    Column = 4
                    Control = TGroupLoanFM1.editSearch
                    Row = 0
                  end
                  item
                    Column = 7
                    Control = TGroupLoanFM1.btnNew
                    Row = 0
                  end
                  item
                    Column = 8
                    Control = TGroupLoanFM1.btnPay
                    Row = 0
                  end
                  item
                    Column = 9
                    Control = TGroupLoanFM1.btnDelete
                    Row = 0
                  end
                  item
                    Column = 10
                    Control = TGroupLoanFM1.btnRefresh
                    Row = 0
                  end
                  item
                    Column = 5
                    Control = TGroupLoanFM1.btnSearch
                    Row = 0
                  end
                  item
                    Column = 6
                    Control = TGroupLoanFM1.Panel1
                    Row = 0
                  end>
                ExplicitWidth = 1213
                inherited Label1: TLabel
                  Left = 11
                  Top = 16
                  Width = 70
                  Height = 18
                  ExplicitLeft = 11
                  ExplicitTop = 16
                  ExplicitWidth = 93
                  ExplicitHeight = 18
                end
                inherited cboxSearch: TComboBox
                  AlignWithMargins = True
                  Left = 84
                  Top = 12
                  Width = 134
                  Height = 26
                  ExplicitLeft = 84
                  ExplicitTop = 12
                  ExplicitWidth = 134
                  ExplicitHeight = 26
                end
                inherited editSearch: TEdit
                  Left = 250
                  Top = 12
                  Height = 26
                  ExplicitLeft = 250
                  ExplicitTop = 12
                  ExplicitHeight = 26
                end
                inherited btnNew: TButton
                  Left = 884
                  ExplicitLeft = 884
                end
                inherited btnPay: TButton
                  Left = 964
                  ExplicitLeft = 964
                end
                inherited btnDelete: TButton
                  Left = 1044
                  ExplicitLeft = 1044
                end
                inherited btnRefresh: TButton
                  Left = 1124
                  ExplicitLeft = 1124
                end
                inherited btnSearch: TButton
                  Left = 378
                  ExplicitLeft = 378
                end
                inherited Panel1: TPanel
                  Left = 456
                  Width = 426
                  ExplicitLeft = 456
                  ExplicitWidth = 426
                  inherited RadioGroup: TRadioGroup
                    ExplicitWidth = 420
                  end
                end
              end
              inherited GroupGird: TDBGrid
                Width = 1213
                Height = 559
                TitleFont.Height = -15
              end
            end
          end
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = '          REPAYMENT        '
      ImageIndex = 4
      inline TRepaymentFM1: TRepaymentFM
        Left = 0
        Top = 0
        Width = 1223
        Height = 644
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 1223
        ExplicitHeight = 644
        inherited GridPanel1: TGridPanel
          Width = 1223
          Height = 644
          ControlCollection = <
            item
              Column = 0
              Control = TRepaymentFM1.GridPanel2
              Row = 0
            end
            item
              Column = 0
              Control = TRepaymentFM1.DBGrid
              Row = 1
            end>
          ExplicitWidth = 1223
          ExplicitHeight = 644
          inherited GridPanel2: TGridPanel
            Width = 1221
            ColumnCollection = <
              item
                SizeStyle = ssAbsolute
                Value = 10.000000000000000000
              end
              item
                SizeStyle = ssAuto
                Value = 70.000000000000000000
              end
              item
                SizeStyle = ssAuto
                Value = 120.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 25.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 130.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 80.000000000000000000
              end
              item
                Value = 100.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 80.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 80.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 80.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 80.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 10.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 1
                Control = TRepaymentFM1.Label1
                Row = 0
              end
              item
                Column = 2
                Control = TRepaymentFM1.cboxSearch
                Row = 0
              end
              item
                Column = 4
                Control = TRepaymentFM1.editSearch
                Row = 0
              end
              item
                Column = 8
                Control = TRepaymentFM1.btnViewDetails
                Row = 0
              end
              item
                Column = 9
                Control = TRepaymentFM1.btnDelete
                Row = 0
              end
              item
                Column = 10
                Control = TRepaymentFM1.btnRefresh
                Row = 0
              end
              item
                Column = 5
                Control = TRepaymentFM1.btnSearch
                Row = 0
              end
              item
                Column = 6
                Control = TRepaymentFM1.Panel1
                Row = 0
              end
              item
                Column = 3
                Control = TRepaymentFM1.lblPrefix
                Row = 0
              end>
            ExplicitWidth = 1221
            inherited cboxSearch: TComboBox
              Left = 81
              ExplicitLeft = 81
            end
            inherited editSearch: TEdit
              Left = 222
              ExplicitLeft = 222
            end
            inherited btnViewDetails: TButton
              Left = 970
              Width = 80
              ExplicitLeft = 970
              ExplicitWidth = 80
            end
            inherited btnDelete: TButton
              Left = 1052
              ExplicitLeft = 1052
            end
            inherited btnRefresh: TButton
              Left = 1132
              ExplicitLeft = 1132
            end
            inherited btnSearch: TButton
              Left = 350
              ExplicitLeft = 350
            end
            inherited Panel1: TPanel
              Left = 428
              Width = 462
              ExplicitLeft = 428
              ExplicitWidth = 462
            end
            inherited lblPrefix: TLabel
              Left = 195
              ExplicitLeft = 201
              ExplicitTop = 15
            end
          end
          inherited DBGrid: TDBGrid
            Width = 1221
            Height = 592
          end
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = '                REPORT          '
      ImageIndex = 5
      inline TReportFM1: TReportFM
        Left = 0
        Top = 0
        Width = 1223
        Height = 644
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1223
        ExplicitHeight = 644
        inherited MainGrid: TGridPanel
          Width = 1223
          Height = 644
          ControlCollection = <
            item
              Column = 0
              Control = TReportFM1.GridPanel2
              Row = 0
            end
            item
              Column = 0
              Control = TReportFM1.IndividualPanel
              Row = 1
            end
            item
              Column = 0
              Control = TReportFM1.GroupPanel
              Row = 2
            end>
          ExplicitWidth = 1223
          ExplicitHeight = 644
          inherited GridPanel2: TGridPanel
            Width = 1221
            ColumnCollection = <
              item
                Value = 100.000000000000000000
              end
              item
                SizeStyle = ssAuto
                Value = 80.000000000000000000
              end
              item
                SizeStyle = ssAuto
                Value = 80.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 10.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 1
                Control = TReportFM1.btnViewDetails
                Row = 0
              end
              item
                Column = 2
                Control = TReportFM1.btnRefresh
                Row = 0
              end>
            ExplicitWidth = 1221
            inherited btnViewDetails: TButton
              Left = 1015
              ExplicitLeft = 1015
            end
            inherited btnRefresh: TButton
              Left = 1135
              ExplicitLeft = 1135
            end
          end
          inherited IndividualPanel: TPanel
            Width = 1215
            Height = 295
            ExplicitWidth = 1215
            ExplicitHeight = 295
            inherited ClientGrid: TDBGrid
              TitleFont.Height = -15
            end
          end
          inherited GroupPanel: TPanel
            Top = 345
            Width = 1215
            Height = 295
            ExplicitTop = 345
            ExplicitWidth = 1215
            ExplicitHeight = 295
            inherited GroupGrid: TDBGrid
              TitleFont.Height = -15
            end
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = '               SETTING           '
      ImageIndex = 2
      inline TSettingFM1: TSettingFM
        Left = 0
        Top = 0
        Width = 1223
        Height = 644
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 784
        ExplicitTop = 120
        inherited GridPanel1: TGridPanel
          Width = 1223
          Height = 644
          ControlCollection = <
            item
              Column = 0
              Control = TSettingFM1.GridPanel2
              Row = 0
            end
            item
              Column = 0
              Control = TSettingFM1.GridPanel4
              Row = 1
            end
            item
              Column = 1
              Control = TSettingFM1.Panel1
              Row = 0
            end
            item
              Column = 1
              Control = TSettingFM1.Panel2
              Row = 1
            end>
          inherited GridPanel2: TGridPanel
            Width = 871
            Height = 321
            ControlCollection = <
              item
                Column = 0
                Control = TSettingFM1.IndiGrid
                Row = 1
              end
              item
                Column = 1
                Control = TSettingFM1.GroupGrid
                Row = 1
              end
              item
                Column = 0
                Control = TSettingFM1.Button1
                Row = 0
              end>
            inherited IndiGrid: TGridPanel
              Width = 434
              Height = 269
              ControlCollection = <
                item
                  Column = 1
                  Control = TSettingFM1.Label9
                  Row = 1
                end
                item
                  Column = 3
                  Control = TSettingFM1.Label11
                  Row = 1
                end
                item
                  Column = 5
                  Control = TSettingFM1.Label13
                  Row = 1
                end
                item
                  Column = 1
                  Control = TSettingFM1.Label16
                  Row = 2
                end
                item
                  Column = 3
                  Control = TSettingFM1.Label18
                  Row = 2
                end
                item
                  Column = 5
                  Control = TSettingFM1.Label20
                  Row = 2
                end
                item
                  Column = 1
                  Control = TSettingFM1.Label23
                  Row = 3
                end
                item
                  Column = 4
                  Control = TSettingFM1.Label26
                  Row = 3
                end
                item
                  Column = 1
                  Control = TSettingFM1.Label30
                  Row = 4
                end
                item
                  Column = 4
                  Control = TSettingFM1.Label33
                  Row = 4
                end
                item
                  Column = 1
                  Control = TSettingFM1.Label37
                  Row = 5
                end
                item
                  Column = 4
                  Control = TSettingFM1.Label40
                  Row = 5
                end
                item
                  Column = 1
                  Control = TSettingFM1.Label44
                  Row = 6
                end
                item
                  Column = 4
                  Control = TSettingFM1.Label47
                  Row = 6
                end
                item
                  Column = 2
                  Control = TSettingFM1.editIMinAmount
                  Row = 1
                end
                item
                  Column = 4
                  Control = TSettingFM1.editIMaxAmount
                  Row = 1
                end
                item
                  Column = 2
                  Control = TSettingFM1.editIMinDura
                  Row = 2
                end
                item
                  Column = 4
                  Control = TSettingFM1.editIMaxDura
                  Row = 2
                end
                item
                  Column = 2
                  Control = TSettingFM1.editIAmoInter
                  Row = 3
                end
                item
                  Column = 2
                  Control = TSettingFM1.editIDuraInter
                  Row = 4
                end
                item
                  Column = 2
                  Control = TSettingFM1.editIRate
                  Row = 5
                end
                item
                  Column = 2
                  Control = TSettingFM1.editIFees
                  Row = 6
                end
                item
                  Column = 1
                  Control = TSettingFM1.btnIEdit
                  Row = 7
                end
                item
                  Column = 2
                  Control = TSettingFM1.btnICancel
                  Row = 7
                end>
              inherited Label9: TLabel
                Top = 34
                Width = 142
                Height = 33
                ExplicitWidth = 51
                ExplicitHeight = 18
              end
              inherited Label11: TLabel
                Left = 260
                Top = 41
                Width = 5
                Height = 18
                ExplicitTop = 47
                ExplicitWidth = 5
                ExplicitHeight = 18
              end
              inherited Label13: TLabel
                Left = 373
                Top = 34
                Height = 33
                ExplicitWidth = 37
                ExplicitHeight = 18
              end
              inherited Label16: TLabel
                Top = 67
                Width = 142
                Height = 33
                ExplicitWidth = 54
                ExplicitHeight = 18
              end
              inherited Label18: TLabel
                Left = 260
                Top = 74
                Width = 5
                Height = 18
                ExplicitLeft = 265
                ExplicitTop = 82
                ExplicitWidth = 5
                ExplicitHeight = 18
              end
              inherited Label20: TLabel
                Left = 373
                Top = 67
                Height = 33
                ExplicitWidth = 41
                ExplicitHeight = 18
              end
              inherited Label23: TLabel
                Top = 100
                Width = 142
                Height = 33
                ExplicitWidth = 106
                ExplicitHeight = 18
              end
              inherited Label26: TLabel
                Left = 273
                Top = 100
                Height = 33
                ExplicitWidth = 37
                ExplicitHeight = 18
              end
              inherited Label30: TLabel
                Top = 133
                Width = 142
                Height = 33
                ExplicitWidth = 109
                ExplicitHeight = 18
              end
              inherited Label33: TLabel
                Left = 273
                Top = 133
                Height = 33
                ExplicitWidth = 41
                ExplicitHeight = 18
              end
              inherited Label37: TLabel
                Top = 166
                Width = 142
                Height = 33
                ExplicitWidth = 87
                ExplicitHeight = 18
              end
              inherited Label40: TLabel
                Left = 273
                Top = 166
                Height = 33
                ExplicitWidth = 15
                ExplicitHeight = 18
              end
              inherited Label44: TLabel
                Top = 199
                Width = 142
                Height = 33
                ExplicitWidth = 89
                ExplicitHeight = 18
              end
              inherited Label47: TLabel
                Left = 273
                Top = 199
                Height = 33
                ExplicitWidth = 15
                ExplicitHeight = 18
              end
              inherited editIMinAmount: TEdit
                Left = 153
                Top = 37
                Height = 26
                ExplicitTop = 40
                ExplicitHeight = 26
              end
              inherited editIMaxAmount: TEdit
                Left = 273
                Top = 37
                Height = 26
                ExplicitTop = 40
                ExplicitHeight = 26
              end
              inherited editIMinDura: TEdit
                Left = 153
                Top = 70
                Height = 26
                ExplicitTop = 75
                ExplicitHeight = 26
              end
              inherited editIMaxDura: TEdit
                Left = 273
                Top = 70
                Height = 26
                ExplicitTop = 75
                ExplicitHeight = 26
              end
              inherited editIAmoInter: TEdit
                Left = 153
                Top = 103
                Height = 26
                ExplicitTop = 110
                ExplicitHeight = 26
              end
              inherited editIDuraInter: TEdit
                Left = 153
                Top = 136
                Height = 26
                ExplicitTop = 145
                ExplicitHeight = 26
              end
              inherited editIRate: TEdit
                Left = 153
                Top = 169
                Height = 26
                ExplicitTop = 180
                ExplicitHeight = 26
              end
              inherited editIFees: TEdit
                Left = 153
                Top = 202
                Height = 26
                ExplicitTop = 215
                ExplicitHeight = 26
              end
              inherited btnIEdit: TButton
                Left = 44
                Top = 237
              end
              inherited btnICancel: TButton
                Left = 165
                Top = 237
              end
            end
            inherited GroupGrid: TGridPanel
              Left = 435
              Width = 435
              Height = 269
              ControlCollection = <
                item
                  Column = 1
                  Control = TSettingFM1.Label1
                  Row = 1
                end
                item
                  Column = 3
                  Control = TSettingFM1.Label2
                  Row = 1
                end
                item
                  Column = 5
                  Control = TSettingFM1.Label3
                  Row = 1
                end
                item
                  Column = 1
                  Control = TSettingFM1.Label4
                  Row = 2
                end
                item
                  Column = 3
                  Control = TSettingFM1.Label5
                  Row = 2
                end
                item
                  Column = 5
                  Control = TSettingFM1.Label6
                  Row = 2
                end
                item
                  Column = 1
                  Control = TSettingFM1.Label7
                  Row = 3
                end
                item
                  Column = 4
                  Control = TSettingFM1.Label8
                  Row = 3
                end
                item
                  Column = 1
                  Control = TSettingFM1.Label10
                  Row = 4
                end
                item
                  Column = 4
                  Control = TSettingFM1.Label12
                  Row = 4
                end
                item
                  Column = 1
                  Control = TSettingFM1.Label14
                  Row = 5
                end
                item
                  Column = 4
                  Control = TSettingFM1.Label15
                  Row = 5
                end
                item
                  Column = 1
                  Control = TSettingFM1.Label17
                  Row = 6
                end
                item
                  Column = 4
                  Control = TSettingFM1.Label19
                  Row = 6
                end
                item
                  Column = 2
                  Control = TSettingFM1.editGMinAmount
                  Row = 1
                end
                item
                  Column = 4
                  Control = TSettingFM1.editGMaxAmount
                  Row = 1
                end
                item
                  Column = 2
                  Control = TSettingFM1.editGMinDura
                  Row = 2
                end
                item
                  Column = 4
                  Control = TSettingFM1.editGMaxDura
                  Row = 2
                end
                item
                  Column = 2
                  Control = TSettingFM1.editGAmoInter
                  Row = 3
                end
                item
                  Column = 2
                  Control = TSettingFM1.editGDuraInter
                  Row = 4
                end
                item
                  Column = 2
                  Control = TSettingFM1.editGRate
                  Row = 5
                end
                item
                  Column = 2
                  Control = TSettingFM1.editGFees
                  Row = 6
                end
                item
                  Column = 1
                  Control = TSettingFM1.btnGEdit
                  Row = 7
                end
                item
                  Column = 2
                  Control = TSettingFM1.btnGCancel
                  Row = 7
                end>
              inherited Label1: TLabel
                Top = 34
                Width = 143
                Height = 33
                ExplicitWidth = 51
                ExplicitHeight = 18
              end
              inherited Label2: TLabel
                Left = 261
                Top = 41
                Width = 5
                Height = 18
                ExplicitLeft = 266
                ExplicitTop = 47
                ExplicitWidth = 5
                ExplicitHeight = 18
              end
              inherited Label3: TLabel
                Left = 374
                Top = 34
                Height = 33
                ExplicitWidth = 37
                ExplicitHeight = 18
              end
              inherited Label4: TLabel
                Top = 67
                Width = 143
                Height = 33
                ExplicitWidth = 54
                ExplicitHeight = 18
              end
              inherited Label5: TLabel
                Left = 261
                Top = 74
                Width = 5
                Height = 18
                ExplicitLeft = 266
                ExplicitTop = 82
                ExplicitWidth = 5
                ExplicitHeight = 18
              end
              inherited Label6: TLabel
                Left = 374
                Top = 67
                Height = 33
                ExplicitWidth = 41
                ExplicitHeight = 18
              end
              inherited Label7: TLabel
                Top = 100
                Width = 143
                Height = 33
                ExplicitWidth = 106
                ExplicitHeight = 18
              end
              inherited Label8: TLabel
                Left = 274
                Top = 100
                Height = 33
                ExplicitWidth = 37
                ExplicitHeight = 18
              end
              inherited Label10: TLabel
                Top = 133
                Width = 143
                Height = 33
                ExplicitWidth = 109
                ExplicitHeight = 18
              end
              inherited Label12: TLabel
                Left = 274
                Top = 133
                Height = 33
                ExplicitWidth = 41
                ExplicitHeight = 18
              end
              inherited Label14: TLabel
                Top = 166
                Width = 143
                Height = 33
                ExplicitWidth = 87
                ExplicitHeight = 18
              end
              inherited Label15: TLabel
                Left = 274
                Top = 166
                Height = 33
                ExplicitWidth = 15
                ExplicitHeight = 18
              end
              inherited Label17: TLabel
                Top = 199
                Width = 143
                Height = 33
                ExplicitWidth = 89
                ExplicitHeight = 18
              end
              inherited Label19: TLabel
                Left = 274
                Top = 199
                Height = 33
                ExplicitWidth = 15
                ExplicitHeight = 18
              end
              inherited editGMinAmount: TEdit
                Left = 154
                Top = 37
                Height = 26
                ExplicitTop = 40
                ExplicitHeight = 26
              end
              inherited editGMaxAmount: TEdit
                Left = 274
                Top = 37
                Height = 26
                ExplicitTop = 40
                ExplicitHeight = 26
              end
              inherited editGMinDura: TEdit
                Left = 154
                Top = 70
                Height = 26
                ExplicitTop = 75
                ExplicitHeight = 26
              end
              inherited editGMaxDura: TEdit
                Left = 274
                Top = 70
                Height = 26
                ExplicitTop = 75
                ExplicitHeight = 26
              end
              inherited editGAmoInter: TEdit
                Left = 154
                Top = 103
                Height = 26
                ExplicitTop = 110
                ExplicitHeight = 26
              end
              inherited editGDuraInter: TEdit
                Left = 154
                Top = 136
                Height = 26
                ExplicitTop = 145
                ExplicitHeight = 26
              end
              inherited editGRate: TEdit
                Left = 154
                Top = 169
                Height = 26
                ExplicitTop = 180
                ExplicitHeight = 26
              end
              inherited editGFees: TEdit
                Left = 154
                Top = 202
                Height = 26
                ExplicitTop = 215
                ExplicitHeight = 26
              end
              inherited btnGEdit: TButton
                Left = 45
                Top = 237
              end
              inherited btnGCancel: TButton
                Left = 166
                Top = 237
              end
            end
            inherited Button1: TButton
              Left = 153
            end
          end
          inherited GridPanel4: TGridPanel
            Top = 322
            Width = 871
            Height = 321
            ControlCollection = <
              item
                Column = 0
                Control = TSettingFM1.GridPanel5
                Row = 0
              end
              item
                Column = 0
                Control = TSettingFM1.DBGrid1
                Row = 1
              end>
            inherited GridPanel5: TGridPanel
              Width = 869
              ControlCollection = <
                item
                  Column = 1
                  Control = TSettingFM1.Label22
                  Row = 0
                end
                item
                  Column = 2
                  Control = TSettingFM1.editSearch
                  Row = 0
                end
                item
                  Column = 3
                  Control = TSettingFM1.btnSearch
                  Row = 0
                end
                item
                  Column = 5
                  Control = TSettingFM1.btnAdd
                  Row = 0
                end
                item
                  Column = 6
                  Control = TSettingFM1.btnDelete
                  Row = 0
                end
                item
                  Column = 7
                  Control = TSettingFM1.btnRefresh
                  Row = 0
                end>
              inherited Label22: TLabel
                ExplicitWidth = 54
                ExplicitHeight = 18
              end
              inherited editSearch: TEdit
                Top = 12
                Height = 26
                ExplicitTop = 12
                ExplicitHeight = 26
              end
              inherited btnAdd: TButton
                Left = 620
              end
              inherited btnDelete: TButton
                Left = 700
              end
              inherited btnRefresh: TButton
                Left = 780
              end
            end
            inherited DBGrid1: TDBGrid
              Width = 869
              Height = 269
              TitleFont.Height = -15
            end
          end
          inherited Panel1: TPanel
            Left = 872
            Height = 321
            ExplicitHeight = 337
          end
          inherited Panel2: TPanel
            Left = 872
            Top = 322
            Height = 321
            ExplicitLeft = 880
            ExplicitTop = 338
            ExplicitWidth = 350
            ExplicitHeight = 338
          end
        end
      end
    end
  end
end
