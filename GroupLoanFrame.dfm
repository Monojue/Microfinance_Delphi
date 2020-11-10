object GroupLoanFM: TGroupLoanFM
  Left = 0
  Top = 0
  Width = 1231
  Height = 692
  TabOrder = 0
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 1231
    Height = 692
    Align = alClient
    ColumnCollection = <
      item
        Value = 100.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = groupGrid
        Row = 1
      end
      item
        Column = 0
        Control = GridPanel2
        Row = 0
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
        SizeStyle = ssAuto
      end
      item
        SizeStyle = ssAuto
      end>
    TabOrder = 0
    object groupGrid: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 54
      Width = 1223
      Height = 634
      Align = alClient
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ClientID'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRC'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Address'
          Width = 430
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Phone'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DateOfBirth'
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Home'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Job'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Salary'
          Width = 100
          Visible = True
        end>
    end
    object GridPanel2: TGridPanel
      Left = 1
      Top = 1
      Width = 1229
      Height = 50
      Align = alClient
      ColumnCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 10.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 70.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 120.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 25.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 130.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 80.000000000000000000
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
          Value = 80.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 80.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 80.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 10.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 1
          Control = Label1
          Row = 0
        end
        item
          Column = 2
          Control = cboxSearch
          Row = 0
        end
        item
          Column = 4
          Control = editSearch
          Row = 0
        end
        item
          Column = 7
          Control = btnNew
          Row = 0
        end
        item
          Column = 8
          Control = btnPay
          Row = 0
        end
        item
          Column = 9
          Control = btnDelete
          Row = 0
        end
        item
          Column = 10
          Control = btnRefresh
          Row = 0
        end
        item
          Column = 5
          Control = btnSearch
          Row = 0
        end
        item
          Column = 6
          Control = Panel1
          Row = 0
        end>
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 1
      DesignSize = (
        1229
        50)
      object Label1: TLabel
        Left = 12
        Top = 18
        Width = 68
        Height = 13
        Anchors = []
        Caption = 'Search With : '
        ExplicitLeft = 36
        ExplicitTop = 6
      end
      object cboxSearch: TComboBox
        Left = 85
        Top = 14
        Width = 112
        Height = 21
        Anchors = []
        ItemIndex = 0
        TabOrder = 0
        Text = 'LoanRequest ID'
        Items.Strings = (
          'LoanRequest ID'
          'Client ID')
      end
      object editSearch: TEdit
        Left = 230
        Top = 14
        Width = 121
        Height = 21
        Anchors = []
        TabOrder = 1
      end
      object btnNew: TButton
        Left = 900
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'New'
        TabOrder = 2
      end
      object btnPay: TButton
        Left = 980
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Pay'
        Enabled = False
        TabOrder = 3
      end
      object btnDelete: TButton
        Left = 1060
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Delete'
        Enabled = False
        TabOrder = 4
      end
      object btnRefresh: TButton
        Left = 1140
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Refresh'
        TabOrder = 5
      end
      object btnSearch: TButton
        Left = 358
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Search'
        Enabled = False
        TabOrder = 6
      end
      object Panel1: TPanel
        Left = 436
        Top = 1
        Width = 462
        Height = 48
        Align = alClient
        TabOrder = 7
        object RadioGroup: TRadioGroup
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 454
          Height = 40
          Align = alClient
          BiDiMode = bdRightToLeftReadingOnly
          Caption = 'View Table Of'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Accepted'
            'Rejected')
          ParentBiDiMode = False
          TabOrder = 0
        end
      end
    end
  end
end
