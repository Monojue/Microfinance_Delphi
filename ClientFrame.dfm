object ClientFM: TClientFM
  Left = 0
  Top = 0
  Width = 1231
  Height = 677
  Color = clWindow
  ParentBackground = False
  ParentColor = False
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
      end>
    ControlCollection = <
      item
        Column = 0
        Control = clientGrid
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
    object clientGrid: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 54
      Width = 1223
      Height = 619
      Align = alClient
      DataSource = DataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = clientGridCellClick
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
          Control = ComboBox1
          Row = 0
        end
        item
          Column = 3
          Control = Label2
          Row = 0
        end
        item
          Column = 4
          Control = Edit2
          Row = 0
        end
        item
          Column = 7
          Control = btnNew
          Row = 0
        end
        item
          Column = 8
          Control = btnEdit
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
      object ComboBox1: TComboBox
        Left = 85
        Top = 14
        Width = 112
        Height = 21
        Anchors = []
        TabOrder = 0
        Text = 'ComboBox1'
      end
      object Label2: TLabel
        Left = 205
        Top = 18
        Width = 16
        Height = 13
        Anchors = []
        Caption = 'CL-'
        ExplicitLeft = 201
        ExplicitTop = 6
      end
      object Edit2: TEdit
        Left = 230
        Top = 14
        Width = 121
        Height = 21
        Anchors = []
        TabOrder = 1
        Text = 'Edit2'
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
        ExplicitLeft = 979
      end
      object btnEdit: TButton
        Left = 980
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Edit'
        Enabled = False
        TabOrder = 3
        OnClick = btnEditClick
        ExplicitLeft = 1060
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
        ExplicitLeft = 1140
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
        ExplicitLeft = 917
      end
      object btnSearch: TButton
        Left = 358
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Search'
        TabOrder = 6
        OnClick = btnSearchClick
        ExplicitLeft = 391
      end
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
    Left = 834
    Top = 137
  end
  object ClientTable: TSQLDataSet
    Active = True
    CommandText = 'client'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = MicrofinanceConnection
    Left = 834
    Top = 185
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = ClientTable
    Left = 720
    Top = 240
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 864
    Top = 320
    object ClientDataSet1ClientID: TStringField
      FieldName = 'ClientID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object ClientDataSet1Name: TStringField
      FieldName = 'Name'
      Required = True
      Size = 45
    end
    object ClientDataSet1NRC: TStringField
      FieldName = 'NRC'
      Size = 45
    end
    object ClientDataSet1Address: TStringField
      FieldName = 'Address'
      Required = True
      Size = 100
    end
    object ClientDataSet1Phone: TStringField
      FieldName = 'Phone'
      Required = True
      Size = 45
    end
    object ClientDataSet1DateOfBirth: TStringField
      FieldName = 'DateOfBirth'
      Required = True
    end
    object ClientDataSet1Home: TStringField
      FieldName = 'Home'
      Required = True
      Size = 10
    end
    object ClientDataSet1Job: TStringField
      FieldName = 'Job'
      Required = True
      Size = 45
    end
    object ClientDataSet1Salary: TIntegerField
      FieldName = 'Salary'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 992
    Top = 304
  end
  object SQLQuery1: TSQLQuery
    Active = True
    DataSource = DataSource1
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from client')
    SQLConnection = MicrofinanceConnection
    Left = 776
    Top = 336
  end
end
