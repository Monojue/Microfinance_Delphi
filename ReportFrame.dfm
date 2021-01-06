object ReportFM: TReportFM
  Left = 0
  Top = 0
  Width = 800
  Height = 500
  TabOrder = 0
  object MainGrid: TGridPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 500
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
        Control = IndividualPanel
        Row = 1
      end
      item
        Column = 0
        Control = GroupPanel
        Row = 2
      end>
    RowCollection = <
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
    TabOrder = 0
    object GridPanel2: TGridPanel
      Left = 1
      Top = 1
      Width = 798
      Height = 40
      Align = alClient
      ColumnCollection = <
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
          Value = 10.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 1
          Control = btnViewDetails
          Row = 0
        end
        item
          Column = 2
          Control = btnRefresh
          Row = 0
        end>
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 0
      DesignSize = (
        798
        40)
      object btnViewDetails: TButton
        Left = 587
        Top = 7
        Width = 120
        Height = 25
        Anchors = []
        Caption = 'View Details'
        Enabled = False
        TabOrder = 0
        OnClick = btnViewDetailsClick
      end
      object btnRefresh: TButton
        Left = 709
        Top = 7
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Refresh'
        TabOrder = 1
        OnClick = btnRefreshClick
      end
    end
    object IndividualPanel: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 44
      Width = 792
      Height = 223
      Align = alClient
      AutoSize = True
      BevelInner = bvRaised
      Caption = 'INDIVIDUAL PENDING REQUEST'
      Padding.Top = 15
      TabOrder = 1
      VerticalAlignment = taAlignTop
      object ClientGrid: TDBGrid
        Left = 2
        Top = 17
        Width = 1211
        Height = 276
        Align = alClient
        DataSource = DataSource1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = ClientGridCellClick
      end
    end
    object GroupPanel: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 273
      Width = 792
      Height = 223
      Align = alClient
      AutoSize = True
      BevelInner = bvRaised
      Caption = 'GROUP PENDING REQUEST'
      Padding.Top = 15
      TabOrder = 2
      VerticalAlignment = taAlignTop
      object GroupGrid: TDBGrid
        Left = 2
        Top = 17
        Width = 1211
        Height = 276
        Align = alClient
        DataSource = DataSource2
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = GroupGridCellClick
      end
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Left = 292
    Top = 164
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 420
    Top = 204
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
    object ClientDataSet1Remark: TStringField
      FieldName = 'Remark'
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 644
    Top = 220
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLQuery2
    Left = 292
    Top = 364
  end
  object ClientDataSet2: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 420
    Top = 404
    object ClientDataSet2LoanRequestID: TStringField
      FieldName = 'LoanRequestID'
      Required = True
      Size = 10
    end
    object ClientDataSet2GroupID: TStringField
      FieldName = 'GroupID'
      Required = True
      Size = 10
    end
    object ClientDataSet2LeaderName: TStringField
      FieldName = 'Leader Name'
      Required = True
      Size = 45
    end
    object ClientDataSet2Member1Name: TStringField
      FieldName = 'Member1 Name'
      Required = True
      Size = 45
    end
    object ClientDataSet2Member2Name: TStringField
      FieldName = 'Member2 Name'
      Required = True
      Size = 45
    end
    object ClientDataSet2Member3Name: TStringField
      FieldName = 'Member3 Name'
      Required = True
      Size = 45
    end
    object ClientDataSet2Member4Name: TStringField
      FieldName = 'Member4 Name'
      Required = True
      Size = 45
    end
    object ClientDataSet2RequestDate: TStringField
      FieldName = 'RequestDate'
      Required = True
      Size = 15
    end
    object ClientDataSet2Amount: TIntegerField
      FieldName = 'Amount'
      Required = True
    end
    object ClientDataSet2Duration: TIntegerField
      FieldName = 'Duration'
      Required = True
    end
    object ClientDataSet2InterestRate: TIntegerField
      FieldName = 'InterestRate'
      Required = True
    end
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet2
    Left = 644
    Top = 420
  end
  object SQLQuery1: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM clientloanrequest where approved is null;')
    SQLConnection = MicrofinanceConnection
    Left = 540
    Top = 180
  end
  object SQLQuery2: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM grouploanrequest where approved is null;')
    SQLConnection = MicrofinanceConnection
    Left = 532
    Top = 340
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
    Left = 592
    Top = 111
  end
end
