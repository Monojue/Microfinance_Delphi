object frmCleintEntry: TfrmCleintEntry
  Left = 0
  Top = 0
  Caption = 'ClientEntry'
  ClientHeight = 460
  ClientWidth = 501
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 18
  object MainGrip: TGridPanel
    Left = 0
    Top = 0
    Width = 501
    Height = 460
    Align = alClient
    ColumnCollection = <
      item
        Value = 100.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = BtmGrip
        Row = 2
      end
      item
        Column = 0
        Control = TopGrip
        Row = 0
      end
      item
        Column = 0
        Control = RelativePanel1
        Row = 1
      end>
    RowCollection = <
      item
        SizeStyle = ssAbsolute
        Value = 40.000000000000000000
      end
      item
        Value = 100.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 40.000000000000000000
      end
      item
        SizeStyle = ssAuto
      end>
    TabOrder = 0
    object BtmGrip: TGridPanel
      Left = 1
      Top = 419
      Width = 499
      Height = 40
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
          Control = btnClose
          Row = 0
        end>
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 0
      DesignSize = (
        499
        40)
      object btnSave: TButton
        Left = 310
        Top = 7
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Save'
        TabOrder = 0
        OnClick = btnSaveClick
      end
      object btnClose: TButton
        Left = 410
        Top = 7
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Cancel'
        TabOrder = 1
        OnClick = btnCloseClick
      end
    end
    object TopGrip: TGridPanel
      Left = 1
      Top = 1
      Width = 499
      Height = 40
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
      Font.Height = -15
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
      TabOrder = 1
      object lblID: TLabel
        Left = 71
        Top = 1
        Width = 5
        Height = 38
        Margins.Left = 50
        Align = alLeft
        Layout = tlCenter
        ExplicitHeight = 18
      end
      object Label1: TLabel
        Left = 1
        Top = 1
        Width = 70
        Height = 38
        Margins.Right = 10
        Align = alClient
        Alignment = taRightJustify
        Caption = 'Client ID : '
        Layout = tlCenter
        ExplicitHeight = 18
      end
      object Label4: TLabel
        Left = 308
        Top = 1
        Width = 50
        Height = 38
        Align = alClient
        Alignment = taRightJustify
        Caption = 'Date : '
        Layout = tlCenter
        ExplicitLeft = 312
        ExplicitWidth = 46
        ExplicitHeight = 18
      end
      object lblDate: TLabel
        Left = 358
        Top = 1
        Width = 5
        Height = 38
        Align = alLeft
        Layout = tlCenter
        ExplicitHeight = 18
      end
    end
    object RelativePanel1: TRelativePanel
      Left = 1
      Top = 41
      Width = 499
      Height = 378
      ControlCollection = <
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
          Control = Label3
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
          Control = Label9
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
          Control = cboxDate
          AlignBottomWithPanel = False
          AlignHorizontalCenterWithPanel = False
          AlignLeftWithPanel = False
          AlignRightWithPanel = False
          AlignTopWithPanel = False
          AlignVerticalCenterWithPanel = False
        end
        item
          Control = cboxMonth
          AlignBottomWithPanel = False
          AlignHorizontalCenterWithPanel = False
          AlignLeftWithPanel = False
          AlignRightWithPanel = False
          AlignTopWithPanel = False
          AlignVerticalCenterWithPanel = False
        end
        item
          Control = cboxYear
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
          Control = Label12
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
          Control = checkHome
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
          Control = editJOB
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
        end>
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      DesignSize = (
        499
        378)
      object editName: TEdit
        Left = 160
        Top = 48
        Width = 193
        Height = 26
        Anchors = []
        TabOrder = 0
      end
      object Label3: TLabel
        Left = 71
        Top = 48
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
      object editAddress: TEdit
        Left = 160
        Top = 168
        Width = 241
        Height = 26
        Anchors = []
        TabOrder = 1
      end
      object lable: TLabel
        Left = 71
        Top = 91
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
        Left = 71
        Top = 131
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
        Left = 71
        Top = 171
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
      object cboxNo: TComboBox
        Left = 163
        Top = 88
        Width = 49
        Height = 26
        Anchors = []
        TabOrder = 2
        OnChange = cboxNoChange
      end
      object cboxR: TComboBox
        Left = 229
        Top = 88
        Width = 68
        Height = 26
        Anchors = []
        TabOrder = 3
      end
      object editNRC: TEdit
        Left = 322
        Top = 88
        Width = 121
        Height = 26
        Anchors = []
        NumbersOnly = True
        TabOrder = 4
      end
      object Label9: TLabel
        Left = 218
        Top = 91
        Width = 6
        Height = 18
        Anchors = []
        Caption = '/'
      end
      object Label10: TLabel
        Left = 299
        Top = 91
        Width = 22
        Height = 18
        Margins.Left = 10
        Margins.Right = 10
        Anchors = []
        Caption = '(N)'
      end
      object cboxDate: TComboBox
        Left = 161
        Top = 128
        Width = 51
        Height = 26
        Anchors = []
        TabOrder = 5
      end
      object cboxMonth: TComboBox
        Left = 229
        Top = 128
        Width = 85
        Height = 26
        Anchors = []
        TabOrder = 6
      end
      object cboxYear: TComboBox
        Left = 322
        Top = 128
        Width = 83
        Height = 26
        Anchors = []
        TabOrder = 7
      end
      object Label11: TLabel
        Left = 71
        Top = 211
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
      object Label12: TLabel
        Left = 71
        Top = 251
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
      object editPhone: TEdit
        Left = 160
        Top = 208
        Width = 113
        Height = 26
        Anchors = []
        NumbersOnly = True
        TabOrder = 8
      end
      object checkHome: TCheckBox
        Left = 160
        Top = 250
        Width = 97
        Height = 17
        Anchors = []
        Caption = 'Owned'
        TabOrder = 9
      end
      object JOB: TLabel
        Left = 71
        Top = 291
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
        Left = 71
        Top = 328
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
      object editJOB: TEdit
        Left = 160
        Top = 288
        Width = 113
        Height = 26
        Anchors = []
        TabOrder = 10
      end
      object editSalary: TEdit
        Left = 160
        Top = 325
        Width = 113
        Height = 26
        Anchors = []
        NumbersOnly = True
        TabOrder = 11
      end
    end
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
  end
end
