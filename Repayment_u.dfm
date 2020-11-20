object frmRepayment: TfrmRepayment
  Left = 0
  Top = 0
  Caption = 'Repayment'
  ClientHeight = 710
  ClientWidth = 949
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
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
        Left = 756
        Top = 1
        Width = 50
        Height = 48
        Align = alClient
        Alignment = taRightJustify
        Caption = 'Date : '
        Layout = tlCenter
        ExplicitLeft = 767
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
          Column = 0
          Control = Panel
          Row = 0
        end
        item
          Column = 0
          Control = GridPanel2
          Row = 1
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
      object Panel: TPanel
        Left = 1
        Top = 1
        Width = 472
        Height = 348
        Align = alClient
        TabOrder = 0
        object clientGrid: TGridPanel
          Left = 1
          Top = 1
          Width = 470
          Height = 346
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
            470
            346)
          object Label11: TLabel
            Left = 62
            Top = 39
            Width = 48
            Height = 16
            Anchors = []
            Caption = 'Client ID'
            ExplicitLeft = 64
            ExplicitTop = 27
          end
          object lblCID: TLabel
            Left = 161
            Top = 32
            Width = 298
            Height = 31
            Align = alClient
            Layout = tlCenter
            ExplicitWidth = 4
            ExplicitHeight = 16
          end
          object Label32: TLabel
            Left = 69
            Top = 70
            Width = 33
            Height = 16
            Anchors = []
            Caption = 'Name'
            ExplicitLeft = 72
            ExplicitTop = 52
          end
          object lblName: TLabel
            Left = 161
            Top = 63
            Width = 298
            Height = 31
            Align = alClient
            Layout = tlCenter
            ExplicitWidth = 4
            ExplicitHeight = 16
          end
          object Label38: TLabel
            Left = 74
            Top = 101
            Width = 24
            Height = 16
            Anchors = []
            Caption = 'NRC'
            ExplicitLeft = 75
            ExplicitTop = 75
          end
          object lblNRC: TLabel
            Left = 161
            Top = 94
            Width = 298
            Height = 31
            Align = alClient
            Layout = tlCenter
            ExplicitWidth = 4
            ExplicitHeight = 16
          end
          object Label44: TLabel
            Left = 74
            Top = 132
            Width = 24
            Height = 16
            Anchors = []
            Caption = 'DOB'
            ExplicitLeft = 75
            ExplicitTop = 98
          end
          object lblDOB: TLabel
            Left = 161
            Top = 125
            Width = 298
            Height = 31
            Align = alClient
            Layout = tlCenter
            ExplicitWidth = 4
            ExplicitHeight = 16
          end
          object Label50: TLabel
            Left = 63
            Top = 163
            Width = 46
            Height = 16
            Anchors = []
            Caption = 'Address'
            ExplicitLeft = 66
            ExplicitTop = 121
          end
          object lblAddress: TLabel
            Left = 161
            Top = 156
            Width = 298
            Height = 31
            Align = alClient
            Layout = tlCenter
            ExplicitWidth = 4
            ExplicitHeight = 16
          end
          object Label56: TLabel
            Left = 59
            Top = 194
            Width = 54
            Height = 16
            Anchors = []
            Caption = 'Phone No'
            ExplicitLeft = 63
            ExplicitTop = 144
          end
          object lblPhone: TLabel
            Left = 161
            Top = 187
            Width = 298
            Height = 31
            Align = alClient
            Layout = tlCenter
            ExplicitWidth = 4
            ExplicitHeight = 16
          end
          object Label62: TLabel
            Left = 69
            Top = 225
            Width = 33
            Height = 16
            Anchors = []
            Caption = 'Home'
            ExplicitLeft = 72
            ExplicitTop = 167
          end
          object lblHome: TLabel
            Left = 161
            Top = 218
            Width = 298
            Height = 31
            Align = alClient
            Layout = tlCenter
            ExplicitWidth = 4
            ExplicitHeight = 16
          end
          object Label68: TLabel
            Left = 76
            Top = 256
            Width = 19
            Height = 16
            Anchors = []
            Caption = 'Job'
            ExplicitLeft = 77
            ExplicitTop = 190
          end
          object lblJob: TLabel
            Left = 161
            Top = 249
            Width = 298
            Height = 31
            Align = alClient
            Layout = tlCenter
            ExplicitWidth = 4
            ExplicitHeight = 16
          end
          object Label74: TLabel
            Left = 68
            Top = 287
            Width = 36
            Height = 16
            Anchors = []
            Caption = 'Salary'
            ExplicitLeft = 71
            ExplicitTop = 213
          end
          object lblSalary: TLabel
            Left = 161
            Top = 280
            Width = 298
            Height = 31
            Align = alClient
            Layout = tlCenter
            ExplicitWidth = 4
            ExplicitHeight = 16
          end
        end
        object groupGrid: TGridPanel
          Left = 1
          Top = 1
          Width = 470
          Height = 346
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
              Control = Label3
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
              Control = Label5
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
            end
            item
              SizeStyle = ssAbsolute
              Value = 10.000000000000000000
            end>
          TabOrder = 0
          VerticalAlignment = taAlignTop
          DesignSize = (
            470
            346)
          object Label2: TLabel
            Left = 164
            Top = 79
            Width = 27
            Height = 13
            Anchors = []
            Caption = 'Name'
            ExplicitLeft = 195
            ExplicitTop = 47
          end
          object Label12: TLabel
            Left = 290
            Top = 79
            Width = 41
            Height = 13
            Anchors = []
            Caption = 'Client ID'
            ExplicitLeft = 358
            ExplicitTop = 47
          end
          object Label3: TLabel
            Left = 54
            Top = 124
            Width = 33
            Height = 13
            Anchors = []
            Caption = 'Leader'
            ExplicitLeft = 64
            ExplicitTop = 82
          end
          object Label22: TLabel
            Left = 47
            Top = 169
            Width = 47
            Height = 13
            Anchors = []
            Caption = 'Member 1'
            ExplicitLeft = 64
            ExplicitTop = 117
          end
          object Label28: TLabel
            Left = 47
            Top = 214
            Width = 47
            Height = 13
            Anchors = []
            Caption = 'Member 2'
            ExplicitLeft = 64
            ExplicitTop = 152
          end
          object Label34: TLabel
            Left = 47
            Top = 259
            Width = 47
            Height = 13
            Anchors = []
            Caption = 'Member 3'
            ExplicitLeft = 64
            ExplicitTop = 187
          end
          object Label40: TLabel
            Left = 47
            Top = 304
            Width = 47
            Height = 13
            Anchors = []
            Caption = 'Member 4'
            ExplicitLeft = 64
            ExplicitTop = 222
          end
          object lblLeadName: TLabel
            Left = 111
            Top = 108
            Width = 133
            Height = 45
            Align = alClient
            Alignment = taCenter
            Layout = tlCenter
            ExplicitWidth = 3
            ExplicitHeight = 13
          end
          object lblLeadID: TLabel
            Left = 244
            Top = 108
            Width = 133
            Height = 45
            Align = alClient
            Alignment = taCenter
            Layout = tlCenter
            ExplicitWidth = 3
            ExplicitHeight = 13
          end
          object lblM1Name: TLabel
            Left = 111
            Top = 153
            Width = 133
            Height = 45
            Align = alClient
            Alignment = taCenter
            Layout = tlCenter
            ExplicitWidth = 3
            ExplicitHeight = 13
          end
          object lblM1ID: TLabel
            Left = 244
            Top = 153
            Width = 133
            Height = 45
            Align = alClient
            Alignment = taCenter
            Layout = tlCenter
            ExplicitWidth = 3
            ExplicitHeight = 13
          end
          object lblM2Name: TLabel
            Left = 111
            Top = 198
            Width = 133
            Height = 45
            Align = alClient
            Alignment = taCenter
            Layout = tlCenter
            ExplicitWidth = 3
            ExplicitHeight = 13
          end
          object lblM2ID: TLabel
            Left = 244
            Top = 198
            Width = 133
            Height = 45
            Align = alClient
            Alignment = taCenter
            Layout = tlCenter
            ExplicitWidth = 3
            ExplicitHeight = 13
          end
          object lblM3Name: TLabel
            Left = 111
            Top = 243
            Width = 133
            Height = 45
            Align = alClient
            Alignment = taCenter
            Layout = tlCenter
            ExplicitWidth = 3
            ExplicitHeight = 13
          end
          object lblM3ID: TLabel
            Left = 244
            Top = 243
            Width = 133
            Height = 45
            Align = alClient
            Alignment = taCenter
            Layout = tlCenter
            ExplicitWidth = 3
            ExplicitHeight = 13
          end
          object lblM4Name: TLabel
            Left = 111
            Top = 288
            Width = 133
            Height = 45
            Align = alClient
            Alignment = taCenter
            Layout = tlCenter
            ExplicitWidth = 3
            ExplicitHeight = 13
          end
          object btnAdd1: TButton
            Left = 391
            Top = 118
            Width = 31
            Height = 25
            Anchors = []
            Caption = 'View'
            TabOrder = 0
            OnClick = btnAdd1Click
          end
          object btnAdd2: TButton
            Left = 391
            Top = 163
            Width = 31
            Height = 25
            Anchors = []
            Caption = 'View'
            TabOrder = 1
            OnClick = btnAdd2Click
          end
          object btnAdd3: TButton
            Left = 391
            Top = 208
            Width = 31
            Height = 25
            Anchors = []
            Caption = 'View'
            TabOrder = 2
            OnClick = btnAdd3Click
          end
          object btnAdd4: TButton
            Left = 391
            Top = 253
            Width = 31
            Height = 25
            Anchors = []
            Caption = 'View'
            TabOrder = 3
            OnClick = btnAdd4Click
          end
          object lblM4ID: TLabel
            Left = 244
            Top = 288
            Width = 133
            Height = 45
            Align = alClient
            Alignment = taCenter
            Layout = tlCenter
            ExplicitWidth = 3
            ExplicitHeight = 13
          end
          object btnAdd5: TButton
            Left = 391
            Top = 298
            Width = 31
            Height = 25
            Anchors = []
            Caption = 'View'
            TabOrder = 4
            OnClick = btnAdd5Click
          end
          object Label5: TLabel
            Left = 46
            Top = 33
            Width = 50
            Height = 13
            Anchors = []
            Caption = 'Group ID :'
            ExplicitLeft = 188
            ExplicitTop = 27
          end
          object lblGID: TLabel
            Left = 111
            Top = 16
            Width = 133
            Height = 47
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
        Top = 349
        Width = 472
        Height = 257
        Align = alClient
        Alignment = taLeftJustify
        Caption = 'Payment Details'
        ColumnCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 10.000000000000000000
          end
          item
            Value = 33.729087965461410000
          end
          item
            Value = 66.270912034538600000
          end
          item
            SizeStyle = ssAbsolute
            Value = 10.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 1
            Control = Label13
            Row = 1
          end
          item
            Column = 2
            Control = lblDueDate
            Row = 1
          end
          item
            Column = 1
            Control = Label17
            Row = 2
          end
          item
            Column = 2
            Control = lblPO
            Row = 2
          end
          item
            Column = 1
            Control = Label21
            Row = 3
          end
          item
            Column = 2
            Control = lblP
            Row = 3
          end
          item
            Column = 1
            Control = Label26
            Row = 4
          end
          item
            Column = 2
            Control = lblInterest
            Row = 4
          end
          item
            Column = 1
            Control = Label31
            Row = 5
          end
          item
            Column = 2
            Control = lblInstallment
            Row = 5
          end>
        RowCollection = <
          item
            Value = 14.285714285714280000
          end
          item
            Value = 14.285714285714280000
          end
          item
            Value = 14.285714285714280000
          end
          item
            Value = 14.285714285714280000
          end
          item
            Value = 14.285714285714280000
          end
          item
            Value = 14.285714285714280000
          end
          item
            Value = 14.285714285714280000
          end>
        TabOrder = 1
        VerticalAlignment = taAlignTop
        DesignSize = (
          472
          257)
        object Label13: TLabel
          Left = 64
          Top = 48
          Width = 45
          Height = 13
          Anchors = []
          Caption = 'Due Date'
          ExplicitLeft = 71
        end
        object lblDueDate: TLabel
          Left = 162
          Top = 37
          Width = 298
          Height = 36
          Align = alClient
          Caption = 'Label6'
          Layout = tlCenter
          ExplicitWidth = 31
          ExplicitHeight = 13
        end
        object Label17: TLabel
          Left = 38
          Top = 84
          Width = 97
          Height = 13
          Anchors = []
          Caption = 'Principal Oustanding'
          ExplicitLeft = 71
        end
        object lblPO: TLabel
          Left = 162
          Top = 73
          Width = 298
          Height = 36
          Align = alClient
          Caption = 'Label6'
          Layout = tlCenter
          ExplicitWidth = 31
          ExplicitHeight = 13
        end
        object Label21: TLabel
          Left = 67
          Top = 120
          Width = 39
          Height = 13
          Anchors = []
          Caption = 'Principal'
          ExplicitLeft = 71
        end
        object lblP: TLabel
          Left = 162
          Top = 109
          Width = 298
          Height = 36
          Align = alClient
          Caption = 'Label6'
          Layout = tlCenter
          ExplicitWidth = 31
          ExplicitHeight = 13
        end
        object Label26: TLabel
          Left = 67
          Top = 156
          Width = 39
          Height = 13
          Anchors = []
          Caption = 'Interest'
          ExplicitLeft = 71
        end
        object lblInterest: TLabel
          Left = 162
          Top = 145
          Width = 298
          Height = 36
          Align = alClient
          Caption = 'Label6'
          Layout = tlCenter
          ExplicitWidth = 31
          ExplicitHeight = 13
        end
        object Label31: TLabel
          Left = 60
          Top = 192
          Width = 53
          Height = 13
          Anchors = []
          Caption = 'Installment'
          ExplicitLeft = 71
        end
        object lblInstallment: TLabel
          Left = 162
          Top = 181
          Width = 298
          Height = 36
          Align = alClient
          Caption = 'Label6'
          Layout = tlCenter
          ExplicitWidth = 31
          ExplicitHeight = 13
        end
      end
      object StringGrid: TStringGrid
        Left = 473
        Top = 1
        Width = 473
        Height = 605
        Align = alClient
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
          Control = btnPay
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
      object btnPay: TButton
        Left = 758
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Pay Now'
        TabOrder = 0
        OnClick = btnPayClick
      end
      object btnCancel: TButton
        Left = 858
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Cancel'
        TabOrder = 1
      end
    end
  end
end
