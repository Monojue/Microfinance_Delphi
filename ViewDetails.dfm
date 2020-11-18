object frmDetails: TfrmDetails
  Left = 0
  Top = 0
  Caption = 'Details'
  ClientHeight = 621
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 530
    Height = 621
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
        Control = Panel
        Row = 1
      end
      item
        Column = 0
        Control = GridPanel2
        Row = 2
      end
      item
        Column = 0
        Control = GridPanel3
        Row = 3
      end
      item
        Column = 0
        Control = GridPanel4
        Row = 4
      end>
    RowCollection = <
      item
        SizeStyle = ssAbsolute
        Value = 50.000000000000000000
      end
      item
        Value = 51.020408163265310000
      end
      item
        Value = 20.408163265306120000
      end
      item
        Value = 28.571428571428570000
      end
      item
        SizeStyle = ssAbsolute
        Value = 50.000000000000000000
      end>
    ShowCaption = False
    TabOrder = 0
    object TopGrip: TGridPanel
      Left = 1
      Top = 1
      Width = 528
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
        Left = 337
        Top = 1
        Width = 50
        Height = 48
        Align = alClient
        Alignment = taRightJustify
        Caption = 'Date : '
        Layout = tlCenter
        ExplicitLeft = 348
        ExplicitWidth = 39
        ExplicitHeight = 16
      end
      object lblDate: TLabel
        Left = 387
        Top = 1
        Width = 4
        Height = 48
        Align = alLeft
        Layout = tlCenter
        ExplicitHeight = 16
      end
    end
    object Panel: TPanel
      Left = 1
      Top = 51
      Width = 528
      Height = 264
      Align = alClient
      TabOrder = 1
      object clientGrid: TGridPanel
        Left = 1
        Top = 1
        Width = 526
        Height = 262
        Align = alClient
        Alignment = taLeftJustify
        Anchors = []
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
            Value = 50.000000000000000000
          end
          item
            Value = 50.000000000000000000
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
            ColumnSpan = 2
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
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        RowCollection = <
          item
            Value = 9.090909090909088000
          end
          item
            Value = 9.090909090909088000
          end
          item
            Value = 9.090909090909088000
          end
          item
            Value = 9.090909090909088000
          end
          item
            Value = 9.090909090909088000
          end
          item
            Value = 9.090909090909088000
          end
          item
            Value = 9.090909090909088000
          end
          item
            Value = 9.090909090909088000
          end
          item
            Value = 9.090909090909088000
          end
          item
            Value = 9.090909090909088000
          end
          item
            Value = 9.090909090909088000
          end>
        TabOrder = 1
        VerticalAlignment = taAlignTop
        DesignSize = (
          526
          262)
        object Label11: TLabel
          Left = 62
          Top = 27
          Width = 48
          Height = 16
          Anchors = []
          Caption = 'Client ID'
          ExplicitLeft = 64
        end
        object lblCID: TLabel
          Left = 161
          Top = 24
          Width = 354
          Height = 23
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 4
          ExplicitHeight = 16
        end
        object Label32: TLabel
          Left = 69
          Top = 50
          Width = 33
          Height = 16
          Anchors = []
          Caption = 'Name'
          ExplicitLeft = 72
          ExplicitTop = 52
        end
        object lblName: TLabel
          Left = 161
          Top = 47
          Width = 354
          Height = 23
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 4
          ExplicitHeight = 16
        end
        object Label38: TLabel
          Left = 74
          Top = 73
          Width = 24
          Height = 16
          Anchors = []
          Caption = 'NRC'
          ExplicitLeft = 75
          ExplicitTop = 75
        end
        object lblNRC: TLabel
          Left = 161
          Top = 70
          Width = 354
          Height = 23
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 4
          ExplicitHeight = 16
        end
        object Label44: TLabel
          Left = 74
          Top = 96
          Width = 24
          Height = 16
          Anchors = []
          Caption = 'DOB'
          ExplicitLeft = 75
          ExplicitTop = 98
        end
        object lblDOB: TLabel
          Left = 161
          Top = 93
          Width = 354
          Height = 23
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 4
          ExplicitHeight = 16
        end
        object Label50: TLabel
          Left = 63
          Top = 119
          Width = 46
          Height = 16
          Anchors = []
          Caption = 'Address'
          ExplicitLeft = 66
          ExplicitTop = 121
        end
        object lblAddress: TLabel
          Left = 161
          Top = 116
          Width = 354
          Height = 23
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 4
          ExplicitHeight = 16
        end
        object Label56: TLabel
          Left = 59
          Top = 142
          Width = 54
          Height = 16
          Anchors = []
          Caption = 'Phone No'
          ExplicitLeft = 63
          ExplicitTop = 144
        end
        object lblPhone: TLabel
          Left = 161
          Top = 139
          Width = 354
          Height = 23
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 4
          ExplicitHeight = 16
        end
        object Label62: TLabel
          Left = 69
          Top = 165
          Width = 33
          Height = 16
          Anchors = []
          Caption = 'Home'
          ExplicitLeft = 72
          ExplicitTop = 167
        end
        object lblHome: TLabel
          Left = 161
          Top = 162
          Width = 354
          Height = 23
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 4
          ExplicitHeight = 16
        end
        object Label68: TLabel
          Left = 76
          Top = 188
          Width = 19
          Height = 16
          Anchors = []
          Caption = 'Job'
          ExplicitLeft = 77
          ExplicitTop = 190
        end
        object lblJob: TLabel
          Left = 161
          Top = 185
          Width = 354
          Height = 23
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 4
          ExplicitHeight = 16
        end
        object Label74: TLabel
          Left = 68
          Top = 211
          Width = 36
          Height = 16
          Anchors = []
          Caption = 'Salary'
          ExplicitLeft = 71
          ExplicitTop = 213
        end
        object lblSalary: TLabel
          Left = 161
          Top = 208
          Width = 354
          Height = 23
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 4
          ExplicitHeight = 16
        end
      end
      object groupGrid: TGridPanel
        Left = 1
        Top = 1
        Width = 526
        Height = 262
        Align = alClient
        Alignment = taLeftJustify
        Caption = 'GROUP INFROMATION'
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
            Value = 60.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 30.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 2
            Control = Label2
            Row = 2
          end
          item
            Column = 3
            Control = Label12
            Row = 2
          end
          item
            Column = 1
            Control = Label16
            Row = 3
          end
          item
            Column = 1
            Control = Label22
            Row = 4
          end
          item
            Column = 1
            Control = Label28
            Row = 5
          end
          item
            Column = 1
            Control = Label34
            Row = 6
          end
          item
            Column = 1
            Control = Label40
            Row = 7
          end
          item
            Column = 2
            Control = lblLeadName
            Row = 3
          end
          item
            Column = 3
            Control = lblLeadID
            Row = 3
          end
          item
            Column = 2
            Control = lblM1Name
            Row = 4
          end
          item
            Column = 3
            Control = lblM1ID
            Row = 4
          end
          item
            Column = 2
            Control = lblM2Name
            Row = 5
          end
          item
            Column = 3
            Control = lblM2ID
            Row = 5
          end
          item
            Column = 2
            Control = lblM3Name
            Row = 6
          end
          item
            Column = 3
            Control = lblM3ID
            Row = 6
          end
          item
            Column = 2
            Control = lblM4Name
            Row = 7
          end
          item
            Column = 4
            Control = btnAdd1
            Row = 3
          end
          item
            Column = 4
            Control = btnAdd2
            Row = 4
          end
          item
            Column = 4
            Control = btnAdd3
            Row = 5
          end
          item
            Column = 4
            Control = btnAdd4
            Row = 6
          end
          item
            Column = 3
            Control = lblM4ID
            Row = 7
          end
          item
            Column = 4
            Control = btnAdd5
            Row = 7
          end
          item
            Column = 1
            Control = Label3
            Row = 1
          end
          item
            Column = 2
            Control = lblGID
            Row = 1
          end>
        RowCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 15.000000000000000000
          end
          item
            Value = 14.893617021276600000
          end
          item
            Value = 14.184397163120570000
          end
          item
            Value = 14.184397163120570000
          end
          item
            Value = 14.184397163120570000
          end
          item
            Value = 14.184397163120570000
          end
          item
            Value = 14.184397163120570000
          end
          item
            Value = 14.184397163120570000
          end>
        TabOrder = 0
        VerticalAlignment = taAlignTop
        DesignSize = (
          526
          262)
        object Label2: TLabel
          Left = 188
          Top = 62
          Width = 27
          Height = 13
          Anchors = []
          Caption = 'Name'
          ExplicitLeft = 195
          ExplicitTop = 47
        end
        object Label12: TLabel
          Left = 336
          Top = 62
          Width = 41
          Height = 13
          Anchors = []
          Caption = 'Client ID'
          ExplicitLeft = 358
          ExplicitTop = 47
        end
        object Label16: TLabel
          Left = 61
          Top = 96
          Width = 33
          Height = 13
          Anchors = []
          Caption = 'Leader'
          ExplicitLeft = 64
          ExplicitTop = 82
        end
        object Label22: TLabel
          Left = 54
          Top = 130
          Width = 47
          Height = 13
          Anchors = []
          Caption = 'Member 1'
          ExplicitLeft = 64
          ExplicitTop = 117
        end
        object Label28: TLabel
          Left = 54
          Top = 164
          Width = 47
          Height = 13
          Anchors = []
          Caption = 'Member 2'
          ExplicitLeft = 64
          ExplicitTop = 152
        end
        object Label34: TLabel
          Left = 54
          Top = 198
          Width = 47
          Height = 13
          Anchors = []
          Caption = 'Member 3'
          ExplicitLeft = 64
          ExplicitTop = 187
        end
        object Label40: TLabel
          Left = 54
          Top = 235
          Width = 47
          Height = 13
          Anchors = []
          Caption = 'Member 4'
          ExplicitLeft = 64
          ExplicitTop = 222
        end
        object lblLeadName: TLabel
          Left = 124
          Top = 86
          Width = 155
          Height = 34
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitWidth = 3
          ExplicitHeight = 13
        end
        object lblLeadID: TLabel
          Left = 279
          Top = 86
          Width = 155
          Height = 34
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitWidth = 3
          ExplicitHeight = 13
        end
        object lblM1Name: TLabel
          Left = 124
          Top = 120
          Width = 155
          Height = 34
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitWidth = 3
          ExplicitHeight = 13
        end
        object lblM1ID: TLabel
          Left = 279
          Top = 120
          Width = 155
          Height = 34
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitWidth = 3
          ExplicitHeight = 13
        end
        object lblM2Name: TLabel
          Left = 124
          Top = 154
          Width = 155
          Height = 34
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitWidth = 3
          ExplicitHeight = 13
        end
        object lblM2ID: TLabel
          Left = 279
          Top = 154
          Width = 155
          Height = 34
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitWidth = 3
          ExplicitHeight = 13
        end
        object lblM3Name: TLabel
          Left = 124
          Top = 188
          Width = 155
          Height = 34
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitWidth = 3
          ExplicitHeight = 13
        end
        object lblM3ID: TLabel
          Left = 279
          Top = 188
          Width = 155
          Height = 34
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitWidth = 3
          ExplicitHeight = 13
        end
        object lblM4Name: TLabel
          Left = 124
          Top = 222
          Width = 155
          Height = 39
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitWidth = 3
          ExplicitHeight = 13
        end
        object btnAdd1: TButton
          Left = 448
          Top = 90
          Width = 31
          Height = 25
          Anchors = []
          Caption = 'View'
          TabOrder = 0
        end
        object btnAdd2: TButton
          Left = 448
          Top = 124
          Width = 31
          Height = 25
          Anchors = []
          Caption = 'View'
          TabOrder = 1
        end
        object btnAdd3: TButton
          Left = 448
          Top = 158
          Width = 31
          Height = 25
          Anchors = []
          Caption = 'View'
          TabOrder = 2
        end
        object btnAdd4: TButton
          Left = 448
          Top = 192
          Width = 31
          Height = 25
          Anchors = []
          Caption = 'View'
          TabOrder = 3
        end
        object lblM4ID: TLabel
          Left = 279
          Top = 222
          Width = 155
          Height = 39
          Align = alClient
          Alignment = taCenter
          Layout = tlCenter
          ExplicitWidth = 3
          ExplicitHeight = 13
        end
        object btnAdd5: TButton
          Left = 448
          Top = 229
          Width = 31
          Height = 25
          Anchors = []
          Caption = 'View'
          TabOrder = 4
        end
        object Label3: TLabel
          Left = 52
          Top = 27
          Width = 50
          Height = 13
          Anchors = []
          Caption = 'Group ID :'
          ExplicitLeft = 188
        end
        object lblGID: TLabel
          Left = 124
          Top = 16
          Width = 155
          Height = 36
          Align = alClient
          Caption = 'ID'
          Layout = tlCenter
          ExplicitWidth = 11
          ExplicitHeight = 13
        end
      end
    end
    object GridPanel2: TGridPanel
      Left = 1
      Top = 315
      Width = 528
      Height = 105
      Align = alClient
      Alignment = taLeftJustify
      Caption = 'LOAN INFORMATION'
      ColumnCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 10.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 80.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 120.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 40.000000000000000000
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
          Value = 120.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 40.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 10.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 1
          Control = Label17
          Row = 1
        end
        item
          Column = 2
          Control = lblAmount
          Row = 1
        end
        item
          Column = 3
          Control = Label19
          Row = 1
        end
        item
          Column = 5
          Control = Label21
          Row = 1
        end
        item
          Column = 1
          Control = Label27
          Row = 2
        end
        item
          Column = 2
          Control = lblRate
          Row = 2
        end
        item
          Column = 3
          Control = Label30
          Row = 2
        end
        item
          Column = 6
          Control = lblDuration
          Row = 1
        end
        item
          Column = 7
          Control = Label36
          Row = 1
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      RowCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 15.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 10.000000000000000000
        end>
      TabOrder = 2
      VerticalAlignment = taAlignTop
      DesignSize = (
        528
        105)
      object Label17: TLabel
        Left = 29
        Top = 27
        Width = 44
        Height = 16
        Anchors = []
        Caption = 'Amount'
        ExplicitLeft = 32
        ExplicitTop = 22
      end
      object lblAmount: TLabel
        Left = 91
        Top = 16
        Width = 120
        Height = 39
        Align = alClient
        Alignment = taCenter
        Caption = 'Label3'
        Layout = tlCenter
        ExplicitWidth = 37
        ExplicitHeight = 16
      end
      object Label19: TLabel
        Left = 216
        Top = 27
        Width = 30
        Height = 16
        Anchors = []
        Caption = 'Kyats'
        ExplicitLeft = 217
        ExplicitTop = 22
      end
      object Label21: TLabel
        Left = 293
        Top = 27
        Width = 48
        Height = 16
        Anchors = []
        Caption = 'Duration'
        ExplicitLeft = 296
        ExplicitTop = 22
      end
      object Label27: TLabel
        Left = 14
        Top = 66
        Width = 74
        Height = 16
        Anchors = []
        Caption = 'Interest Rate'
        ExplicitLeft = 18
        ExplicitTop = 48
      end
      object lblRate: TLabel
        Left = 91
        Top = 55
        Width = 120
        Height = 39
        Align = alClient
        Alignment = taCenter
        Caption = 'Label3'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        ExplicitTop = 42
        ExplicitWidth = 31
        ExplicitHeight = 13
      end
      object Label30: TLabel
        Left = 225
        Top = 68
        Width = 11
        Height = 13
        Anchors = []
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 215
        ExplicitTop = 48
      end
      object lblDuration: TLabel
        Left = 357
        Top = 16
        Width = 120
        Height = 39
        Align = alClient
        Alignment = taCenter
        Caption = 'Label3'
        Layout = tlCenter
        ExplicitWidth = 37
        ExplicitHeight = 16
      end
      object Label36: TLabel
        Left = 479
        Top = 27
        Width = 35
        Height = 16
        Anchors = []
        Caption = 'Month'
        ExplicitLeft = 482
        ExplicitTop = 22
      end
    end
    object GridPanel3: TGridPanel
      Left = 1
      Top = 420
      Width = 528
      Height = 148
      Align = alClient
      Alignment = taLeftJustify
      Caption = 'Remarks:'
      ColumnCollection = <
        item
          Value = 100.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = memoRemark
          Row = 1
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      RowCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 15.000000000000000000
        end
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 3
      VerticalAlignment = taAlignTop
      object memoRemark: TMemo
        Left = 1
        Top = 16
        Width = 526
        Height = 131
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object GridPanel4: TGridPanel
      Left = 1
      Top = 568
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
        end
        item
          SizeStyle = ssAbsolute
          Value = 100.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 1
          Control = btnAccept
          Row = 0
        end
        item
          Column = 2
          Control = btnDecline
          Row = 0
        end
        item
          Column = 3
          Control = btnCancel
          Row = 0
        end>
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      ShowCaption = False
      TabOrder = 4
      DesignSize = (
        528
        50)
      object btnAccept: TButton
        Left = 239
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Accept'
        TabOrder = 0
        OnClick = btnAcceptClick
      end
      object btnDecline: TButton
        Left = 339
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Decline'
        TabOrder = 1
        OnClick = btnDeclineClick
      end
      object btnCancel: TButton
        Left = 439
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Cancel'
        TabOrder = 2
        OnClick = btnCancelClick
      end
    end
  end
end
