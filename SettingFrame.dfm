object SettingFM: TSettingFM
  Left = 0
  Top = 0
  Width = 1231
  Height = 677
  TabOrder = 0
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 1231
    Height = 677
    Align = alClient
    ColumnCollection = <
      item
        Value = 100.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 350.000000000000000000
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
        Row = 1
      end
      item
        Column = 1
        Control = Panel1
        Row = 0
      end
      item
        Column = 1
        Control = Panel2
        Row = 1
      end>
    RowCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    TabOrder = 0
    object GridPanel2: TGridPanel
      Left = 1
      Top = 1
      Width = 879
      Height = 337
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
          Control = IndiGrid
          Row = 1
        end
        item
          Column = 1
          Control = GroupGrid
          Row = 1
        end
        item
          Column = 0
          Control = Button1
          Row = 0
        end>
      RowCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 50.000000000000000000
        end
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 0
      DesignSize = (
        879
        337)
      object IndiGrid: TGridPanel
        Left = 1
        Top = 51
        Width = 438
        Height = 285
        Align = alClient
        Alignment = taLeftJustify
        Caption = 'Individual'
        ColumnCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 10.000000000000000000
          end
          item
            Value = 100.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 100.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 20.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 100.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 50.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 10.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 1
            Control = Label9
            Row = 1
          end
          item
            Column = 3
            Control = Label11
            Row = 1
          end
          item
            Column = 5
            Control = Label13
            Row = 1
          end
          item
            Column = 1
            Control = Label16
            Row = 2
          end
          item
            Column = 3
            Control = Label18
            Row = 2
          end
          item
            Column = 5
            Control = Label20
            Row = 2
          end
          item
            Column = 1
            Control = Label23
            Row = 3
          end
          item
            Column = 4
            Control = Label26
            Row = 3
          end
          item
            Column = 1
            Control = Label30
            Row = 4
          end
          item
            Column = 4
            Control = Label33
            Row = 4
          end
          item
            Column = 1
            Control = Label37
            Row = 5
          end
          item
            Column = 4
            Control = Label40
            Row = 5
          end
          item
            Column = 1
            Control = Label44
            Row = 6
          end
          item
            Column = 4
            Control = Label47
            Row = 6
          end
          item
            Column = 2
            Control = editIMinAmount
            Row = 1
          end
          item
            Column = 4
            Control = editIMaxAmount
            Row = 1
          end
          item
            Column = 2
            Control = editIMinDura
            Row = 2
          end
          item
            Column = 4
            Control = editIMaxDura
            Row = 2
          end
          item
            Column = 2
            Control = editIAmoInter
            Row = 3
          end
          item
            Column = 2
            Control = editIDuraInter
            Row = 4
          end
          item
            Column = 2
            Control = editIRate
            Row = 5
          end
          item
            Column = 2
            Control = editIFees
            Row = 6
          end
          item
            Column = 1
            Control = btnIEdit
            Row = 7
          end
          item
            Column = 2
            Control = btnICancel
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
        TabOrder = 0
        VerticalAlignment = taAlignTop
        DesignSize = (
          438
          285)
        object Label9: TLabel
          Left = 11
          Top = 36
          Width = 146
          Height = 35
          Align = alClient
          Caption = 'Amount'
          Layout = tlCenter
          ExplicitWidth = 37
          ExplicitHeight = 13
        end
        object Label11: TLabel
          Left = 265
          Top = 47
          Width = 4
          Height = 13
          Anchors = []
          Caption = '-'
          ExplicitTop = 56
        end
        object Label13: TLabel
          Left = 377
          Top = 36
          Width = 50
          Height = 35
          Align = alClient
          Caption = 'Kyats'
          Layout = tlCenter
          ExplicitWidth = 27
          ExplicitHeight = 13
        end
        object Label16: TLabel
          Left = 11
          Top = 71
          Width = 146
          Height = 35
          Align = alClient
          Caption = 'Duration'
          Layout = tlCenter
          ExplicitWidth = 41
          ExplicitHeight = 13
        end
        object Label18: TLabel
          Left = 265
          Top = 82
          Width = 4
          Height = 13
          Anchors = []
          Caption = '-'
          ExplicitLeft = 257
          ExplicitTop = 97
        end
        object Label20: TLabel
          Left = 377
          Top = 71
          Width = 50
          Height = 35
          Align = alClient
          Caption = 'Month'
          Layout = tlCenter
          ExplicitWidth = 30
          ExplicitHeight = 13
        end
        object Label23: TLabel
          Left = 11
          Top = 106
          Width = 146
          Height = 35
          Align = alClient
          Caption = 'Amount Interval'
          Layout = tlCenter
          ExplicitWidth = 78
          ExplicitHeight = 13
        end
        object Label26: TLabel
          Left = 277
          Top = 106
          Width = 100
          Height = 35
          Align = alClient
          Caption = 'Kyats'
          Layout = tlCenter
          ExplicitWidth = 27
          ExplicitHeight = 13
        end
        object Label30: TLabel
          Left = 11
          Top = 141
          Width = 146
          Height = 35
          Align = alClient
          Caption = 'Duration Interval'
          Layout = tlCenter
          ExplicitWidth = 82
          ExplicitHeight = 13
        end
        object Label33: TLabel
          Left = 277
          Top = 141
          Width = 100
          Height = 35
          Align = alClient
          Caption = 'Month'
          Layout = tlCenter
          ExplicitWidth = 30
          ExplicitHeight = 13
        end
        object Label37: TLabel
          Left = 11
          Top = 176
          Width = 146
          Height = 35
          Align = alClient
          Caption = 'Interest Rate'
          Layout = tlCenter
          ExplicitWidth = 65
          ExplicitHeight = 13
        end
        object Label40: TLabel
          Left = 277
          Top = 176
          Width = 100
          Height = 35
          Align = alClient
          Caption = '%'
          Layout = tlCenter
          ExplicitWidth = 11
          ExplicitHeight = 13
        end
        object Label44: TLabel
          Left = 11
          Top = 211
          Width = 146
          Height = 35
          Align = alClient
          Caption = 'Services Fees'
          Layout = tlCenter
          ExplicitWidth = 66
          ExplicitHeight = 13
        end
        object Label47: TLabel
          Left = 277
          Top = 211
          Width = 100
          Height = 35
          Align = alClient
          Caption = '%'
          Layout = tlCenter
          ExplicitWidth = 11
          ExplicitHeight = 13
        end
        object editIMinAmount: TEdit
          Left = 157
          Top = 43
          Width = 100
          Height = 21
          Anchors = []
          Enabled = False
          NumbersOnly = True
          TabOrder = 0
        end
        object editIMaxAmount: TEdit
          Left = 277
          Top = 43
          Width = 100
          Height = 21
          Anchors = []
          Enabled = False
          NumbersOnly = True
          TabOrder = 1
        end
        object editIMinDura: TEdit
          Left = 157
          Top = 78
          Width = 100
          Height = 21
          Anchors = []
          Enabled = False
          NumbersOnly = True
          TabOrder = 2
        end
        object editIMaxDura: TEdit
          Left = 277
          Top = 78
          Width = 100
          Height = 21
          Anchors = []
          Enabled = False
          NumbersOnly = True
          TabOrder = 3
        end
        object editIAmoInter: TEdit
          Left = 157
          Top = 113
          Width = 100
          Height = 21
          Anchors = []
          Enabled = False
          NumbersOnly = True
          TabOrder = 4
        end
        object editIDuraInter: TEdit
          Left = 157
          Top = 148
          Width = 100
          Height = 21
          Anchors = []
          Enabled = False
          NumbersOnly = True
          TabOrder = 5
        end
        object editIRate: TEdit
          Left = 157
          Top = 183
          Width = 100
          Height = 21
          Anchors = []
          Enabled = False
          TabOrder = 6
        end
        object editIFees: TEdit
          Left = 157
          Top = 218
          Width = 100
          Height = 21
          Anchors = []
          Enabled = False
          NumbersOnly = True
          TabOrder = 7
        end
        object btnIEdit: TButton
          Left = 46
          Top = 252
          Width = 75
          Height = 25
          Anchors = []
          Caption = 'Edit'
          TabOrder = 8
          OnClick = btnIEditClick
        end
        object btnICancel: TButton
          Left = 169
          Top = 252
          Width = 75
          Height = 25
          Anchors = []
          Caption = 'Cancel'
          TabOrder = 9
          Visible = False
          OnClick = btnICancelClick
        end
      end
      object GroupGrid: TGridPanel
        Left = 439
        Top = 51
        Width = 439
        Height = 285
        Align = alClient
        Alignment = taLeftJustify
        Anchors = []
        Caption = 'Group'
        ColumnCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 10.000000000000000000
          end
          item
            Value = 100.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 100.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 20.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 100.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 50.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 10.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 1
            Control = Label1
            Row = 1
          end
          item
            Column = 3
            Control = Label2
            Row = 1
          end
          item
            Column = 5
            Control = Label3
            Row = 1
          end
          item
            Column = 1
            Control = Label4
            Row = 2
          end
          item
            Column = 3
            Control = Label5
            Row = 2
          end
          item
            Column = 5
            Control = Label6
            Row = 2
          end
          item
            Column = 1
            Control = Label7
            Row = 3
          end
          item
            Column = 4
            Control = Label8
            Row = 3
          end
          item
            Column = 1
            Control = Label10
            Row = 4
          end
          item
            Column = 4
            Control = Label12
            Row = 4
          end
          item
            Column = 1
            Control = Label14
            Row = 5
          end
          item
            Column = 4
            Control = Label15
            Row = 5
          end
          item
            Column = 1
            Control = Label17
            Row = 6
          end
          item
            Column = 4
            Control = Label19
            Row = 6
          end
          item
            Column = 2
            Control = editGMinAmount
            Row = 1
          end
          item
            Column = 4
            Control = editGMaxAmount
            Row = 1
          end
          item
            Column = 2
            Control = editGMinDura
            Row = 2
          end
          item
            Column = 4
            Control = editGMaxDura
            Row = 2
          end
          item
            Column = 2
            Control = editGAmoInter
            Row = 3
          end
          item
            Column = 2
            Control = editGDuraInter
            Row = 4
          end
          item
            Column = 2
            Control = editGRate
            Row = 5
          end
          item
            Column = 2
            Control = editGFees
            Row = 6
          end
          item
            Column = 1
            Control = btnGEdit
            Row = 7
          end
          item
            Column = 2
            Control = btnGCancel
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
        VerticalAlignment = taAlignTop
        DesignSize = (
          439
          285)
        object Label1: TLabel
          Left = 11
          Top = 36
          Width = 147
          Height = 35
          Align = alClient
          Caption = 'Amount'
          Layout = tlCenter
          ExplicitWidth = 37
          ExplicitHeight = 13
        end
        object Label2: TLabel
          Left = 266
          Top = 47
          Width = 4
          Height = 13
          Anchors = []
          Caption = '-'
          ExplicitLeft = -163
          ExplicitTop = 5
        end
        object Label3: TLabel
          Left = 378
          Top = 36
          Width = 50
          Height = 35
          Align = alClient
          Caption = 'Kyats'
          Layout = tlCenter
          ExplicitWidth = 27
          ExplicitHeight = 13
        end
        object Label4: TLabel
          Left = 11
          Top = 71
          Width = 147
          Height = 35
          Align = alClient
          Caption = 'Duration'
          Layout = tlCenter
          ExplicitWidth = 41
          ExplicitHeight = 13
        end
        object Label5: TLabel
          Left = 266
          Top = 82
          Width = 4
          Height = 13
          Anchors = []
          Caption = '-'
          ExplicitLeft = -163
          ExplicitTop = 9
        end
        object Label6: TLabel
          Left = 378
          Top = 71
          Width = 50
          Height = 35
          Align = alClient
          Caption = 'Month'
          Layout = tlCenter
          ExplicitWidth = 30
          ExplicitHeight = 13
        end
        object Label7: TLabel
          Left = 11
          Top = 106
          Width = 147
          Height = 35
          Align = alClient
          Caption = 'Amount Interval'
          Layout = tlCenter
          ExplicitWidth = 78
          ExplicitHeight = 13
        end
        object Label8: TLabel
          Left = 278
          Top = 106
          Width = 100
          Height = 35
          Align = alClient
          Caption = 'Kyats'
          Layout = tlCenter
          ExplicitWidth = 27
          ExplicitHeight = 13
        end
        object Label10: TLabel
          Left = 11
          Top = 141
          Width = 147
          Height = 35
          Align = alClient
          Caption = 'Duration Interval'
          Layout = tlCenter
          ExplicitWidth = 82
          ExplicitHeight = 13
        end
        object Label12: TLabel
          Left = 278
          Top = 141
          Width = 100
          Height = 35
          Align = alClient
          Caption = 'Month'
          Layout = tlCenter
          ExplicitWidth = 30
          ExplicitHeight = 13
        end
        object Label14: TLabel
          Left = 11
          Top = 176
          Width = 147
          Height = 35
          Align = alClient
          Caption = 'Interest Rate'
          Layout = tlCenter
          ExplicitWidth = 65
          ExplicitHeight = 13
        end
        object Label15: TLabel
          Left = 278
          Top = 176
          Width = 100
          Height = 35
          Align = alClient
          Caption = '%'
          Layout = tlCenter
          ExplicitWidth = 11
          ExplicitHeight = 13
        end
        object Label17: TLabel
          Left = 11
          Top = 211
          Width = 147
          Height = 35
          Align = alClient
          Caption = 'Services Fees'
          Layout = tlCenter
          ExplicitWidth = 66
          ExplicitHeight = 13
        end
        object Label19: TLabel
          Left = 278
          Top = 211
          Width = 100
          Height = 35
          Align = alClient
          Caption = '%'
          Layout = tlCenter
          ExplicitWidth = 11
          ExplicitHeight = 13
        end
        object editGMinAmount: TEdit
          Left = 158
          Top = 43
          Width = 100
          Height = 21
          Anchors = []
          Enabled = False
          NumbersOnly = True
          TabOrder = 0
        end
        object editGMaxAmount: TEdit
          Left = 278
          Top = 43
          Width = 100
          Height = 21
          Anchors = []
          Enabled = False
          NumbersOnly = True
          TabOrder = 1
        end
        object editGMinDura: TEdit
          Left = 158
          Top = 78
          Width = 100
          Height = 21
          Anchors = []
          Enabled = False
          NumbersOnly = True
          TabOrder = 2
        end
        object editGMaxDura: TEdit
          Left = 278
          Top = 78
          Width = 100
          Height = 21
          Anchors = []
          Enabled = False
          NumbersOnly = True
          TabOrder = 3
        end
        object editGAmoInter: TEdit
          Left = 158
          Top = 113
          Width = 100
          Height = 21
          Anchors = []
          Enabled = False
          NumbersOnly = True
          TabOrder = 4
        end
        object editGDuraInter: TEdit
          Left = 158
          Top = 148
          Width = 100
          Height = 21
          Anchors = []
          Enabled = False
          NumbersOnly = True
          TabOrder = 5
        end
        object editGRate: TEdit
          Left = 158
          Top = 183
          Width = 100
          Height = 21
          Anchors = []
          Enabled = False
          TabOrder = 6
        end
        object editGFees: TEdit
          Left = 158
          Top = 218
          Width = 100
          Height = 21
          Anchors = []
          Enabled = False
          NumbersOnly = True
          TabOrder = 7
        end
        object btnGEdit: TButton
          Left = 47
          Top = 252
          Width = 75
          Height = 25
          Anchors = []
          Caption = 'Edit'
          TabOrder = 8
          OnClick = btnGEditClick
        end
        object btnGCancel: TButton
          Left = 170
          Top = 252
          Width = 75
          Height = 25
          Anchors = []
          Caption = 'Cancel'
          TabOrder = 9
          Visible = False
          OnClick = btnGCancelClick
        end
      end
      object Button1: TButton
        Left = 155
        Top = 13
        Width = 130
        Height = 25
        Anchors = []
        Caption = 'View Loan Edit History'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    object GridPanel4: TGridPanel
      Left = 1
      Top = 338
      Width = 879
      Height = 338
      Align = alClient
      ColumnCollection = <
        item
          Value = 100.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = GridPanel5
          Row = 0
        end
        item
          Column = 0
          Control = DBGrid1
          Row = 1
        end>
      RowCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 50.000000000000000000
        end
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 1
      object GridPanel5: TGridPanel
        Left = 1
        Top = 1
        Width = 877
        Height = 50
        Align = alClient
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
            Value = 10.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 1
            Control = Label22
            Row = 0
          end
          item
            Column = 2
            Control = editSearch
            Row = 0
          end
          item
            Column = 3
            Control = btnSearch
            Row = 0
          end
          item
            Column = 5
            Control = btnAdd
            Row = 0
          end
          item
            Column = 6
            Control = btnDelete
            Row = 0
          end
          item
            Column = 7
            Control = btnRefresh
            Row = 0
          end>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        TabOrder = 0
        DesignSize = (
          877
          50)
        object Label22: TLabel
          Left = 11
          Top = 1
          Width = 80
          Height = 48
          Align = alClient
          Alignment = taCenter
          Caption = 'Name : '
          Layout = tlCenter
          ExplicitWidth = 37
          ExplicitHeight = 13
        end
        object editSearch: TEdit
          Left = 91
          Top = 14
          Width = 120
          Height = 21
          Anchors = []
          TabOrder = 0
          OnChange = editSearchChange
        end
        object btnSearch: TButton
          Left = 213
          Top = 12
          Width = 75
          Height = 25
          Anchors = []
          Caption = 'Search'
          Enabled = False
          TabOrder = 1
          OnClick = btnSearchClick
        end
        object btnAdd: TButton
          Left = 628
          Top = 12
          Width = 75
          Height = 25
          Anchors = []
          Caption = 'Add'
          TabOrder = 2
          OnClick = btnAddClick
        end
        object btnDelete: TButton
          Left = 708
          Top = 12
          Width = 75
          Height = 25
          Anchors = []
          Caption = 'Delete'
          TabOrder = 3
        end
        object btnRefresh: TButton
          Left = 788
          Top = 12
          Width = 75
          Height = 25
          Anchors = []
          Caption = 'Refresh'
          TabOrder = 4
          OnClick = btnRefreshClick
        end
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 51
        Width = 877
        Height = 286
        Align = alClient
        DataSource = DataSource
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object Panel1: TPanel
      Left = 880
      Top = 1
      Width = 350
      Height = 337
      Align = alClient
      Color = clHighlight
      ParentBackground = False
      TabOrder = 2
      ExplicitHeight = 675
    end
    object Panel2: TPanel
      Left = 880
      Top = 338
      Width = 350
      Height = 338
      Align = alClient
      Color = clHighlight
      ParentBackground = False
      TabOrder = 3
      ExplicitLeft = 962
      ExplicitTop = 486
      ExplicitWidth = 185
      ExplicitHeight = 675
    end
  end
  object MicrofinanceConnection: TSQLConnection
    ConnectionName = 'Microfinance'
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver260.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver260.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=24.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'HostName=localhost'
      'User_Name=root'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'Database=micro'
      'Password=root')
    Connected = True
    Left = 530
    Top = 443
  end
  object SQLQuery: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from officer')
    SQLConnection = MicrofinanceConnection
    Left = 529
    Top = 514
  end
  object DataSetProvider: TDataSetProvider
    DataSet = SQLQuery
    Left = 489
    Top = 578
  end
  object ClientDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider'
    Left = 577
    Top = 586
    object ClientDataSetOfficerID: TStringField
      DisplayWidth = 15
      FieldName = 'OfficerID'
      Required = True
      Size = 10
    end
    object ClientDataSetName: TStringField
      DisplayWidth = 20
      FieldName = 'Name'
      Required = True
      Size = 45
    end
    object ClientDataSetAddress: TStringField
      DisplayWidth = 50
      FieldName = 'Address'
      Required = True
      Size = 45
    end
    object ClientDataSetPhone: TStringField
      DisplayWidth = 25
      FieldName = 'Phone'
      Required = True
      Size = 45
    end
    object ClientDataSetNRC: TStringField
      DisplayWidth = 30
      FieldName = 'NRC'
      Required = True
      Size = 45
    end
    object ClientDataSetRole: TStringField
      DisplayWidth = 15
      FieldName = 'Role'
      Required = True
      Size = 10
    end
  end
  object DataSource: TDataSource
    DataSet = ClientDataSet
    Left = 689
    Top = 554
  end
end
