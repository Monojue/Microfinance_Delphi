object GroupLoanRequest: TGroupLoanRequest
  Left = 0
  Top = 0
  Caption = 'Group Loan Request Form'
  ClientHeight = 710
  ClientWidth = 949
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
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
    ExplicitWidth = 1295
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
      ExplicitWidth = 1293
      object lblID: TLabel
        Left = 111
        Top = 1
        Width = 4
        Height = 48
        Margins.Left = 50
        Align = alLeft
        Layout = tlCenter
        ExplicitLeft = 71
        ExplicitHeight = 16
      end
      object Label1: TLabel
        Left = 1
        Top = 1
        Width = 110
        Height = 48
        Margins.Right = 10
        Align = alClient
        Alignment = taRightJustify
        Caption = 'LoanRequest ID : '
        Layout = tlCenter
        ExplicitLeft = -6
      end
      object Label4: TLabel
        Left = 756
        Top = 1
        Width = 50
        Height = 48
        Align = alClient
        Alignment = taRightJustify
        Caption = 'Date : '
        Layout = tlCenter
        ExplicitLeft = 1113
        ExplicitWidth = 39
        ExplicitHeight = 16
      end
      object lblDate: TLabel
        Left = 806
        Top = 1
        Width = 4
        Height = 48
        Align = alLeft
        Layout = tlCenter
        ExplicitLeft = 1152
        ExplicitHeight = 16
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
          Column = 1
          Control = DBGrid1
          Row = 0
          RowSpan = 2
        end
        item
          Column = 0
          Control = RelativePanel3
          Row = 1
        end
        item
          Column = 0
          Control = centerGrid
          Row = 0
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
      ExplicitWidth = 1293
      object DBGrid1: TDBGrid
        Left = 473
        Top = 1
        Width = 473
        Height = 605
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            Title.Alignment = taCenter
            Title.Caption = 'No'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            Title.Alignment = taCenter
            Title.Caption = 'Principal Outstanding'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            Title.Alignment = taCenter
            Title.Caption = 'Principal'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            Title.Alignment = taCenter
            Title.Caption = 'Interest'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            Title.Alignment = taCenter
            Title.Caption = 'Installment'
            Width = 120
            Visible = True
          end>
      end
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
            Control = Label27
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Label28
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
        TabOrder = 1
        VerticalAlignment = taAlignTop
        ExplicitLeft = 419
        ExplicitTop = 17
        ExplicitWidth = 316
        ExplicitHeight = 348
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
          Width = 37
          Height = 13
          Anchors = []
          Caption = 'Amount'
        end
        object Label19: TLabel
          Left = 240
          Top = 85
          Width = 27
          Height = 13
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
          Width = 41
          Height = 13
          Anchors = []
          Caption = 'Duration'
        end
        object Label24: TLabel
          Left = 240
          Top = 162
          Width = 30
          Height = 13
          Anchors = []
          Caption = 'Month'
        end
        object Label25: TLabel
          Left = 48
          Top = 196
          Width = 65
          Height = 13
          Anchors = []
          Caption = 'Interest Rate'
        end
        object Label26: TLabel
          Left = 48
          Top = 227
          Width = 61
          Height = 13
          Anchors = []
          Caption = 'Service Fees'
        end
        object Label27: TLabel
          Left = 152
          Top = 196
          Width = 30
          Height = 13
          Anchors = []
          Caption = 'Month'
        end
        object Label28: TLabel
          Left = 152
          Top = 227
          Width = 30
          Height = 13
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
        end
        object editAmount: TLabel
          Left = 104
          Top = 85
          Width = 22
          Height = 13
          Anchors = []
          Caption = 'label'
        end
        object editDuration: TLabel
          Left = 104
          Top = 162
          Width = 22
          Height = 13
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
        TabOrder = 2
        ExplicitLeft = 9
        ExplicitTop = 9
        ExplicitWidth = 390
        DesignSize = (
          472
          348)
        object Label11: TLabel
          Left = 173
          Top = 59
          Width = 27
          Height = 13
          Anchors = []
          Caption = 'Name'
          ExplicitLeft = 195
          ExplicitTop = 47
        end
        object Label12: TLabel
          Left = 308
          Top = 59
          Width = 41
          Height = 13
          Anchors = []
          Caption = 'Client ID'
          ExplicitLeft = 358
          ExplicitTop = 47
        end
        object Label2: TLabel
          Left = 57
          Top = 102
          Width = 33
          Height = 13
          Anchors = []
          Caption = 'Leader'
          ExplicitLeft = 64
          ExplicitTop = 82
        end
        object Label22: TLabel
          Left = 50
          Top = 145
          Width = 47
          Height = 13
          Anchors = []
          Caption = 'Member 1'
          ExplicitLeft = 64
          ExplicitTop = 117
        end
        object Label3: TLabel
          Left = 50
          Top = 188
          Width = 47
          Height = 13
          Anchors = []
          Caption = 'Member 2'
          ExplicitLeft = 64
          ExplicitTop = 152
        end
        object Label34: TLabel
          Left = 50
          Top = 231
          Width = 47
          Height = 13
          Anchors = []
          Caption = 'Member 3'
          ExplicitLeft = 64
          ExplicitTop = 187
        end
        object Label40: TLabel
          Left = 50
          Top = 274
          Width = 47
          Height = 13
          Anchors = []
          Caption = 'Member 4'
          ExplicitLeft = 64
          ExplicitTop = 222
        end
        object lblLeadName: TLabel
          Left = 116
          Top = 87
          Width = 142
          Height = 43
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitLeft = 97
          ExplicitWidth = 3
          ExplicitHeight = 13
        end
        object lblLeadID: TLabel
          Left = 258
          Top = 87
          Width = 142
          Height = 43
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitLeft = 207
          ExplicitWidth = 3
          ExplicitHeight = 13
        end
        object lblM1Name: TLabel
          Left = 116
          Top = 130
          Width = 142
          Height = 43
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitLeft = 97
          ExplicitWidth = 3
          ExplicitHeight = 13
        end
        object lblM1ID: TLabel
          Left = 258
          Top = 130
          Width = 142
          Height = 43
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitLeft = 207
          ExplicitWidth = 3
          ExplicitHeight = 13
        end
        object lblM2Name: TLabel
          Left = 116
          Top = 173
          Width = 142
          Height = 43
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitLeft = 97
          ExplicitWidth = 3
          ExplicitHeight = 13
        end
        object lblM2ID: TLabel
          Left = 258
          Top = 173
          Width = 142
          Height = 43
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitLeft = 207
          ExplicitWidth = 3
          ExplicitHeight = 13
        end
        object lblM3Name: TLabel
          Left = 116
          Top = 216
          Width = 142
          Height = 43
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitLeft = 97
          ExplicitWidth = 3
          ExplicitHeight = 13
        end
        object lblM3ID: TLabel
          Left = 258
          Top = 216
          Width = 142
          Height = 43
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitLeft = 207
          ExplicitWidth = 3
          ExplicitHeight = 13
        end
        object lblM4Name: TLabel
          Left = 116
          Top = 259
          Width = 142
          Height = 43
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitLeft = 97
          ExplicitWidth = 3
          ExplicitHeight = 13
        end
        object lblM4ID: TLabel
          Left = 258
          Top = 259
          Width = 142
          Height = 43
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitLeft = 207
          ExplicitWidth = 3
          ExplicitHeight = 13
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
          ExplicitLeft = 13
          ExplicitTop = 7
          ExplicitWidth = 24
        end
        object lblGID: TLabel
          Left = 116
          Top = 1
          Width = 142
          Height = 43
          Align = alClient
          Layout = tlCenter
          ExplicitLeft = 40
          ExplicitTop = 4
          ExplicitWidth = 85
        end
        object btnSelect: TButton
          Left = 291
          Top = 312
          Width = 75
          Height = 25
          Anchors = []
          Caption = 'Select'
          TabOrder = 0
          ExplicitLeft = 320
          ExplicitTop = 304
        end
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
      ExplicitLeft = 2
      ExplicitTop = 663
      ExplicitWidth = 1293
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
        ExplicitLeft = 1104
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
        ExplicitLeft = 1204
      end
    end
  end
end
