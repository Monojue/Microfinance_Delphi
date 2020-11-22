object RepaymentFM: TRepaymentFM
  Left = 0
  Top = 0
  Width = 1231
  Height = 581
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 1231
    Height = 581
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
        Control = DBGrid
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
          SizeStyle = ssAbsolute
          Value = 500.000000000000000000
        end
        item
          Value = 100.000000000000000000
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
          Column = 8
          Control = btnViewDetails
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
        Left = 11
        Top = 16
        Width = 70
        Height = 18
        Anchors = []
        Caption = 'Search With : '
      end
      object cboxSearch: TComboBox
        Left = 85
        Top = 12
        Width = 112
        Height = 26
        Anchors = []
        TabOrder = 0
        Text = 'LoanRequest ID'
        Items.Strings = (
          'LoanRequest ID'
          'Client ID'
          'Date')
      end
      object editSearch: TEdit
        Left = 230
        Top = 12
        Width = 121
        Height = 26
        Anchors = []
        TabOrder = 1
        OnChange = editSearchChange
      end
      object btnViewDetails: TButton
        Left = 938
        Top = 12
        Width = 120
        Height = 25
        Anchors = []
        Caption = 'View Details'
        Enabled = False
        TabOrder = 2
        OnClick = btnViewDetailsClick
      end
      object btnDelete: TButton
        Left = 1060
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Delete'
        Enabled = False
        TabOrder = 3
        OnClick = btnDeleteClick
      end
      object btnRefresh: TButton
        Left = 1140
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Refresh'
        TabOrder = 4
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
        TabOrder = 5
        OnClick = btnSearchClick
      end
      object Panel1: TPanel
        Left = 436
        Top = 1
        Width = 500
        Height = 48
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 6
        object RadioGroup: TRadioGroup
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 456
          Height = 42
          Align = alClient
          BiDiMode = bdRightToLeftReadingOnly
          Caption = 'View Table Of'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Individual'
            'Group')
          ParentBiDiMode = False
          TabOrder = 0
          OnClick = RadioGroupClick
          ExplicitWidth = 494
        end
      end
      object lblPrefix: TLabel
        Left = 203
        Top = 16
        Width = 21
        Height = 18
        Anchors = []
        Caption = 'LR-'
        ExplicitLeft = 205
        ExplicitTop = 18
      end
    end
    object DBGrid: TDBGrid
      Left = 1
      Top = 51
      Width = 1229
      Height = 529
      Align = alClient
      DataSource = ClientDataSource
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGridCellClick
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
    Left = 386
    Top = 120
  end
  object CQuery: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'Select * from clientloanrequest where approved = 1 and PayDay is' +
        ' not null')
    SQLConnection = MicrofinanceConnection
    Left = 320
    Top = 192
    object CQueryLoanRequestID: TStringField
      FieldName = 'LoanRequestID'
      Required = True
      Size = 10
    end
    object CQueryClientID: TStringField
      FieldName = 'ClientID'
      Required = True
      Size = 10
    end
    object CQueryClientName: TStringField
      FieldName = 'ClientName'
      Required = True
      Size = 45
    end
    object CQueryRequestDate: TStringField
      FieldName = 'RequestDate'
      Required = True
      Size = 11
    end
    object CQueryDueDate: TStringField
      FieldName = 'DueDate'
      Size = 11
    end
    object CQueryAmount: TIntegerField
      FieldName = 'Amount'
      Required = True
    end
    object CQueryDuration: TIntegerField
      FieldName = 'Duration'
      Required = True
    end
    object CQueryInterestRate: TIntegerField
      FieldName = 'InterestRate'
      Required = True
    end
    object CQueryPayDay: TStringField
      FieldName = 'PayDay'
    end
    object CQueryRemark: TStringField
      FieldName = 'Remark'
      Size = 100
    end
    object CQueryApproved: TShortintField
      FieldName = 'Approved'
    end
  end
  object GQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'Select * from grouploanrequest where approved = 1 and PayDay is ' +
        'not null')
    SQLConnection = MicrofinanceConnection
    Left = 440
    Top = 192
    object GQueryLoanRequestID: TStringField
      FieldName = 'LoanRequestID'
      Required = True
      Size = 10
    end
    object GQueryGroupID: TStringField
      FieldName = 'GroupID'
      Required = True
      Size = 10
    end
    object GQueryLeaderName: TStringField
      FieldName = 'Leader Name'
      Required = True
      Size = 45
    end
    object GQueryMember1Name: TStringField
      FieldName = 'Member1 Name'
      Required = True
      Size = 45
    end
    object GQueryMember2Name: TStringField
      FieldName = 'Member2 Name'
      Required = True
      Size = 45
    end
    object GQueryMember3Name: TStringField
      FieldName = 'Member3 Name'
      Required = True
      Size = 45
    end
    object GQueryMember4Name: TStringField
      FieldName = 'Member4 Name'
      Required = True
      Size = 45
    end
    object GQueryRequestDate: TStringField
      FieldName = 'RequestDate'
      Required = True
      Size = 15
    end
    object GQueryDueDate: TStringField
      FieldName = 'DueDate'
      Size = 15
    end
    object GQueryAmount: TIntegerField
      FieldName = 'Amount'
      Required = True
    end
    object GQueryDuration: TIntegerField
      FieldName = 'Duration'
      Required = True
    end
    object GQueryInterestRate: TIntegerField
      FieldName = 'InterestRate'
      Required = True
    end
    object GQueryRemark: TStringField
      FieldName = 'Remark'
      Size = 100
    end
    object GQueryPayDay: TStringField
      FieldName = 'PayDay'
    end
    object GQueryApproved: TShortintField
      FieldName = 'Approved'
    end
  end
  object Cprovider: TDataSetProvider
    DataSet = CQuery
    Left = 320
    Top = 256
  end
  object Gprovider: TDataSetProvider
    DataSet = GQuery
    Left = 440
    Top = 256
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Cprovider'
    Left = 320
    Top = 328
    object ClientDataSet1LoanRequestID: TStringField
      FieldName = 'LoanRequestID'
      Required = True
      Size = 10
    end
    object ClientDataSet1ClientID: TStringField
      FieldName = 'ClientID'
      Required = True
      Size = 10
    end
    object ClientDataSet1ClientName: TStringField
      FieldName = 'ClientName'
      Required = True
      Size = 45
    end
    object ClientDataSet1RequestDate: TStringField
      FieldName = 'RequestDate'
      Required = True
      Size = 11
    end
    object ClientDataSet1DueDate: TStringField
      FieldName = 'DueDate'
      Size = 11
    end
    object ClientDataSet1PayDay: TStringField
      FieldName = 'PayDay'
    end
    object ClientDataSet1Amount: TIntegerField
      FieldName = 'Amount'
      Required = True
    end
    object ClientDataSet1Duration: TIntegerField
      FieldName = 'Duration'
      Required = True
    end
    object ClientDataSet1InterestRate: TIntegerField
      FieldName = 'InterestRate'
      Required = True
    end
  end
  object GroupDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Gprovider'
    Left = 440
    Top = 328
    object GroupDataSetLoanRequestID: TStringField
      FieldName = 'LoanRequestID'
      Required = True
      Size = 10
    end
    object GroupDataSetGroupID: TStringField
      FieldName = 'GroupID'
      Required = True
      Size = 10
    end
    object GroupDataSetLeaderName: TStringField
      FieldName = 'Leader Name'
      Required = True
      Size = 45
    end
    object GroupDataSetMember1Name: TStringField
      FieldName = 'Member1 Name'
      Required = True
      Size = 45
    end
    object GroupDataSetMember2Name: TStringField
      FieldName = 'Member2 Name'
      Required = True
      Size = 45
    end
    object GroupDataSetMember3Name: TStringField
      FieldName = 'Member3 Name'
      Required = True
      Size = 45
    end
    object GroupDataSetMember4Name: TStringField
      FieldName = 'Member4 Name'
      Required = True
      Size = 45
    end
    object GroupDataSetRequestDate: TStringField
      FieldName = 'RequestDate'
      Required = True
      Size = 15
    end
    object GroupDataSetDueDate: TStringField
      FieldName = 'DueDate'
      Size = 15
    end
    object GroupDataSetPayDay: TStringField
      FieldName = 'PayDay'
    end
    object GroupDataSetAmount: TIntegerField
      FieldName = 'Amount'
      Required = True
    end
    object GroupDataSetDuration: TIntegerField
      FieldName = 'Duration'
      Required = True
    end
    object GroupDataSetInterestRate: TIntegerField
      FieldName = 'InterestRate'
      Required = True
    end
  end
  object ClientDataSource: TDataSource
    DataSet = ClientDataSet1
    Left = 320
    Top = 408
  end
  object GroupDataSource: TDataSource
    DataSet = GroupDataSet
    Left = 440
    Top = 408
  end
end
