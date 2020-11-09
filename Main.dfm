object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 677
  ClientWidth = 1231
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1231
    Height = 677
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = '                CLIENT             '
      inline TClientFM1: TClientFM
        Left = 0
        Top = 0
        Width = 1223
        Height = 649
        Align = alClient
        Color = clWindow
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        ExplicitWidth = 1223
        ExplicitHeight = 649
        inherited GridPanel1: TGridPanel
          Width = 1223
          Height = 649
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
          ExplicitHeight = 649
          inherited clientGrid: TDBGrid
            Width = 1215
            Height = 591
          end
          inherited GridPanel2: TGridPanel
            Width = 1221
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
    object TabSheet2: TTabSheet
      Caption = '               GROUP             '
      ImageIndex = 1
      inline TGroupFM1: TGroupFM
        Left = 0
        Top = 0
        Width = 1223
        Height = 649
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1223
        ExplicitHeight = 649
        inherited GridPanel1: TGridPanel
          Width = 1223
          Height = 649
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
          ExplicitHeight = 649
          inherited GroupGrid: TDBGrid
            Width = 1215
            Height = 591
          end
          inherited GridPanel2: TGridPanel
            Width = 1221
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
      Caption = '               SETTING           '
      ImageIndex = 2
      inline TSettingFM1: TSettingFM
        Left = 0
        Top = 0
        Width = 1223
        Height = 649
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1223
        ExplicitHeight = 649
        inherited GridPanel1: TGridPanel
          Width = 1223
          Height = 649
          ControlCollection = <
            item
              Column = 0
              Control = TSettingFM1.GridPanel2
              Row = 0
            end
            item
              Column = 1
              Control = TSettingFM1.GridPanel3
              Row = 0
            end
            item
              Column = 0
              Control = TSettingFM1.GridPanel4
              Row = 1
            end>
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 1223
          ExplicitHeight = 649
          inherited GridPanel2: TGridPanel
            Width = 871
            Height = 323
            ControlCollection = <
              item
                Column = 0
                Control = TSettingFM1.IndiGrid
                Row = 0
              end
              item
                Column = 1
                Control = TSettingFM1.GroupGrid
                Row = 0
              end>
            ExplicitLeft = 1
            ExplicitTop = 1
            ExplicitWidth = 871
            ExplicitHeight = 323
            inherited IndiGrid: TGridPanel
              Width = 434
              Height = 321
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
              ExplicitLeft = 1
              ExplicitTop = 1
              ExplicitWidth = 434
              ExplicitHeight = 321
              inherited Label9: TLabel
                Top = 40
                Width = 142
                Height = 39
                ExplicitLeft = 11
                ExplicitTop = 40
              end
              inherited Label11: TLabel
                Left = 261
                Top = 53
                ExplicitLeft = 261
                ExplicitTop = 53
              end
              inherited Label13: TLabel
                Left = 373
                Top = 40
                Height = 39
                Alignment = taCenter
                ExplicitLeft = 373
                ExplicitTop = 40
              end
              inherited Label16: TLabel
                Top = 79
                Width = 142
                Height = 39
                ExplicitLeft = 11
                ExplicitTop = 79
              end
              inherited Label18: TLabel
                Left = 261
                Top = 92
                ExplicitLeft = 261
                ExplicitTop = 92
              end
              inherited Label20: TLabel
                Left = 373
                Top = 79
                Height = 39
                Alignment = taCenter
                ExplicitLeft = 373
                ExplicitTop = 79
              end
              inherited Label23: TLabel
                Top = 118
                Width = 142
                Height = 39
                ExplicitLeft = 11
                ExplicitTop = 118
              end
              inherited Label26: TLabel
                Left = 273
                Top = 118
                Height = 39
                ExplicitLeft = 273
                ExplicitTop = 118
              end
              inherited Label30: TLabel
                Top = 157
                Width = 142
                Height = 39
                ExplicitLeft = 11
                ExplicitTop = 157
              end
              inherited Label33: TLabel
                Left = 273
                Top = 157
                Height = 39
                ExplicitLeft = 273
                ExplicitTop = 157
              end
              inherited Label37: TLabel
                Top = 196
                Width = 142
                Height = 39
                ExplicitLeft = 11
                ExplicitTop = 196
              end
              inherited Label40: TLabel
                Left = 273
                Top = 196
                Height = 39
                ExplicitLeft = 273
                ExplicitTop = 196
              end
              inherited Label44: TLabel
                Top = 235
                Width = 142
                Height = 39
                ExplicitLeft = 11
                ExplicitTop = 235
              end
              inherited Label47: TLabel
                Left = 273
                Top = 235
                Height = 39
                ExplicitLeft = 273
                ExplicitTop = 235
              end
              inherited editIMinAmount: TEdit
                Left = 153
                Top = 49
                ExplicitLeft = 153
                ExplicitTop = 49
              end
              inherited editIMaxAmount: TEdit
                Left = 273
                Top = 49
                ExplicitLeft = 273
                ExplicitTop = 49
              end
              inherited editIMinDura: TEdit
                Left = 153
                Top = 88
                ExplicitLeft = 153
                ExplicitTop = 88
              end
              inherited editIMaxDura: TEdit
                Left = 273
                Top = 88
                ExplicitLeft = 273
                ExplicitTop = 88
              end
              inherited editIAmoInter: TEdit
                Left = 153
                Top = 127
                ExplicitLeft = 153
                ExplicitTop = 127
                ExplicitWidth = 100
              end
              inherited editIDuraInter: TEdit
                Left = 153
                Top = 166
                ExplicitLeft = 153
                ExplicitTop = 166
              end
              inherited editIRate: TEdit
                Left = 153
                Top = 205
                ExplicitLeft = 153
                ExplicitTop = 205
              end
              inherited editIFees: TEdit
                Left = 153
                Top = 244
                ExplicitLeft = 153
                ExplicitTop = 244
              end
              inherited btnIEdit: TButton
                Left = 44
                Top = 284
                OnClick = TSettingFM1btnIEditClick
                ExplicitLeft = 44
                ExplicitTop = 284
              end
              inherited btnICancel: TButton
                Left = 165
                Top = 284
                ExplicitLeft = 165
                ExplicitTop = 284
              end
            end
            inherited GroupGrid: TGridPanel
              Left = 435
              Width = 435
              Height = 321
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
              ExplicitLeft = 435
              ExplicitWidth = 435
              ExplicitHeight = 321
              inherited Label1: TLabel
                Top = 40
                Width = 143
                Height = 39
                ExplicitTop = 40
              end
              inherited Label2: TLabel
                Left = 262
                Top = 53
                ExplicitLeft = 262
                ExplicitTop = 53
              end
              inherited Label3: TLabel
                Left = 374
                Top = 40
                Height = 39
                Alignment = taCenter
                ExplicitLeft = 374
                ExplicitTop = 40
              end
              inherited Label4: TLabel
                Top = 79
                Width = 143
                Height = 39
                ExplicitTop = 79
              end
              inherited Label5: TLabel
                Left = 262
                Top = 92
                ExplicitLeft = 262
                ExplicitTop = 92
              end
              inherited Label6: TLabel
                Left = 374
                Top = 79
                Height = 39
                Alignment = taCenter
                ExplicitLeft = 374
                ExplicitTop = 79
              end
              inherited Label7: TLabel
                Top = 118
                Width = 143
                Height = 39
                ExplicitTop = 118
              end
              inherited Label8: TLabel
                Left = 274
                Top = 118
                Height = 39
                ExplicitLeft = 274
                ExplicitTop = 118
              end
              inherited Label10: TLabel
                Top = 157
                Width = 143
                Height = 39
                ExplicitTop = 157
              end
              inherited Label12: TLabel
                Left = 274
                Top = 157
                Height = 39
                ExplicitLeft = 274
                ExplicitTop = 157
              end
              inherited Label14: TLabel
                Top = 196
                Width = 143
                Height = 39
                ExplicitTop = 196
              end
              inherited Label15: TLabel
                Left = 274
                Top = 196
                Height = 39
                ExplicitLeft = 274
                ExplicitTop = 196
              end
              inherited Label17: TLabel
                Top = 235
                Width = 143
                Height = 39
                ExplicitTop = 235
              end
              inherited Label19: TLabel
                Left = 274
                Top = 235
                Height = 39
                ExplicitLeft = 274
                ExplicitTop = 235
              end
              inherited editGMinAmount: TEdit
                Left = 154
                Top = 49
                ExplicitLeft = 154
                ExplicitTop = 49
              end
              inherited editGMaxAmount: TEdit
                Left = 274
                Top = 49
                ExplicitLeft = 274
                ExplicitTop = 49
              end
              inherited editGMinDura: TEdit
                Left = 154
                Top = 88
                ExplicitLeft = 154
                ExplicitTop = 88
              end
              inherited editGMaxDura: TEdit
                Left = 274
                Top = 88
                ExplicitLeft = 274
                ExplicitTop = 88
              end
              inherited editGAmoInter: TEdit
                Left = 154
                Top = 127
                ExplicitLeft = 154
                ExplicitTop = 127
              end
              inherited editGDuraInter: TEdit
                Left = 154
                Top = 166
                ExplicitLeft = 154
                ExplicitTop = 166
              end
              inherited editGRate: TEdit
                Left = 154
                Top = 205
                ExplicitLeft = 154
                ExplicitTop = 205
              end
              inherited editGFees: TEdit
                Left = 154
                Top = 244
                ExplicitLeft = 154
                ExplicitTop = 244
              end
              inherited btnGEdit: TButton
                Left = 45
                Top = 284
                ExplicitLeft = 45
                ExplicitTop = 284
              end
              inherited btnGCancel: TButton
                Left = 166
                Top = 284
                ExplicitLeft = 166
                ExplicitTop = 284
              end
            end
          end
          inherited GridPanel3: TGridPanel
            Left = 872
            Height = 323
            ExplicitLeft = 872
            ExplicitTop = 1
            ExplicitHeight = 647
          end
          inherited GridPanel4: TGridPanel
            Top = 324
            Width = 871
            Height = 324
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
            ExplicitLeft = 1
            ExplicitTop = 324
            ExplicitWidth = 871
            ExplicitHeight = 324
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
                  Control = TSettingFM1.Edit17
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
              ExplicitLeft = 1
              ExplicitTop = 1
              ExplicitWidth = 869
              ExplicitHeight = 50
              inherited Label22: TLabel
                ExplicitLeft = 11
                ExplicitTop = 1
              end
              inherited Edit17: TEdit
                ExplicitLeft = 91
                ExplicitTop = 14
                ExplicitWidth = 120
              end
              inherited btnSearch: TButton
                ExplicitLeft = 213
                ExplicitTop = 12
              end
              inherited btnAdd: TButton
                Left = 620
                ExplicitLeft = 620
                ExplicitTop = 12
              end
              inherited btnDelete: TButton
                Left = 700
                ExplicitLeft = 700
                ExplicitTop = 12
              end
              inherited btnRefresh: TButton
                Left = 780
                ExplicitLeft = 780
                ExplicitTop = 12
              end
            end
            inherited DBGrid1: TDBGrid
              Width = 869
              Height = 272
            end
          end
        end
      end
    end
  end
end
