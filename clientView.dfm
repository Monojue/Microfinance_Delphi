object frmClientView: TfrmClientView
  Left = 0
  Top = 0
  Caption = 'Client View'
  ClientHeight = 460
  ClientWidth = 501
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
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
        Control = RelativePanel1
        Row = 1
      end
      item
        Column = 0
        Control = TopGrip
        Row = 0
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
      object btnClose: TButton
        Left = 410
        Top = 7
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Cancel'
        TabOrder = 0
      end
    end
    object RelativePanel1: TRelativePanel
      Left = 1
      Top = 41
      Width = 499
      Height = 378
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
          Control = lblName
          AlignBottomWithPanel = False
          AlignHorizontalCenterWithPanel = False
          AlignLeftWithPanel = False
          AlignRightWithPanel = False
          AlignTopWithPanel = False
          AlignVerticalCenterWithPanel = False
        end
        item
          Control = lblNRC
          AlignBottomWithPanel = False
          AlignHorizontalCenterWithPanel = False
          AlignLeftWithPanel = False
          AlignRightWithPanel = False
          AlignTopWithPanel = False
          AlignVerticalCenterWithPanel = False
        end
        item
          Control = lblDOB
          AlignBottomWithPanel = False
          AlignHorizontalCenterWithPanel = False
          AlignLeftWithPanel = False
          AlignRightWithPanel = False
          AlignTopWithPanel = False
          AlignVerticalCenterWithPanel = False
        end
        item
          Control = lblAddress
          AlignBottomWithPanel = False
          AlignHorizontalCenterWithPanel = False
          AlignLeftWithPanel = False
          AlignRightWithPanel = False
          AlignTopWithPanel = False
          AlignVerticalCenterWithPanel = False
        end
        item
          Control = lblPhone
          AlignBottomWithPanel = False
          AlignHorizontalCenterWithPanel = False
          AlignLeftWithPanel = False
          AlignRightWithPanel = False
          AlignTopWithPanel = False
          AlignVerticalCenterWithPanel = False
        end
        item
          Control = lblJob
          AlignBottomWithPanel = False
          AlignHorizontalCenterWithPanel = False
          AlignLeftWithPanel = False
          AlignRightWithPanel = False
          AlignTopWithPanel = False
          AlignVerticalCenterWithPanel = False
        end
        item
          Control = lblSalary
          AlignBottomWithPanel = False
          AlignHorizontalCenterWithPanel = False
          AlignLeftWithPanel = False
          AlignRightWithPanel = False
          AlignTopWithPanel = False
          AlignVerticalCenterWithPanel = False
        end
        item
          Control = lblHome
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
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      DesignSize = (
        499
        378)
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
      object lblName: TLabel
        Left = 160
        Top = 48
        Width = 46
        Height = 16
        Anchors = []
        Caption = 'lblName'
      end
      object lblNRC: TLabel
        Left = 160
        Top = 91
        Width = 37
        Height = 16
        Anchors = []
        Caption = 'lblNRC'
      end
      object lblDOB: TLabel
        Left = 160
        Top = 131
        Width = 37
        Height = 16
        Anchors = []
        Caption = 'lblDOB'
      end
      object lblAddress: TLabel
        Left = 160
        Top = 171
        Width = 59
        Height = 16
        Anchors = []
        Caption = 'lblAddress'
      end
      object lblPhone: TLabel
        Left = 160
        Top = 211
        Width = 37
        Height = 16
        Anchors = []
        Caption = 'Label2'
      end
      object lblJob: TLabel
        Left = 160
        Top = 291
        Width = 37
        Height = 16
        Anchors = []
        Caption = 'Label2'
      end
      object lblSalary: TLabel
        Left = 160
        Top = 328
        Width = 37
        Height = 16
        Anchors = []
        Caption = 'Label2'
      end
      object lblHome: TLabel
        Left = 160
        Top = 251
        Width = 37
        Height = 16
        Anchors = []
        Caption = 'Label2'
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
      TabOrder = 2
      ExplicitLeft = 0
      ExplicitTop = -5
      object lblID: TLabel
        Left = 71
        Top = 1
        Width = 4
        Height = 38
        Margins.Left = 50
        Align = alLeft
        Layout = tlCenter
        ExplicitHeight = 16
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
        ExplicitLeft = 10
        ExplicitWidth = 61
        ExplicitHeight = 16
      end
    end
  end
end
