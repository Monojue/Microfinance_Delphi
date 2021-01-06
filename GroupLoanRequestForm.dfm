object GroupLoanRequest: TGroupLoanRequest
  Left = 0
  Top = 0
  Caption = 'Group Loan Request Form'
  ClientHeight = 710
  ClientWidth = 949
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object MainGrid: TGridPanel
    Left = 0
    Top = 0
    Width = 949
    Height = 710
    Align = alClient
    ColumnCollection = <
      item
        Value = 100.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = TopGrip
        Row = 0
      end
      item
        Column = 0
        Control = MidGrid
        Row = 1
      end
      item
        Column = 0
        Control = GridPanel1
        Row = 2
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
    object TopGrip: TGridPanel
      Left = 1
      Top = 1
      Width = 947
      Height = 50
      Align = alClient
      ColumnCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 110.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 140.000000000000000000
        end
        item
          Value = 100.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 50.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 140.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 1
          Control = lblID
          Row = 0
        end
        item
          Column = -1
          Row = -1
        end
        item
          Column = 0
          Control = Label1
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      RowCollection = <
        item
          Value = 100.000000000000000000
        end
        item
          SizeStyle = ssAuto
        end>
      TabOrder = 0
      object lblID: TLabel
        Left = 111
        Top = 1
        Width = 4
        Height = 16
        Margins.Left = 50
        Align = alLeft
        Layout = tlCenter
      end
      object Label1: TLabel
        Left = 9
        Top = 1
        Width = 102
        Height = 16
        Margins.Right = 10
        Align = alClient
        Alignment = taRightJustify
        Caption = 'LoanRequest ID : '
        Layout = tlCenter
      end
      object Label4: TLabel
        Left = 767
        Top = 1
        Width = 39
        Height = 16
        Align = alClient
        Alignment = taRightJustify
        Caption = 'Date : '
        Layout = tlCenter
      end
      object lblDate: TLabel
        Left = 806
        Top = 1
        Width = 4
        Height = 16
        Align = alLeft
        Layout = tlCenter
      end
    end
    object MidGrid: TGridPanel
      Left = 1
      Top = 51
      Width = 947
      Height = 608
      Align = alClient
      ColumnCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = RelativePanel3
          Row = 1
        end
        item
          Column = 0
          Control = centerGrid
          Row = 0
        end
        item
          Column = 1
          Control = StringGrid
          Row = 0
          RowSpan = 2
        end>
      RowCollection = <
        item
          Value = 57.543111573645890000
        end
        item
          Value = 42.456888426354110000
        end
        item
          SizeStyle = ssAuto
        end>
      TabOrder = 1
      object RelativePanel3: TRelativePanel
        Left = 1
        Top = 349
        Width = 472
        Height = 257
        ControlCollection = <
          item
            Control = barAmount
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Label16
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Label19
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = barDuration
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Label23
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Label24
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Label25
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Label26
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = lblRate
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = lblFees
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = btnCalculate
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = editAmount
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = editDuration
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end>
        Align = alClient
        Alignment = taLeftJustify
        Caption = 'LOAN INFORMATION'
        TabOrder = 0
        VerticalAlignment = taAlignTop
        DesignSize = (
          472
          257)
        object barAmount: TTrackBar
          Left = 40
          Top = 33
          Width = 217
          Height = 45
          Anchors = []
          LineSize = 100000
          TabOrder = 0
          OnChange = barAmountChange
        end
        object Label16: TLabel
          Left = 48
          Top = 85
          Width = 51
          Height = 18
          Anchors = []
          Caption = 'Amount'
        end
        object Label19: TLabel
          Left = 240
          Top = 85
          Width = 37
          Height = 18
          Anchors = []
          Caption = 'Kyats'
        end
        object barDuration: TTrackBar
          Left = 40
          Top = 111
          Width = 217
          Height = 45
          Anchors = []
          TabOrder = 1
          OnChange = barDurationChange
        end
        object Label23: TLabel
          Left = 48
          Top = 162
          Width = 54
          Height = 18
          Anchors = []
          Caption = 'Duration'
        end
        object Label24: TLabel
          Left = 240
          Top = 162
          Width = 41
          Height = 18
          Anchors = []
          Caption = 'Month'
        end
        object Label25: TLabel
          Left = 48
          Top = 196
          Width = 87
          Height = 18
          Anchors = []
          Caption = 'Interest Rate'
        end
        object Label26: TLabel
          Left = 48
          Top = 227
          Width = 82
          Height = 18
          Anchors = []
          Caption = 'Service Fees'
        end
        object lblRate: TLabel
          Left = 152
          Top = 196
          Width = 41
          Height = 18
          Anchors = []
          Caption = 'Month'
        end
        object lblFees: TLabel
          Left = 152
          Top = 227
          Width = 41
          Height = 18
          Anchors = []
          Caption = 'Month'
        end
        object btnCalculate: TButton
          Left = 293
          Top = 222
          Width = 75
          Height = 25
          Anchors = []
          Caption = 'Calculate'
          TabOrder = 2
          OnClick = btnCalculateClick
        end
        object editAmount: TLabel
          Left = 104
          Top = 85
          Width = 28
          Height = 18
          Anchors = []
          Caption = 'label'
        end
        object editDuration: TLabel
          Left = 104
          Top = 162
          Width = 28
          Height = 18
          Anchors = []
          Caption = 'label'
        end
      end
      object centerGrid: TGridPanel
        Left = 1
        Top = 1
        Width = 472
        Height = 348
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
            Control = Label2
            Row = 2
          end
          item
            Column = 1
            Control = Label22
            Row = 3
          end
          item
            Column = 1
            Control = Label3
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
            Column = 3
            Control = lblM4ID
            Row = 6
          end
          item
            Column = 1
            Control = Label5
            Row = 0
          end
          item
            Column = 2
            Control = lblGID
            Row = 0
          end
          item
            Column = 3
            Control = btnSelect
            Row = 7
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
        TabOrder = 1
        DesignSize = (
          472
          348)
        object Label11: TLabel
          Left = 167
          Top = 56
          Width = 39
          Height = 18
          Anchors = []
          Caption = 'Name'
          ExplicitLeft = 173
          ExplicitTop = 59
        end
        object Label12: TLabel
          Left = 301
          Top = 56
          Width = 55
          Height = 18
          Anchors = []
          Caption = 'Client ID'
          ExplicitLeft = 308
          ExplicitTop = 59
        end
        object Label2: TLabel
          Left = 51
          Top = 99
          Width = 44
          Height = 18
          Anchors = []
          Caption = 'Leader'
          ExplicitLeft = 57
          ExplicitTop = 102
        end
        object Label22: TLabel
          Left = 40
          Top = 142
          Width = 67
          Height = 18
          Anchors = []
          Caption = 'Member 1'
          ExplicitLeft = 50
          ExplicitTop = 145
        end
        object Label3: TLabel
          Left = 40
          Top = 185
          Width = 67
          Height = 18
          Anchors = []
          Caption = 'Member 2'
          ExplicitLeft = 50
          ExplicitTop = 188
        end
        object Label34: TLabel
          Left = 40
          Top = 228
          Width = 67
          Height = 18
          Anchors = []
          Caption = 'Member 3'
          ExplicitLeft = 50
          ExplicitTop = 231
        end
        object Label40: TLabel
          Left = 40
          Top = 271
          Width = 67
          Height = 18
          Anchors = []
          Caption = 'Member 4'
          ExplicitLeft = 50
          ExplicitTop = 274
        end
        object lblLeadName: TLabel
          Left = 116
          Top = 87
          Width = 142
          Height = 43
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object lblLeadID: TLabel
          Left = 258
          Top = 87
          Width = 142
          Height = 43
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object lblM1Name: TLabel
          Left = 116
          Top = 130
          Width = 142
          Height = 43
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object lblM1ID: TLabel
          Left = 258
          Top = 130
          Width = 142
          Height = 43
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object lblM2Name: TLabel
          Left = 116
          Top = 173
          Width = 142
          Height = 43
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object lblM2ID: TLabel
          Left = 258
          Top = 173
          Width = 142
          Height = 43
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object lblM3Name: TLabel
          Left = 116
          Top = 216
          Width = 142
          Height = 43
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object lblM3ID: TLabel
          Left = 258
          Top = 216
          Width = 142
          Height = 43
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object lblM4Name: TLabel
          Left = 116
          Top = 259
          Width = 142
          Height = 43
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object lblM4ID: TLabel
          Left = 258
          Top = 259
          Width = 142
          Height = 43
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label5: TLabel
          AlignWithMargins = True
          Left = 34
          Top = 4
          Width = 79
          Height = 37
          Align = alClient
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          Caption = 'Group ID : '
          ParentBiDiMode = False
          Layout = tlCenter
          ExplicitLeft = 38
          ExplicitWidth = 75
          ExplicitHeight = 18
        end
        object lblGID: TLabel
          Left = 116
          Top = 1
          Width = 142
          Height = 43
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object btnSelect: TButton
          Left = 291
          Top = 312
          Width = 75
          Height = 25
          Anchors = []
          Caption = 'Select'
          TabOrder = 0
          OnClick = btnSelectClick
        end
      end
      object StringGrid: TStringGrid
        Left = 473
        Top = 1
        Width = 473
        Height = 605
        Align = alClient
        RowCount = 1
        FixedRows = 0
        TabOrder = 2
      end
    end
    object GridPanel1: TGridPanel
      Left = 1
      Top = 659
      Width = 947
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
          Control = btnRequest
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
      ShowCaption = False
      TabOrder = 2
      DesignSize = (
        947
        50)
      object btnRequest: TButton
        Left = 758
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Request'
        TabOrder = 0
        OnClick = btnRequestClick
      end
      object btnCancel: TButton
        Left = 858
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Cancel'
        TabOrder = 1
        OnClick = btnCancelClick
      end
    end
  end
end
