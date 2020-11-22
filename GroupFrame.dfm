object GroupFM: TGroupFM
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
      end>
    ControlCollection = <
      item
        Column = 0
        Control = GroupGrid
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
    object GroupGrid: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 54
      Width = 1223
      Height = 619
      Align = alClient
      DataSource = DataSource
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = GroupGridCellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'GroupID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Leader'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'leaderName'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Member_1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M1Name'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Member_2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M2Name'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Member_3'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M3Name'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Member_4'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M4Name'
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
          Column = 3
          Control = Label2
          Row = 0
        end
        item
          Column = 4
          Control = editSearch
          Row = 0
        end
        item
          Column = 5
          Control = btnSearch
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
        Text = 'Leader Name'
        Items.Strings = (
          'Leader Name'
          'Group ID'
          'Client Name'
          'Client ID')
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
      object editSearch: TEdit
        Left = 230
        Top = 14
        Width = 121
        Height = 21
        Anchors = []
        TabOrder = 1
        OnChange = editSearchChange
      end
      object btnSearch: TButton
        Left = 358
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Search'
        Enabled = False
        TabOrder = 2
        OnClick = btnSearchClick
      end
      object btnNew: TButton
        Left = 900
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'New'
        TabOrder = 3
        OnClick = btnNewClick
      end
      object btnEdit: TButton
        Left = 980
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Edit'
        Enabled = False
        TabOrder = 4
        OnClick = btnEditClick
      end
      object btnDelete: TButton
        Left = 1060
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Delete'
        Enabled = False
        TabOrder = 5
        OnClick = btnDeleteClick
      end
      object btnRefresh: TButton
        Left = 1140
        Top = 12
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Refresh'
        TabOrder = 6
        OnClick = btnRefreshClick
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
    Left = 869
    Top = 179
  end
  object SQLQuery: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from clientgroup')
    SQLConnection = MicrofinanceConnection
    Left = 872
    Top = 240
  end
  object DataSetProvider: TDataSetProvider
    DataSet = SQLQuery
    Left = 872
    Top = 312
  end
  object ClientDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider'
    Left = 872
    Top = 376
    object ClientDataSetGroupID: TStringField
      DisplayWidth = 12
      FieldName = 'GroupID'
      Required = True
      Size = 10
    end
    object ClientDataSetLeader: TStringField
      DisplayLabel = 'Leader ID'
      DisplayWidth = 12
      FieldName = 'Leader'
      Required = True
      Size = 10
    end
    object ClientDataSetleaderName: TStringField
      DisplayLabel = 'Leader Name'
      DisplayWidth = 20
      FieldName = 'leaderName'
      Required = True
      Size = 45
    end
    object ClientDataSetMember_1: TStringField
      DisplayLabel = 'Member_1 ID'
      DisplayWidth = 12
      FieldName = 'Member_1'
      Required = True
      Size = 10
    end
    object ClientDataSetM1Name: TStringField
      DisplayLabel = 'Member_1 Name'
      DisplayWidth = 20
      FieldName = 'M1Name'
      Required = True
      Size = 45
    end
    object ClientDataSetMember_2: TStringField
      DisplayLabel = 'Member_2 ID'
      DisplayWidth = 12
      FieldName = 'Member_2'
      Required = True
      Size = 10
    end
    object ClientDataSetM2Name: TStringField
      DisplayLabel = 'Member_2 Name'
      DisplayWidth = 20
      FieldName = 'M2Name'
      Required = True
      Size = 45
    end
    object ClientDataSetMember_3: TStringField
      DisplayLabel = 'Member_3 ID'
      DisplayWidth = 12
      FieldName = 'Member_3'
      Required = True
      Size = 10
    end
    object ClientDataSetM3Name: TStringField
      DisplayLabel = 'Member_3 Name'
      DisplayWidth = 20
      FieldName = 'M3Name'
      Required = True
      Size = 45
    end
    object ClientDataSetMember_4: TStringField
      DisplayLabel = 'Member_4 ID'
      DisplayWidth = 12
      FieldName = 'Member_4'
      Required = True
      Size = 10
    end
    object ClientDataSetM4Name: TStringField
      DisplayLabel = 'Member_4 Name'
      DisplayWidth = 20
      FieldName = 'M4Name'
      Required = True
      Size = 45
    end
  end
  object DataSource: TDataSource
    DataSet = ClientDataSet
    Left = 952
    Top = 424
  end
end
