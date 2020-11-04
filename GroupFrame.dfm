object GroupFM: TGroupFM
  Left = 0
  Top = 0
  Width = 1231
  Height = 677
  TabOrder = 0
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 1231
    Height = 677
    Align = alClient
    ColumnCollection = <
      item
        Value = 100.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = DBGrid1
        Row = 1
      end
      item
        Column = 0
        Control = GridPanel2
        Row = 0
      end>
    RowCollection = <
      item
        SizeStyle = ssAbsolute
        Value = 50.000000000000000000
      end
      item
        Value = 100.000000000000000000
      end
      item
        SizeStyle = ssAuto
      end
      item
        SizeStyle = ssAuto
      end>
    TabOrder = 0
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 54
      Width = 1223
      Height = 619
      Align = alClient
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'GroupID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Leader'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'leaderName'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Member_1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M1Name'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Member_2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M2Name'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Member_3'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M3Name'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Member_4'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M4Name'
          Visible = True
        end>
    end
    object GridPanel2: TGridPanel
      Left = 1
      Top = 1
      Width = 1229
      Height = 50
      Align = alClient
      ColumnCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 10.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 70.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
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
          Value = 10.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 1
          Control = Label1
          Row = 0
        end
        item
          Column = 2
          Control = ComboBox1
          Row = 0
        end
        item
          Column = 3
          Control = Label2
          Row = 0
        end
        item
          Column = 4
          Control = Edit2
          Row = 0
        end
        item
          Column = 5
          Control = btnSearch
          Row = 0
        end
        item
          Column = 7
          Control = btnNew
          Row = 0
        end
        item
          Column = 8
          Control = btnEdit
          Row = 0
        end
        item
          Column = 9
          Control = btnDelete
          Row = 0
        end>
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 1
      DesignSize = (
        1229
        50)
      object Label1: TLabel
        Left = 12
        Top = 18
        Width = 68
        Height = 13
        Anchors = []
        Caption = 'Search With : '
        ExplicitLeft = 36
        ExplicitTop = 6
      end
      object ComboBox1: TComboBox
        Left = 85
        Top = 14
        Width = 112
        Height = 21
        Anchors = []
        TabOrder = 0
        Text = 'ComboBox1'
      end
      object Label2: TLabel
        Left = 205
        Top = 18
        Width = 16
        Height = 13
        Anchors = []
        Caption = 'CL-'
        ExplicitLeft = 201
        ExplicitTop = 6
      end
      object Edit2: TEdit
        Left = 230
        Top = 14
        Width = 121
        Height = 21
        Anchors = []
        TabOrder = 1
        Text = 'Edit2'
      end
      object btnSearch: TButton
        Left = 358
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Search'
        TabOrder = 2
      end
      object btnNew: TButton
        Left = 980
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'New'
        TabOrder = 3
        OnClick = btnNewClick
      end
      object btnEdit: TButton
        Left = 1060
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Edit'
        TabOrder = 4
      end
      object btnDelete: TButton
        Left = 1140
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Delete'
        TabOrder = 5
      end
    end
  end
end
