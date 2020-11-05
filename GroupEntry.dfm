object frmGroupEntry: TfrmGroupEntry
  Left = 244
  Top = 0
  Caption = 'Group Entry'
  ClientHeight = 386
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MainGrid: TGridPanel
    Left = 0
    Top = 0
    Width = 530
    Height = 386
    Align = alClient
    ColumnCollection = <
      item
        Value = 100.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = topGrip
        Row = 0
      end
      item
        Column = 0
        Control = bottomgrip
        Row = 2
      end
      item
        Column = 0
        Control = centerGrid
        Row = 1
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
        SizeStyle = ssAbsolute
        Value = 50.000000000000000000
      end>
    TabOrder = 0
    object topGrip: TGridPanel
      Left = 1
      Top = 1
      Width = 528
      Height = 50
      Align = alClient
      Anchors = []
      ColumnCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 75.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 100.000000000000000000
        end
        item
          Value = 100.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 75.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 100.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = Label1
          Row = 0
        end
        item
          Column = 1
          Control = lblID
          Row = 0
        end
        item
          Column = 3
          Control = Label4
          Row = 0
        end
        item
          Column = 4
          Control = lblDate
          Row = 0
        end>
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 0
      object Label1: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 69
        Height = 42
        Align = alClient
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = 'Group ID : '
        ParentBiDiMode = False
        Layout = tlCenter
        ExplicitLeft = 20
        ExplicitWidth = 53
        ExplicitHeight = 13
      end
      object lblID: TLabel
        Left = 76
        Top = 1
        Width = 100
        Height = 48
        Align = alClient
        Layout = tlCenter
        ExplicitWidth = 3
        ExplicitHeight = 13
      end
      object Label4: TLabel
        Left = 352
        Top = 1
        Width = 75
        Height = 48
        Align = alClient
        Alignment = taRightJustify
        Caption = 'Date : '
        Layout = tlCenter
        ExplicitLeft = 394
        ExplicitWidth = 33
        ExplicitHeight = 13
      end
      object lblDate: TLabel
        Left = 427
        Top = 1
        Width = 100
        Height = 48
        Align = alClient
        Layout = tlCenter
        ExplicitWidth = 3
        ExplicitHeight = 13
      end
    end
    object bottomgrip: TGridPanel
      Left = 1
      Top = 335
      Width = 528
      Height = 50
      Align = alClient
      ColumnCollection = <
        item
          Value = 100.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 100.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 100.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 1
          Control = btnSave
          Row = 0
        end
        item
          Column = 2
          Control = btnCancel
          Row = 0
        end>
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 1
      DesignSize = (
        528
        50)
      object btnSave: TButton
        Left = 339
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Save'
        TabOrder = 0
        OnClick = btnSaveClick
      end
      object btnCancel: TButton
        Left = 439
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Cancel'
        TabOrder = 1
        OnClick = btnCancelClick
      end
    end
    object centerGrid: TGridPanel
      Left = 1
      Top = 51
      Width = 528
      Height = 284
      Align = alClient
      ColumnCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 30.000000000000000000
        end
        item
          Value = 23.076923076923080000
        end
        item
          Value = 38.461538461538460000
        end
        item
          Value = 38.461538461538460000
        end
        item
          SizeStyle = ssAbsolute
          Value = 40.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 30.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 2
          Control = Label11
          Row = 1
        end
        item
          Column = 3
          Control = Label12
          Row = 1
        end
        item
          Column = 1
          Control = Label16
          Row = 2
        end
        item
          Column = 1
          Control = Label22
          Row = 3
        end
        item
          Column = 1
          Control = Label28
          Row = 4
        end
        item
          Column = 1
          Control = Label34
          Row = 5
        end
        item
          Column = 1
          Control = Label40
          Row = 6
        end
        item
          Column = 2
          Control = lblLeadName
          Row = 2
        end
        item
          Column = 3
          Control = lblLeadID
          Row = 2
        end
        item
          Column = 2
          Control = lblM1Name
          Row = 3
        end
        item
          Column = 3
          Control = lblM1ID
          Row = 3
        end
        item
          Column = 2
          Control = lblM2Name
          Row = 4
        end
        item
          Column = 3
          Control = lblM2ID
          Row = 4
        end
        item
          Column = 2
          Control = lblM3Name
          Row = 5
        end
        item
          Column = 3
          Control = lblM3ID
          Row = 5
        end
        item
          Column = 2
          Control = lblM4Name
          Row = 6
        end
        item
          Column = 4
          Control = btnAdd1
          Row = 2
        end
        item
          Column = 4
          Control = btnAdd2
          Row = 3
        end
        item
          Column = 4
          Control = btnAdd3
          Row = 4
        end
        item
          Column = 4
          Control = btnAdd4
          Row = 5
        end
        item
          Column = 3
          Control = lblM4ID
          Row = 6
        end
        item
          Column = 4
          Control = btnAdd5
          Row = 6
        end>
      RowCollection = <
        item
          Value = 12.500000000000000000
        end
        item
          Value = 12.500000000000000000
        end
        item
          Value = 12.500000000000000000
        end
        item
          Value = 12.500000000000000000
        end
        item
          Value = 12.500000000000000000
        end
        item
          Value = 12.500000000000000000
        end
        item
          Value = 12.500000000000000000
        end
        item
          Value = 12.500000000000000000
        end>
      TabOrder = 2
      DesignSize = (
        528
        284)
      object Label11: TLabel
        Left = 197
        Top = 47
        Width = 27
        Height = 13
        Anchors = []
        Caption = 'Name'
        ExplicitLeft = 195
      end
      object Label12: TLabel
        Left = 353
        Top = 47
        Width = 41
        Height = 13
        Anchors = []
        Caption = 'Client ID'
        ExplicitLeft = 358
      end
      object Label16: TLabel
        Left = 63
        Top = 82
        Width = 33
        Height = 13
        Anchors = []
        Caption = 'Leader'
        ExplicitLeft = 64
      end
      object Label22: TLabel
        Left = 56
        Top = 117
        Width = 47
        Height = 13
        Anchors = []
        Caption = 'Member 1'
        ExplicitLeft = 64
      end
      object Label28: TLabel
        Left = 56
        Top = 152
        Width = 47
        Height = 13
        Anchors = []
        Caption = 'Member 2'
        ExplicitLeft = 64
      end
      object Label34: TLabel
        Left = 56
        Top = 187
        Width = 47
        Height = 13
        Anchors = []
        Caption = 'Member 3'
        ExplicitLeft = 64
      end
      object Label40: TLabel
        Left = 56
        Top = 222
        Width = 47
        Height = 13
        Anchors = []
        Caption = 'Member 4'
        ExplicitLeft = 64
      end
      object lblLeadName: TLabel
        Left = 129
        Top = 71
        Width = 163
        Height = 35
        Align = alClient
        Alignment = taCenter
        Layout = tlCenter
        ExplicitWidth = 3
        ExplicitHeight = 13
      end
      object lblLeadID: TLabel
        Left = 292
        Top = 71
        Width = 163
        Height = 35
        Align = alClient
        Alignment = taCenter
        Layout = tlCenter
        ExplicitWidth = 3
        ExplicitHeight = 13
      end
      object lblM1Name: TLabel
        Left = 129
        Top = 106
        Width = 163
        Height = 35
        Align = alClient
        Alignment = taCenter
        Layout = tlCenter
        ExplicitWidth = 3
        ExplicitHeight = 13
      end
      object lblM1ID: TLabel
        Left = 292
        Top = 106
        Width = 163
        Height = 35
        Align = alClient
        Alignment = taCenter
        Layout = tlCenter
        ExplicitWidth = 3
        ExplicitHeight = 13
      end
      object lblM2Name: TLabel
        Left = 129
        Top = 141
        Width = 163
        Height = 35
        Align = alClient
        Alignment = taCenter
        Layout = tlCenter
        ExplicitLeft = 130
        ExplicitTop = 140
      end
      object lblM2ID: TLabel
        Left = 292
        Top = 141
        Width = 163
        Height = 35
        Align = alClient
        Alignment = taCenter
        Layout = tlCenter
        ExplicitWidth = 3
        ExplicitHeight = 13
      end
      object lblM3Name: TLabel
        Left = 129
        Top = 176
        Width = 163
        Height = 35
        Align = alClient
        Alignment = taCenter
        Layout = tlCenter
        ExplicitLeft = 130
        ExplicitTop = 175
      end
      object lblM3ID: TLabel
        Left = 292
        Top = 176
        Width = 163
        Height = 35
        Align = alClient
        Alignment = taCenter
        Layout = tlCenter
        ExplicitWidth = 3
        ExplicitHeight = 13
      end
      object lblM4Name: TLabel
        Left = 129
        Top = 211
        Width = 163
        Height = 35
        Align = alClient
        Alignment = taCenter
        Layout = tlCenter
        ExplicitLeft = 130
        ExplicitTop = 210
      end
      object btnAdd1: TButton
        Left = 462
        Top = 76
        Width = 25
        Height = 25
        Anchors = []
        Caption = '+'
        TabOrder = 0
        OnClick = btnAdd1Click
      end
      object btnAdd2: TButton
        Left = 462
        Top = 111
        Width = 25
        Height = 25
        Anchors = []
        Caption = '+'
        TabOrder = 1
        OnClick = btnAdd2Click
      end
      object btnAdd3: TButton
        Left = 462
        Top = 146
        Width = 25
        Height = 25
        Anchors = []
        Caption = '+'
        TabOrder = 2
        OnClick = btnAdd3Click
      end
      object btnAdd4: TButton
        Left = 462
        Top = 181
        Width = 25
        Height = 25
        Anchors = []
        Caption = '+'
        TabOrder = 3
        OnClick = btnAdd4Click
      end
      object lblM4ID: TLabel
        Left = 292
        Top = 211
        Width = 163
        Height = 35
        Align = alClient
        Alignment = taCenter
        Layout = tlCenter
        ExplicitWidth = 3
        ExplicitHeight = 13
      end
      object btnAdd5: TButton
        Left = 462
        Top = 216
        Width = 25
        Height = 25
        Anchors = []
        Caption = '+'
        TabOrder = 4
        OnClick = btnAdd5Click
      end
    end
  end
end
