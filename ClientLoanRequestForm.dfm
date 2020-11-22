object ClientLoanRequest: TClientLoanRequest
  Left = 0
  Top = 0
  Caption = 'Client Loan Request Form'
  ClientHeight = 710
  ClientWidth = 1295
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
    Width = 1295
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
      Width = 1293
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
        Height = 48
        Margins.Left = 50
        Align = alLeft
        Layout = tlCenter
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
        ExplicitLeft = 9
        ExplicitWidth = 102
        ExplicitHeight = 16
      end
      object Label4: TLabel
        Left = 1102
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
        Left = 1152
        Top = 1
        Width = 4
        Height = 48
        Align = alLeft
        Layout = tlCenter
        ExplicitHeight = 16
      end
    end
    object MidGrid: TGridPanel
      Left = 1
      Top = 51
      Width = 1293
      Height = 608
      Align = alClient
      ColumnCollection = <
        item
          Value = 32.907892662852470000
        end
        item
          Value = 24.491239131453500000
        end
        item
          Value = 42.600868205694030000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = GridPanel2
          Row = 0
        end
        item
          Column = 1
          Control = RelativePanel3
          Row = 0
        end
        item
          Column = 0
          ColumnSpan = 2
          Control = RelativePanel2
          Row = 1
        end
        item
          Column = 2
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
      object GridPanel2: TGridPanel
        Left = 1
        Top = 1
        Width = 424
        Height = 348
        Align = alClient
        Alignment = taLeftJustify
        Caption = 'CLIENT INFROMATION'
        ColumnCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 10.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 150.000000000000000000
          end
          item
            Value = 33.333333333333340000
          end
          item
            Value = 33.333333333333340000
          end
          item
            Value = 33.333333333333340000
          end
          item
            SizeStyle = ssAbsolute
            Value = 10.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 1
            Control = Label11
            Row = 1
          end
          item
            Column = 2
            ColumnSpan = 2
            Control = lblCID
            Row = 1
          end
          item
            Column = 1
            Control = Label32
            Row = 2
          end
          item
            Column = 2
            ColumnSpan = 2
            Control = lblName
            Row = 2
          end
          item
            Column = 1
            Control = Label38
            Row = 3
          end
          item
            Column = 2
            ColumnSpan = 2
            Control = lblNRC
            Row = 3
          end
          item
            Column = 1
            Control = Label44
            Row = 4
          end
          item
            Column = 2
            ColumnSpan = 2
            Control = lblDOB
            Row = 4
          end
          item
            Column = 1
            Control = Label50
            Row = 5
          end
          item
            Column = 2
            ColumnSpan = 3
            Control = lblAddress
            Row = 5
          end
          item
            Column = 1
            Control = Label56
            Row = 6
          end
          item
            Column = 2
            ColumnSpan = 2
            Control = lblPhone
            Row = 6
          end
          item
            Column = 1
            Control = Label62
            Row = 7
          end
          item
            Column = 2
            ColumnSpan = 2
            Control = lblHome
            Row = 7
          end
          item
            Column = 1
            Control = Label68
            Row = 8
          end
          item
            Column = 2
            ColumnSpan = 2
            Control = lblJob
            Row = 8
          end
          item
            Column = 1
            Control = Label74
            Row = 9
          end
          item
            Column = 2
            ColumnSpan = 2
            Control = lblSalary
            Row = 9
          end
          item
            Column = 4
            Control = btnSelect
            Row = 10
          end>
        RowCollection = <
          item
            Value = 9.090909090909090000
          end
          item
            Value = 9.090909090909090000
          end
          item
            Value = 9.090909090909090000
          end
          item
            Value = 9.090909090909090000
          end
          item
            Value = 9.090909090909090000
          end
          item
            Value = 9.090909090909090000
          end
          item
            Value = 9.090909090909090000
          end
          item
            Value = 9.090909090909090000
          end
          item
            Value = 9.090909090909090000
          end
          item
            Value = 9.090909090909090000
          end
          item
            Value = 9.090909090909090000
          end>
        TabOrder = 0
        VerticalAlignment = taAlignTop
        DesignSize = (
          424
          348)
        object Label11: TLabel
          Left = 44
          Top = 38
          Width = 84
          Height = 18
          Anchors = []
          Caption = 'Customer ID'
          ExplicitLeft = 56
          ExplicitTop = 41
        end
        object lblCID: TLabel
          Left = 161
          Top = 32
          Width = 168
          Height = 31
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label32: TLabel
          Left = 66
          Top = 69
          Width = 39
          Height = 18
          Anchors = []
          Caption = 'Name'
          ExplicitLeft = 72
          ExplicitTop = 72
        end
        object lblName: TLabel
          Left = 161
          Top = 63
          Width = 168
          Height = 31
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label38: TLabel
          Left = 72
          Top = 100
          Width = 28
          Height = 18
          Anchors = []
          Caption = 'NRC'
          ExplicitLeft = 75
          ExplicitTop = 103
        end
        object lblNRC: TLabel
          Left = 161
          Top = 94
          Width = 168
          Height = 31
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label44: TLabel
          Left = 71
          Top = 131
          Width = 30
          Height = 18
          Anchors = []
          Caption = 'DOB'
          ExplicitLeft = 75
          ExplicitTop = 134
        end
        object lblDOB: TLabel
          Left = 161
          Top = 125
          Width = 168
          Height = 31
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label50: TLabel
          Left = 60
          Top = 162
          Width = 52
          Height = 18
          Anchors = []
          Caption = 'Address'
          ExplicitLeft = 66
          ExplicitTop = 165
        end
        object lblAddress: TLabel
          Left = 161
          Top = 156
          Width = 252
          Height = 31
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label56: TLabel
          Left = 54
          Top = 193
          Width = 63
          Height = 18
          Anchors = []
          Caption = 'Phone No'
          ExplicitLeft = 63
          ExplicitTop = 196
        end
        object lblPhone: TLabel
          Left = 161
          Top = 187
          Width = 168
          Height = 31
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label62: TLabel
          Left = 66
          Top = 224
          Width = 39
          Height = 18
          Anchors = []
          Caption = 'Home'
          ExplicitLeft = 72
          ExplicitTop = 227
        end
        object lblHome: TLabel
          Left = 161
          Top = 218
          Width = 168
          Height = 31
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label68: TLabel
          Left = 75
          Top = 255
          Width = 22
          Height = 18
          Anchors = []
          Caption = 'Job'
          ExplicitLeft = 77
          ExplicitTop = 258
        end
        object lblJob: TLabel
          Left = 161
          Top = 249
          Width = 168
          Height = 31
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label74: TLabel
          Left = 66
          Top = 286
          Width = 39
          Height = 18
          Anchors = []
          Caption = 'Salary'
          ExplicitLeft = 71
          ExplicitTop = 289
        end
        object lblSalary: TLabel
          Left = 161
          Top = 280
          Width = 168
          Height = 31
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object btnSelect: TButton
          Left = 333
          Top = 316
          Width = 75
          Height = 25
          Anchors = []
          Caption = 'Select'
          TabOrder = 0
          OnClick = btnSelectClick
        end
      end
      object RelativePanel3: TRelativePanel
        Left = 425
        Top = 1
        Width = 316
        Height = 348
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
          end
          item
            Control = Label2
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Label3
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
        ExplicitLeft = 420
        ExplicitTop = 6
        DesignSize = (
          316
          348)
        object barAmount: TTrackBar
          Left = 40
          Top = 36
          Width = 217
          Height = 45
          Anchors = []
          LineSize = 100000
          TabOrder = 0
          OnChange = barAmountChange
        end
        object Label16: TLabel
          Left = 48
          Top = 87
          Width = 51
          Height = 18
          Anchors = []
          Caption = 'Amount'
        end
        object Label19: TLabel
          Left = 240
          Top = 87
          Width = 37
          Height = 18
          Anchors = []
          Caption = 'Kyats'
        end
        object barDuration: TTrackBar
          Left = 48
          Top = 127
          Width = 217
          Height = 45
          Anchors = []
          TabOrder = 1
          OnChange = barDurationChange
        end
        object Label23: TLabel
          Left = 48
          Top = 193
          Width = 54
          Height = 18
          Anchors = []
          Caption = 'Duration'
        end
        object Label24: TLabel
          Left = 240
          Top = 193
          Width = 41
          Height = 18
          Anchors = []
          Caption = 'Month'
        end
        object Label25: TLabel
          Left = 48
          Top = 236
          Width = 87
          Height = 18
          Anchors = []
          Caption = 'Interest Rate'
        end
        object Label26: TLabel
          Left = 48
          Top = 277
          Width = 82
          Height = 18
          Anchors = []
          Caption = 'Service Fees'
        end
        object lblRate: TLabel
          Left = 141
          Top = 236
          Width = 41
          Height = 18
          Anchors = []
          Caption = 'Month'
        end
        object lblFees: TLabel
          Left = 144
          Top = 277
          Width = 41
          Height = 18
          Anchors = []
          Caption = 'Month'
        end
        object btnCalculate: TButton
          Left = 224
          Top = 312
          Width = 75
          Height = 25
          Anchors = []
          Caption = 'Calculate'
          TabOrder = 2
          OnClick = btnCalculateClick
        end
        object editAmount: TLabel
          Left = 144
          Top = 87
          Width = 58
          Height = 18
          Anchors = []
          Caption = 'AMoount'
        end
        object editDuration: TLabel
          Left = 144
          Top = 193
          Width = 54
          Height = 18
          Anchors = []
          Caption = 'Duration'
        end
        object Label2: TLabel
          Left = 279
          Top = 236
          Width = 15
          Height = 18
          Anchors = []
          Caption = '%'
        end
        object Label3: TLabel
          Left = 280
          Top = 277
          Width = 15
          Height = 18
          Anchors = []
          Caption = '%'
        end
      end
      object RelativePanel2: TRelativePanel
        Left = 1
        Top = 349
        Width = 740
        Height = 257
        ControlCollection = <
          item
            Control = Label6
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Label13
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Label15
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Label89
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Label17
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Label18
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Label20
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Label21
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = cboxNo
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = cboxR
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = editNRC
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = editName
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = editPhone
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = editJob
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = editSalary
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = editRelation
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = editAddress
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Label22
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end>
        Align = alClient
        Alignment = taLeftJustify
        Caption = 'GUARANTOR INFORMATION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        VerticalAlignment = taAlignTop
        DesignSize = (
          740
          257)
        object Label6: TLabel
          Left = 23
          Top = 56
          Width = 33
          Height = 16
          Anchors = []
          Caption = 'Name'
        end
        object Label13: TLabel
          Left = 464
          Top = 51
          Width = 35
          Height = 16
          Anchors = []
          Caption = 'Phone'
        end
        object Label15: TLabel
          Left = 23
          Top = 152
          Width = 46
          Height = 16
          Anchors = []
          Caption = 'Address'
        end
        object Label89: TLabel
          Left = 23
          Top = 104
          Width = 24
          Height = 16
          Anchors = []
          Caption = 'NRC'
        end
        object Label17: TLabel
          Left = 464
          Top = 104
          Width = 21
          Height = 16
          Anchors = []
          Caption = 'JOB'
        end
        object Label18: TLabel
          Left = 464
          Top = 152
          Width = 36
          Height = 16
          Anchors = []
          Caption = 'Salary'
        end
        object Label20: TLabel
          Left = 464
          Top = 200
          Width = 46
          Height = 16
          Anchors = []
          Caption = 'Relation'
        end
        object Label21: TLabel
          Left = 146
          Top = 100
          Width = 5
          Height = 16
          Anchors = []
          Caption = '/'
        end
        object cboxNo: TComboBox
          Left = 91
          Top = 97
          Width = 49
          Height = 24
          Anchors = []
          TabOrder = 0
        end
        object cboxR: TComboBox
          Left = 157
          Top = 97
          Width = 84
          Height = 24
          Anchors = []
          TabOrder = 1
        end
        object editNRC: TEdit
          Left = 267
          Top = 97
          Width = 121
          Height = 24
          Anchors = []
          TabOrder = 2
        end
        object editName: TEdit
          Left = 91
          Top = 48
          Width = 121
          Height = 24
          Anchors = []
          TabOrder = 3
        end
        object editPhone: TEdit
          Left = 531
          Top = 48
          Width = 150
          Height = 24
          Anchors = []
          TabOrder = 4
        end
        object editJob: TEdit
          Left = 531
          Top = 96
          Width = 150
          Height = 24
          Anchors = []
          TabOrder = 5
        end
        object editSalary: TEdit
          Left = 531
          Top = 144
          Width = 121
          Height = 24
          Anchors = []
          TabOrder = 6
        end
        object editRelation: TEdit
          Left = 531
          Top = 192
          Width = 121
          Height = 24
          Anchors = []
          TabOrder = 7
        end
        object editAddress: TMemo
          Left = 91
          Top = 144
          Width = 272
          Height = 89
          Anchors = []
          Lines.Strings = (
            'Memo2')
          TabOrder = 8
        end
        object Label22: TLabel
          Left = 246
          Top = 100
          Width = 18
          Height = 16
          Margins.Left = 10
          Margins.Right = 10
          Anchors = []
          Caption = '(N)'
        end
      end
      object StringGrid: TStringGrid
        Left = 741
        Top = 1
        Width = 551
        Height = 605
        Align = alClient
        RowCount = 1
        FixedRows = 0
        TabOrder = 3
      end
    end
    object GridPanel1: TGridPanel
      Left = 1
      Top = 659
      Width = 1293
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
        1293
        50)
      object btnRequest: TButton
        Left = 1104
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Request'
        TabOrder = 0
        OnClick = btnRequestClick
      end
      object btnCancel: TButton
        Left = 1204
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
