object LoanFM: TLoanFM
  Left = 0
  Top = 0
  Width = 1231
  Height = 677
  TabOrder = 0
  object Panel1: TPanel
    Left = 3
    Top = 3
    Width = 1225
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
    object btnNew: TButton
      Left = 974
      Top = 9
      Width = 75
      Height = 25
      Caption = 'New'
      TabOrder = 3
    end
    object btnEdit: TButton
      Left = 1055
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 4
    end
    object btnDelete: TButton
      Left = 1136
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Delete'
      TabOrder = 5
    end
  end
  object StringGrid1: TStringGrid
    Left = 3
    Top = 50
    Width = 1225
    Height = 624
    TabOrder = 1
  end
end
