object FDepartment: TFDepartment
  Left = 0
  Top = 0
  Caption = 'Department Management'
  ClientHeight = 285
  ClientWidth = 502
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = -1
    Width = 201
    Height = 280
    Caption = 'Department Management'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 13
      Top = 90
      Width = 60
      Height = 16
      Caption = #49688#51221#51068#51088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 13
      Top = 30
      Width = 60
      Height = 16
      Caption = #48512#49436#48264#54840
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 13
      Top = 59
      Width = 61
      Height = 16
      Caption = #48512'  '#49436'  '#47749
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn2: TBitBtn
      Left = 12
      Top = 235
      Width = 75
      Height = 27
      Caption = 'Delete'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 12
      Top = 193
      Width = 75
      Height = 27
      Caption = 'Refresh'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkRetry
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 15
      Top = 154
      Width = 75
      Height = 27
      Caption = '&Insert'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkAll
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 116
      Top = 193
      Width = 75
      Height = 27
      Caption = '&Close'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkIgnore
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn5Click
    end
    object BitBtn1: TBitBtn
      Left = 116
      Top = 154
      Width = 75
      Height = 27
      Caption = '&Save'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn1Click
    end
    object DBNavigator1: TDBNavigator
      Left = 15
      Top = 116
      Width = 176
      Height = 25
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 5
    end
    object BitBtn6: TBitBtn
      Left = 116
      Top = 235
      Width = 75
      Height = 27
      Caption = '&Exit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkClose
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 6
    end
    object DateTimePicker1: TDateTimePicker
      Left = 87
      Top = 84
      Width = 103
      Height = 26
      Date = 43047.041183888890000000
      Time = 43047.041183888890000000
      TabOrder = 7
    end
    object DBEdit1: TDBEdit
      Left = 87
      Top = 27
      Width = 103
      Height = 26
      DataField = 'DEPTCODE'
      DataSource = DataSource1
      TabOrder = 8
    end
    object DBEdit2: TDBEdit
      Left = 87
      Top = 55
      Width = 103
      Height = 26
      DataField = 'GROUP'
      DataSource = DataSource1
      TabOrder = 9
    end
  end
  object GroupBox2: TGroupBox
    Left = 214
    Top = 2
    Width = 283
    Height = 57
    Caption = 'Sort'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Button8: TButton
      Left = 199
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Sort'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button8Click
    end
    object ComboBox1: TComboBox
      Left = 6
      Top = 21
      Width = 190
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'Sorting'
      Items.Strings = (
        'Ascending'
        'Descending')
    end
  end
  object DBGrid1: TDBGrid
    Left = 214
    Top = 58
    Width = 283
    Height = 221
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object MainMenu1: TMainMenu
    Left = 520
    Top = 137
    object ddd1: TMenuItem
      Caption = '&Setting'
      object MapSetting1: TMenuItem
        Caption = '&Map Setting'
      end
      object ProgramSetting1: TMenuItem
        Caption = '&Program Setting'
      end
    end
    object N2: TMenuItem
      Caption = '&Help'
      object DevelopmentInfo1: TMenuItem
        Caption = '&Development Info'
      end
      object ProgramInfo1: TMenuItem
        Caption = '&Program Info'
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 520
    Top = 32
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=user18c;Persist Security Info=True;U' +
      'ser ID=user18c;Data Source=CiDB'
    CursorType = ctStatic
    TableName = 'DBDepartment'
    Left = 520
    Top = 88
  end
  object ADOQuery1: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=user18c;Persist Security Info=True;U' +
      'ser ID=user18c;Data Source=CiDB'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from DBDepartment;')
    Left = 520
    Top = 200
  end
end
