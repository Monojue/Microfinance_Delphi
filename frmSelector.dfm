object MySelector: TMySelector
  Left = 0
  Top = 0
  Caption = 'Selector'
  ClientHeight = 520
  ClientWidth = 710
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 692
    Height = 41
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 14
      Width = 65
      Height = 13
      Caption = 'Search With :'
    end
    object ComboBox1: TComboBox
      Left = 93
      Top = 11
      Width = 76
      Height = 21
      TabOrder = 0
      Text = 'ComboBox1'
    end
    object Edit1: TEdit
      Left = 175
      Top = 11
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'Edit1'
    end
    object btnSearch: TButton
      Left = 302
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Search'
      TabOrder = 2
    end
  end
  object btnNew: TButton
    Left = 625
    Top = 64
    Width = 75
    Height = 25
    Caption = 'New'
    TabOrder = 1
    OnClick = btnNewClick
  end
  object btnOK: TButton
    Left = 625
    Top = 103
    Width = 75
    Height = 25
    Caption = 'OK'
    Enabled = False
    TabOrder = 2
    OnClick = btnOKClick
  end
  object DBGrid: TDBGrid
    Left = 8
    Top = 55
    Width = 611
    Height = 457
    DataSource = GroupDataSource
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGridCellClick
  end
  object btnRefresh: TButton
    Left = 627
    Top = 143
    Width = 75
    Height = 25
    Caption = 'Refresh'
    Enabled = False
    TabOrder = 4
    OnClick = btnRefreshClick
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
    Left = 372
    Top = 137
  end
  object CQuery: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from client')
    SQLConnection = MicrofinanceConnection
    Left = 320
    Top = 192
  end
  object Cprovider: TDataSetProvider
    DataSet = CQuery
    Left = 320
    Top = 256
  end
  object ClientDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Cprovider'
    Left = 320
    Top = 328
    object ClientDataSetClientID: TStringField
      DisplayWidth = 15
      FieldName = 'ClientID'
      Required = True
      Size = 10
    end
    object ClientDataSetName: TStringField
      DisplayWidth = 20
      FieldName = 'Name'
      Required = True
      Size = 45
    end
    object ClientDataSetNRC: TStringField
      DisplayWidth = 25
      FieldName = 'NRC'
      Size = 45
    end
    object ClientDataSetAddress: TStringField
      DisplayWidth = 55
      FieldName = 'Address'
      Required = True
      Size = 100
    end
    object ClientDataSetPhone: TStringField
      DisplayWidth = 15
      FieldName = 'Phone'
      Required = True
      Size = 45
    end
    object ClientDataSetDateOfBirth: TStringField
      DisplayWidth = 15
      FieldName = 'DateOfBirth'
      Required = True
    end
    object ClientDataSetHome: TStringField
      DisplayWidth = 15
      FieldName = 'Home'
      Required = True
      Size = 10
    end
    object ClientDataSetJob: TStringField
      DisplayWidth = 20
      FieldName = 'Job'
      Required = True
      Size = 45
    end
    object ClientDataSetSalary: TIntegerField
      DisplayWidth = 20
      FieldName = 'Salary'
      Required = True
    end
  end
  object ClientDataSource: TDataSource
    DataSet = ClientDataSet
    Left = 320
    Top = 408
  end
  object GroupDataSet: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Gprovider'
    Left = 440
    Top = 328
    object GroupDataSetGroupID: TStringField
      DisplayWidth = 15
      FieldName = 'GroupID'
      Required = True
      Size = 10
    end
    object GroupDataSetLeader: TStringField
      DisplayWidth = 15
      FieldName = 'Leader'
      Required = True
      Size = 10
    end
    object GroupDataSetleaderName: TStringField
      DisplayWidth = 15
      FieldName = 'leaderName'
      Required = True
      Size = 45
    end
    object GroupDataSetMember_1: TStringField
      DisplayWidth = 15
      FieldName = 'Member_1'
      Required = True
      Size = 10
    end
    object GroupDataSetM1Name: TStringField
      DisplayWidth = 15
      FieldName = 'M1Name'
      Required = True
      Size = 45
    end
    object GroupDataSetMember_2: TStringField
      DisplayWidth = 15
      FieldName = 'Member_2'
      Required = True
      Size = 10
    end
    object GroupDataSetM2Name: TStringField
      DisplayWidth = 15
      FieldName = 'M2Name'
      Required = True
      Size = 45
    end
    object GroupDataSetMember_3: TStringField
      DisplayWidth = 15
      FieldName = 'Member_3'
      Required = True
      Size = 10
    end
    object GroupDataSetM3Name: TStringField
      DisplayWidth = 15
      FieldName = 'M3Name'
      Required = True
      Size = 45
    end
    object GroupDataSetMember_4: TStringField
      DisplayWidth = 15
      FieldName = 'Member_4'
      Required = True
      Size = 10
    end
    object GroupDataSetM4Name: TStringField
      DisplayWidth = 15
      FieldName = 'M4Name'
      Required = True
      Size = 45
    end
  end
  object GroupDataSource: TDataSource
    DataSet = GroupDataSet
    Left = 440
    Top = 408
  end
  object Gprovider: TDataSetProvider
    DataSet = GQuery
    Left = 440
    Top = 256
  end
  object GQuery: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from clientgroup')
    SQLConnection = MicrofinanceConnection
    Left = 440
    Top = 192
  end
end
