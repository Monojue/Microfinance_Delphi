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
    object TabSheet1: TTabSheet
      Caption = '                CLIENT             '
      ExplicitWidth = 296
      ExplicitHeight = 173
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
        ExplicitWidth = 296
        ExplicitHeight = 173
        inherited GridPanel1: TGridPanel
          Width = 1223
          Height = 649
          ControlCollection = <
            item
              Column = 0
              Control = TClientFM1.DBGrid1
              Row = 1
            end
            item
              Column = 0
              Control = TClientFM1.GridPanel2
              Row = 0
            end>
          ExplicitWidth = 296
          ExplicitHeight = 173
          inherited DBGrid1: TDBGrid
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
                Control = TClientFM1.ComboBox1
                Row = 0
              end
              item
                Column = 3
                Control = TClientFM1.Label2
                Row = 0
              end
              item
                Column = 4
                Control = TClientFM1.Edit2
                Row = 0
              end
              item
                Column = 5
                Control = TClientFM1.btnSearch
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
              end>
            ExplicitWidth = 294
            inherited btnNew: TButton
              Left = 972
              ExplicitLeft = 972
            end
            inherited btnEdit: TButton
              Left = 1052
              ExplicitLeft = 1052
            end
            inherited btnDelete: TButton
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
      ExplicitWidth = 296
      ExplicitHeight = 173
      inline TGroupFM1: TGroupFM
        Left = 0
        Top = 0
        Width = 1223
        Height = 649
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 296
        ExplicitHeight = 173
        inherited GridPanel1: TGridPanel
          Width = 1223
          Height = 649
          ControlCollection = <
            item
              Column = 0
              Control = TGroupFM1.DBGrid1
              Row = 1
            end
            item
              Column = 0
              Control = TGroupFM1.GridPanel2
              Row = 0
            end>
          ExplicitWidth = 296
          ExplicitHeight = 173
          inherited DBGrid1: TDBGrid
            Width = 1215
            Height = 591
            Columns = <
              item
                Expanded = False
                FieldName = 'GroupID'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Leader'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'leaderName'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Member_1'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'M1Name'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Member_2'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'M2Name'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Member_3'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'M3Name'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Member_4'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'M4Name'
                Width = 150
                Visible = True
              end>
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
                Control = TGroupFM1.ComboBox1
                Row = 0
              end
              item
                Column = 3
                Control = TGroupFM1.Label2
                Row = 0
              end
              item
                Column = 4
                Control = TGroupFM1.Edit2
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
              end>
            ExplicitWidth = 294
            inherited btnNew: TButton
              Left = 972
              ExplicitLeft = 972
            end
            inherited btnEdit: TButton
              Left = 1052
              ExplicitLeft = 1052
            end
            inherited btnDelete: TButton
              Left = 1132
              ExplicitLeft = 1132
            end
          end
        end
      end
    end
  end
end
