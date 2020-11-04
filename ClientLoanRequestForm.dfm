object ClientLoanRequest: TClientLoanRequest
  Left = 0
  Top = 0
  Caption = 'Client Loan Request Form'
  ClientHeight = 710
  ClientWidth = 1295
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
    ExplicitLeft = 536
    ExplicitTop = 216
    ExplicitWidth = 185
    ExplicitHeight = 41
    object TopGrip: TGridPanel
      Left = 1
      Top = 1
      Width = 1293
      Height = 50
      Align = alClient
      ColumnCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 70.000000000000000000
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
          Control = Label2
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
          Control = Label5
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
      ExplicitWidth = 632
      object Label2: TLabel
        Left = 71
        Top = 1
        Width = 37
        Height = 16
        Margins.Left = 50
        Align = alLeft
        Caption = 'Label1'
        Layout = tlCenter
      end
      object Label1: TLabel
        Left = 10
        Top = 1
        Width = 61
        Height = 16
        Margins.Right = 10
        Align = alClient
        Alignment = taRightJustify
        Caption = 'Client ID : '
        Layout = tlCenter
      end
      object Label4: TLabel
        Left = 1113
        Top = 1
        Width = 39
        Height = 16
        Align = alClient
        Alignment = taRightJustify
        Caption = 'Date : '
        Layout = tlCenter
      end
      object Label5: TLabel
        Left = 1152
        Top = 1
        Width = 37
        Height = 16
        Align = alLeft
        Caption = 'Label1'
        Layout = tlCenter
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
          Control = RelativePanel1
          Row = 0
        end
        item
          Column = 0
          ColumnSpan = 2
          Control = RelativePanel2
          Row = 1
        end
        item
          Column = 1
          Control = RelativePanel3
          Row = 0
        end
        item
          Column = 2
          Control = DBGrid1
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
      ExplicitTop = 56
      ExplicitWidth = 1307
      ExplicitHeight = 612
      object RelativePanel1: TRelativePanel
        Left = 1
        Top = 1
        Width = 424
        Height = 348
        ControlCollection = <
          item
            Control = Label3
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = lable
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Label7
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Label8
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Label12
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Label11
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = JOB
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Label14
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Edit6
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Edit5
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = CheckBox1
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Edit3
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = ComboBox3
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = ComboBox1
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Edit1
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Label9
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = ComboBox2
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = ComboBox4
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Label10
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Edit2
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = ComboBox5
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Button1
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Memo1
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end>
        Align = alClient
        Alignment = taLeftJustify
        Caption = 'CLIENT INFORMATION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        VerticalAlignment = taAlignTop
        ExplicitTop = 5
        ExplicitWidth = 435
        ExplicitHeight = 337
        DesignSize = (
          424
          348)
        object Label3: TLabel
          Left = 23
          Top = 34
          Width = 33
          Height = 16
          Anchors = []
          Caption = 'Name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lable: TLabel
          Left = 23
          Top = 76
          Width = 24
          Height = 16
          Anchors = []
          Caption = 'NRC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 23
          Top = 116
          Width = 73
          Height = 16
          Anchors = []
          Caption = 'Date Of Birth'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 23
          Top = 156
          Width = 46
          Height = 16
          Anchors = []
          Caption = 'Address'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 23
          Top = 236
          Width = 33
          Height = 16
          Anchors = []
          Caption = 'Home'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 23
          Top = 196
          Width = 39
          Height = 16
          Anchors = []
          Caption = 'Phone '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object JOB: TLabel
          Left = 23
          Top = 278
          Width = 21
          Height = 16
          Anchors = []
          Caption = 'JOB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 23
          Top = 316
          Width = 36
          Height = 16
          Anchors = []
          Caption = 'Salary'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Edit6: TEdit
          Left = 112
          Top = 277
          Width = 113
          Height = 24
          Anchors = []
          TabOrder = 0
          Text = 'Edit2'
        end
        object Edit5: TEdit
          Left = 112
          Top = 315
          Width = 113
          Height = 24
          Anchors = []
          TabOrder = 1
          Text = 'Edit2'
        end
        object CheckBox1: TCheckBox
          Left = 112
          Top = 235
          Width = 97
          Height = 17
          Anchors = []
          Caption = 'CheckBox1'
          TabOrder = 2
        end
        object Edit3: TEdit
          Left = 112
          Top = 193
          Width = 113
          Height = 24
          Anchors = []
          TabOrder = 3
          Text = 'Edit2'
        end
        object ComboBox3: TComboBox
          Left = 113
          Top = 113
          Width = 51
          Height = 24
          Anchors = []
          TabOrder = 4
          Text = 'ComboBox1'
        end
        object ComboBox1: TComboBox
          Left = 115
          Top = 73
          Width = 49
          Height = 24
          Anchors = []
          TabOrder = 5
          Text = 'ComboBox1'
        end
        object Edit1: TEdit
          Left = 112
          Top = 33
          Width = 193
          Height = 24
          Anchors = []
          TabOrder = 6
          Text = 'Edit1'
        end
        object Label9: TLabel
          Left = 170
          Top = 76
          Width = 5
          Height = 16
          Anchors = []
          Caption = '/'
        end
        object ComboBox2: TComboBox
          Left = 181
          Top = 73
          Width = 68
          Height = 24
          Anchors = []
          TabOrder = 7
          Text = 'ComboBox1'
        end
        object ComboBox4: TComboBox
          Left = 181
          Top = 113
          Width = 85
          Height = 24
          Anchors = []
          TabOrder = 8
          Text = 'ComboBox1'
        end
        object Label10: TLabel
          Left = 251
          Top = 76
          Width = 18
          Height = 16
          Margins.Left = 10
          Margins.Right = 10
          Anchors = []
          Caption = '(N)'
        end
        object Edit2: TEdit
          Left = 272
          Top = 73
          Width = 121
          Height = 24
          Anchors = []
          TabOrder = 9
          Text = 'Edit2'
        end
        object ComboBox5: TComboBox
          Left = 272
          Top = 113
          Width = 83
          Height = 24
          Anchors = []
          TabOrder = 10
          Text = 'ComboBox1'
        end
        object Button1: TButton
          Left = 312
          Top = 312
          Width = 75
          Height = 25
          Anchors = []
          Caption = 'Button1'
          TabOrder = 11
        end
        object Memo1: TMemo
          Left = 112
          Top = 143
          Width = 222
          Height = 47
          Anchors = []
          Lines.Strings = (
            'Memo1')
          TabOrder = 12
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
            Control = ComboBox6
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = ComboBox7
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Edit4
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Edit7
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Edit9
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Edit10
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Edit11
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Edit12
            AlignBottomWithPanel = False
            AlignHorizontalCenterWithPanel = False
            AlignLeftWithPanel = False
            AlignRightWithPanel = False
            AlignTopWithPanel = False
            AlignVerticalCenterWithPanel = False
          end
          item
            Control = Memo2
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
        TabOrder = 1
        VerticalAlignment = taAlignTop
        ExplicitTop = 344
        ExplicitWidth = 870
        ExplicitHeight = 249
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
          Top = 208
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
        object ComboBox6: TComboBox
          Left = 91
          Top = 97
          Width = 49
          Height = 24
          Anchors = []
          TabOrder = 0
          Text = 'ComboBox1'
        end
        object ComboBox7: TComboBox
          Left = 157
          Top = 97
          Width = 68
          Height = 24
          Anchors = []
          TabOrder = 1
          Text = 'ComboBox1'
        end
        object Edit4: TEdit
          Left = 251
          Top = 97
          Width = 121
          Height = 24
          Anchors = []
          TabOrder = 2
          Text = 'Edit2'
        end
        object Edit7: TEdit
          Left = 91
          Top = 48
          Width = 121
          Height = 24
          Anchors = []
          TabOrder = 3
          Text = 'Edit7'
        end
        object Edit9: TEdit
          Left = 531
          Top = 48
          Width = 150
          Height = 24
          Anchors = []
          TabOrder = 4
          Text = 'Edit7'
        end
        object Edit10: TEdit
          Left = 531
          Top = 96
          Width = 150
          Height = 24
          Anchors = []
          TabOrder = 5
          Text = 'Edit7'
        end
        object Edit11: TEdit
          Left = 531
          Top = 144
          Width = 121
          Height = 24
          Anchors = []
          TabOrder = 6
          Text = 'Edit7'
        end
        object Edit12: TEdit
          Left = 531
          Top = 200
          Width = 121
          Height = 24
          Anchors = []
          TabOrder = 7
          Text = 'Edit7'
        end
        object Memo2: TMemo
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
          Left = 227
          Top = 100
          Width = 18
          Height = 16
          Margins.Left = 10
          Margins.Right = 10
          Anchors = []
          Caption = '(N)'
        end
      end
      object RelativePanel3: TRelativePanel
        Left = 425
        Top = 1
        Width = 316
        Height = 348
        ControlCollection = <
          item
            Control = TrackBar1
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
            Control = Edit8
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
            Control = TrackBar2
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
            Control = Edit13
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
            Control = Button2
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
        TabOrder = 2
        VerticalAlignment = taAlignTop
        ExplicitLeft = 442
        ExplicitTop = 6
        ExplicitWidth = 435
        ExplicitHeight = 351
        DesignSize = (
          316
          348)
        object TrackBar1: TTrackBar
          Left = 40
          Top = 33
          Width = 217
          Height = 45
          Anchors = []
          TabOrder = 0
        end
        object Label16: TLabel
          Left = 48
          Top = 87
          Width = 37
          Height = 13
          Anchors = []
          Caption = 'Amount'
        end
        object Edit8: TEdit
          Left = 104
          Top = 84
          Width = 121
          Height = 21
          Anchors = []
          TabOrder = 1
          Text = 'Edit8'
        end
        object Label19: TLabel
          Left = 240
          Top = 87
          Width = 27
          Height = 13
          Anchors = []
          Caption = 'Kyats'
        end
        object TrackBar2: TTrackBar
          Left = 48
          Top = 127
          Width = 217
          Height = 45
          Anchors = []
          TabOrder = 2
        end
        object Label23: TLabel
          Left = 48
          Top = 193
          Width = 41
          Height = 13
          Anchors = []
          Caption = 'Duration'
        end
        object Edit13: TEdit
          Left = 104
          Top = 190
          Width = 121
          Height = 21
          Anchors = []
          TabOrder = 3
          Text = 'Edit8'
        end
        object Label24: TLabel
          Left = 240
          Top = 193
          Width = 30
          Height = 13
          Anchors = []
          Caption = 'Month'
        end
        object Label25: TLabel
          Left = 48
          Top = 236
          Width = 65
          Height = 13
          Anchors = []
          Caption = 'Interest Rate'
        end
        object Label26: TLabel
          Left = 48
          Top = 277
          Width = 61
          Height = 13
          Anchors = []
          Caption = 'Service Fees'
        end
        object Label27: TLabel
          Left = 160
          Top = 236
          Width = 30
          Height = 13
          Anchors = []
          Caption = 'Month'
        end
        object Label28: TLabel
          Left = 160
          Top = 277
          Width = 30
          Height = 13
          Anchors = []
          Caption = 'Month'
        end
        object Button2: TButton
          Left = 224
          Top = 312
          Width = 75
          Height = 25
          Anchors = []
          Caption = 'Button1'
          TabOrder = 4
        end
      end
      object DBGrid1: TDBGrid
        Left = 741
        Top = 1
        Width = 551
        Height = 605
        Align = alClient
        TabOrder = 3
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
          Control = Button4
          Row = 0
        end
        item
          Column = 2
          Control = Button5
          Row = 0
        end>
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      ShowCaption = False
      TabOrder = 2
      ExplicitTop = 668
      ExplicitWidth = 1307
      DesignSize = (
        1293
        50)
      object Button4: TButton
        Left = 1104
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Request'
        TabOrder = 0
        ExplicitLeft = 1118
        ExplicitTop = 6
      end
      object Button5: TButton
        Left = 1204
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Cancel'
        TabOrder = 1
        ExplicitLeft = 1218
        ExplicitTop = 6
      end
    end
  end
end
