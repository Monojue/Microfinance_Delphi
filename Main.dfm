object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 677
  ClientWidth = 1231
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1231
    Height = 677
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = '                CLIENT             '
      inline TClientFM1: TClientFM
        Left = 0
        Top = 0
        Width = 1223
        Height = 649
        Align = alClient
        Color = clWindow
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        ExplicitLeft = 184
        ExplicitTop = 240
        inherited GridPanel1: TGridPanel
          Left = 0
          Top = 0
          Width = 1223
          Height = 649
          Align = alClient
          ColumnCollection = <
            item
              Value = 100.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = TClientFM1.clientGrid
              Row = 1
            end
            item
              Column = 0
              Control = TClientFM1.GridPanel2
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
          object clientGrid: TDBGrid [0]
            AlignWithMargins = True
            Left = 4
            Top = 54
            Width = 1215
            Height = 591
            Align = alClient
            DataSource = TClientFM1.DataSource1
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
          inherited GridPanel2: TGridPanel [1]
            Left = 1
            Top = 1
            Width = 1221
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
                Control = TClientFM1.Label1
                Row = 0
              end
              item
                Column = 2
                Control = TClientFM1.ComboBox1
                Row = 0
              end
              item
                Column = 3
                Control = TClientFM1.Label2
                Row = 0
              end
              item
                Column = 4
                Control = TClientFM1.Edit2
                Row = 0
              end
              item
                Column = 7
                Control = TClientFM1.btnNew
                Row = 0
              end
              item
                Column = 8
                Control = TClientFM1.btnEdit
                Row = 0
              end
              item
                Column = 9
                Control = TClientFM1.btnDelete
                Row = 0
              end
              item
                Column = 10
                Control = TClientFM1.btnRefresh
                Row = 0
              end
              item
                Column = 5
                Control = TClientFM1.btnSearch
                Row = 0
              end>
            RowCollection = <
              item
                Value = 100.000000000000000000
              end>
            TabOrder = 1
            inherited Label1: TLabel
              Left = 12
              Top = 18
              Width = 68
              Height = 13
              Anchors = []
              Caption = 'Search With : '
            end
            inherited ComboBox1: TComboBox
              Left = 85
              Top = 14
              Width = 112
              Height = 21
              Anchors = []
              TabOrder = 0
              Text = 'ComboBox1'
              Items.Strings = ()
            end
            inherited Label2: TLabel
              Left = 205
              Top = 18
              Width = 16
              Height = 13
              Anchors = []
              Caption = 'CL-'
            end
            inherited Edit2: TEdit
              Left = 230
              Top = 14
              Width = 121
              Height = 21
              Anchors = []
              TabOrder = 1
              Text = 'Edit2'
            end
            inherited btnNew: TButton [4]
              Left = 892
              Top = 12
              Width = 75
              Height = 25
              Anchors = []
              Caption = 'New'
              TabOrder = 2
              ExplicitLeft = 900
            end
            inherited btnEdit: TButton [5]
              Left = 972
              Top = 12
              Width = 75
              Height = 25
              Anchors = []
              Caption = 'Edit'
              Enabled = False
              TabOrder = 3
              ExplicitLeft = 980
            end
            inherited btnDelete: TButton [6]
              Left = 1052
              Top = 12
              Width = 75
              Height = 25
              Anchors = []
              Caption = 'Delete'
              Enabled = False
              TabOrder = 4
              ExplicitLeft = 1060
            end
            object btnRefresh: TButton [7]
              Left = 1132
              Top = 12
              Width = 75
              Height = 25
              Anchors = []
              Caption = 'Refresh'
              TabOrder = 5
              ExplicitLeft = 1140
            end
            inherited btnSearch: TButton [8]
              Left = 358
              Top = 12
              Width = 75
              Height = 25
              Anchors = []
              Caption = 'Search'
              TabOrder = 6
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
          SQLConnection = TClientFM1.MicrofinanceConnection
          Left = 834
          Top = 185
        end
        object DataSetProvider1: TDataSetProvider
          DataSet = TClientFM1.ClientTable
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
          DataSet = TClientFM1.ClientDataSet1
          Left = 992
          Top = 304
        end
        object SQLQuery1: TSQLQuery
          Active = True
          DataSource = TClientFM1.DataSource1
          MaxBlobSize = -1
          Params = <>
          SQL.Strings = (
            'Select * from client')
          SQLConnection = TClientFM1.MicrofinanceConnection
          Left = 776
          Top = 336
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = '               GROUP             '
      ImageIndex = 1
      inline TGroupFM1: TGroupFM
        Left = 0
        Top = 0
        Width = 1223
        Height = 649
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1223
        ExplicitHeight = 649
        inherited GridPanel1: TGridPanel
          Width = 1223
          Height = 649
          ControlCollection = <
            item
              Column = 0
              Control = TGroupFM1.DBGrid1
              Row = 1
            end
            item
              Column = 0
              Control = TGroupFM1.GridPanel2
              Row = 0
            end>
          ExplicitWidth = 1223
          ExplicitHeight = 649
          inherited DBGrid1: TDBGrid
            Width = 1215
            Height = 591
            Columns = <
              item
                Expanded = False
                FieldName = 'GroupID'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Leader'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'leaderName'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Member_1'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'M1Name'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Member_2'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'M2Name'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Member_3'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'M3Name'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Member_4'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'M4Name'
                Width = 150
                Visible = True
              end>
          end
          inherited GridPanel2: TGridPanel
            Width = 1221
            ControlCollection = <
              item
                Column = 1
                Control = TGroupFM1.Label1
                Row = 0
              end
              item
                Column = 2
                Control = TGroupFM1.ComboBox1
                Row = 0
              end
              item
                Column = 3
                Control = TGroupFM1.Label2
                Row = 0
              end
              item
                Column = 4
                Control = TGroupFM1.Edit2
                Row = 0
              end
              item
                Column = 5
                Control = TGroupFM1.btnSearch
                Row = 0
              end
              item
                Column = 7
                Control = TGroupFM1.btnNew
                Row = 0
              end
              item
                Column = 8
                Control = TGroupFM1.btnEdit
                Row = 0
              end
              item
                Column = 9
                Control = TGroupFM1.btnDelete
                Row = 0
              end>
            ExplicitWidth = 1221
            inherited btnNew: TButton
              Left = 972
              ExplicitLeft = 972
            end
            inherited btnEdit: TButton
              Left = 1052
              ExplicitLeft = 1052
            end
            inherited btnDelete: TButton
              Left = 1132
              ExplicitLeft = 1132
            end
          end
        end
      end
    end
  end
end
