object ClientLoanFM: TClientLoanFM
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
        Control = GridPanel2
        Row = 0
      end
      item
        Column = 0
        Control = clientGrid
        Row = 1
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
        end
        item
          Column = 3
          Control = lblPrefix
          Row = 0
        end>
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 0
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
        OnChange = editSearchChange
      end
      object btnNew: TButton
        Left = 900
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'New'
        TabOrder = 2
        OnClick = btnNewClick
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
        OnClick = btnPayClick
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
        OnClick = btnRefreshClick
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
        OnClick = btnSearchClick
      end
      object Panel1: TPanel
        Left = 436
        Top = 1
        Width = 462
        Height = 48
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 7
        object RadioGroup: TRadioGroup
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 440
          Height = 42
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
          OnClick = RadioGroupClick
          ExplicitLeft = 4
          ExplicitTop = 4
          ExplicitWidth = 454
          ExplicitHeight = 40
        end
      end
      object lblPrefix: TLabel
        Left = 205
        Top = 18
        Width = 16
        Height = 13
        Anchors = []
        Caption = 'LR-'
        ExplicitLeft = 207
      end
    end
    object clientGrid: TDBGrid
      Left = 1
      Top = 51
      Width = 1229
      Height = 640
      Align = alClient
      DataSource = DataSource
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = clientGridCellClick
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
    Left = 794
    Top = 288
  end
  object SQLQuery: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'Select * from clientloanrequest where approved = 1 and PayDay is' +
        ' null')
    SQLConnection = MicrofinanceConnection
    Left = 816
    Top = 368
  end
  object DataSetProvider: TDataSetProvider
    DataSet = SQLQuery
    Left = 832
    Top = 464
  end
  object ClientDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider'
    Left = 888
    Top = 552
    object ClientDataSetLoanRequestID: TStringField
      FieldName = 'LoanRequestID'
      Required = True
      Size = 10
    end
    object ClientDataSetClientID: TStringField
      FieldName = 'ClientID'
      Required = True
      Size = 10
    end
    object ClientDataSetClientName: TStringField
      FieldName = 'ClientName'
      Required = True
      Size = 45
    end
    object ClientDataSetRequestDate: TStringField
      FieldName = 'RequestDate'
      Required = True
      Size = 11
    end
    object ClientDataSetAmount: TIntegerField
      FieldName = 'Amount'
      Required = True
    end
    object ClientDataSetDuration: TIntegerField
      FieldName = 'Duration'
      Required = True
    end
    object ClientDataSetInterestRate: TIntegerField
      FieldName = 'InterestRate'
      Required = True
    end
    object ClientDataSetRemark: TStringField
      FieldName = 'Remark'
      Size = 100
    end
  end
  object DataSource: TDataSource
    DataSet = ClientDataSet
    Left = 1016
    Top = 488
  end
end
