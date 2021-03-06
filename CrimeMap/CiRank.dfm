object FRank: TFRank
  Left = 0
  Top = 0
  Caption = 'Product Management'
  ClientHeight = 285
  ClientWidth = 620
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = -1
    Width = 201
    Height = 280
    Caption = 'Rank Management'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 13
      Top = 86
      Width = 58
      Height = 16
      Caption = #44032'       '#44201
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 13
      Top = 28
      Width = 60
      Height = 16
      Caption = #51228#54408#51060#47492
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 13
      Top = 57
      Width = 60
      Height = 16
      Caption = #51228#54408#53076#46300
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
      Left = 14
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
      Caption = '&Cancel'
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
      Left = 14
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
    object DBEdit1: TDBEdit
      Left = 77
      Top = 23
      Width = 121
      Height = 26
      DataField = 'PRONAME'
      DataSource = DataSource1
      TabOrder = 7
    end
    object DBEdit2: TDBEdit
      Left = 77
      Top = 52
      Width = 121
      Height = 26
      DataField = 'PROCODE'
      DataSource = DataSource1
      TabOrder = 8
    end
    object DBEdit3: TDBEdit
      Left = 77
      Top = 81
      Width = 121
      Height = 26
      DataField = 'U_COST'
      DataSource = DataSource1
      TabOrder = 9
    end
  end
  object GroupBox2: TGroupBox
    Left = 214
    Top = 0
    Width = 403
    Height = 52
    Caption = 'Search && Sort'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Button8: TButton
      Left = 325
      Top = 18
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
      Left = 216
      Top = 18
      Width = 103
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'Sort'
      Items.Strings = (
        'Ascending'
        'Descending')
    end
    object RadioButton1: TRadioButton
      Left = 10
      Top = 20
      Width = 87
      Height = 17
      Caption = 'ProName'
      Checked = True
      TabOrder = 2
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 103
      Top = 20
      Width = 113
      Height = 17
      Caption = 'ProCode'
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid
    Left = 214
    Top = 58
    Width = 400
    Height = 221
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object MainMenu1: TMainMenu
    Left = 640
    Top = 25
    object ddd1: TMenuItem
      Caption = '&Setting'
      object MapSetting1: TMenuItem
        Caption = '&Map Setting'
        OnClick = MapSetting1Click
      end
      object ProgramSetting1: TMenuItem
        Caption = '&Program Setting'
      end
    end
    object N2: TMenuItem
      Caption = '&Help'
      object DevelopmentInfo1: TMenuItem
        Caption = '&Development Info'
        OnClick = DevelopmentInfo1Click
      end
      object ProgramInfo1: TMenuItem
        Caption = '&Program Info'
        OnClick = ProgramInfo1Click
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 640
    Top = 80
  end
  object ADOQuery1: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=user18c;Persist Security Info=True;U' +
      'ser ID=user18c;Data Source=CiDB'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from dbdiproductinfo;')
    Left = 640
    Top = 128
  end
end
