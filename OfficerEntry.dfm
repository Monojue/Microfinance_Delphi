object frmOfficerEntry: TfrmOfficerEntry
  Left = 0
  Top = 219
  BorderStyle = bsDialog
  Caption = 'Officer Entry'
  ClientHeight = 475
  ClientWidth = 498
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  DesignSize = (
    498
    475)
  PixelsPerInch = 96
  TextHeight = 13
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 498
    Height = 475
    Align = alClient
    ColumnCollection = <
      item
        Value = 100.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = GridPanel2
        Row = 0
      end
      item
        Column = 0
        Control = GridPanel4
        Row = 2
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
    object GridPanel2: TGridPanel
      Left = 1
      Top = 1
      Width = 496
      Height = 40
      Align = alClient
      ColumnCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 40.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
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
        end>
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 0
      DesignSize = (
        496
        40)
      object Label1: TLabel
        Left = 12
        Top = 13
        Width = 18
        Height = 13
        Anchors = []
        Caption = 'ID :'
        ExplicitLeft = 14
      end
      object lblID: TLabel
        Left = 41
        Top = 1
        Width = 227
        Height = 38
        Align = alClient
        Layout = tlCenter
        ExplicitWidth = 3
        ExplicitHeight = 13
      end
    end
    object GridPanel4: TGridPanel
      Left = 1
      Top = 434
      Width = 496
      Height = 40
      Align = alClient
      ColumnCollection = <
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
        end>
      ControlCollection = <
        item
          Column = 1
          Control = btnAdd
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
        496
        40)
      object btnAdd: TButton
        Left = 337
        Top = 7
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Add'
        TabOrder = 0
        OnClick = btnAddClick
      end
      object btnCancel: TButton
        Left = 417
        Top = 7
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Cancel'
        TabOrder = 1
        OnClick = btnCancelClick
      end
    end
    object RelativePanel1: TRelativePanel
      Left = 1
      Top = 41
      Width = 496
      Height = 393
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
          Control = editUserName
          AlignBottomWithPanel = False
          AlignHorizontalCenterWithPanel = False
          AlignLeftWithPanel = False
          AlignRightWithPanel = False
          AlignTopWithPanel = False
          AlignVerticalCenterWithPanel = False
        end
        item
          Control = editPassword
          AlignBottomWithPanel = False
          AlignHorizontalCenterWithPanel = False
          AlignLeftWithPanel = False
          AlignRightWithPanel = False
          AlignTopWithPanel = False
          AlignVerticalCenterWithPanel = False
        end
        item
          Control = cboxRole
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
        end>
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      DesignSize = (
        496
        393)
      object editName: TEdit
        Left = 160
        Top = 48
        Width = 193
        Height = 24
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
        Top = 128
        Width = 241
        Height = 24
        Anchors = []
        TabOrder = 4
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
      object Label8: TLabel
        Left = 71
        Top = 131
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
        Height = 24
        Anchors = []
        TabOrder = 1
      end
      object cboxR: TComboBox
        Left = 229
        Top = 88
        Width = 68
        Height = 24
        Anchors = []
        TabOrder = 2
      end
      object editNRC: TEdit
        Left = 330
        Top = 88
        Width = 121
        Height = 24
        Anchors = []
        NumbersOnly = True
        TabOrder = 3
      end
      object Label9: TLabel
        Left = 218
        Top = 91
        Width = 5
        Height = 16
        Anchors = []
        Caption = '/'
      end
      object Label10: TLabel
        Left = 299
        Top = 91
        Width = 18
        Height = 16
        Margins.Left = 10
        Margins.Right = 10
        Anchors = []
        Caption = '(N)'
      end
      object Label11: TLabel
        Left = 71
        Top = 171
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
        Top = 211
        Width = 25
        Height = 16
        Anchors = []
        Caption = 'Role'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object editPhone: TEdit
        Left = 160
        Top = 168
        Width = 113
        Height = 24
        Anchors = []
        NumbersOnly = True
        TabOrder = 5
      end
      object JOB: TLabel
        Left = 71
        Top = 251
        Width = 59
        Height = 16
        Anchors = []
        Caption = 'UserName'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 71
        Top = 288
        Width = 55
        Height = 16
        Anchors = []
        Caption = 'Password'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object editUserName: TEdit
        Left = 160
        Top = 248
        Width = 113
        Height = 24
        Anchors = []
        TabOrder = 7
      end
      object editPassword: TEdit
        Left = 160
        Top = 285
        Width = 113
        Height = 24
        Anchors = []
        PasswordChar = '*'
        TabOrder = 8
      end
      object cboxRole: TComboBox
        Left = 160
        Top = 208
        Width = 103
        Height = 24
        Anchors = []
        ItemIndex = 1
        TabOrder = 6
        Text = 'Manager'
        Items.Strings = (
          'Manager'
          'Staff')
      end
      object Label2: TLabel
        Left = 41
        Top = 331
        Width = 104
        Height = 16
        Anchors = []
        Caption = 'Confirm Password'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object editCpassword: TEdit
    Left = 161
    Top = 371
    Width = 113
    Height = 21
    Anchors = []
    PasswordChar = '*'
    TabOrder = 1
  end
end
