object FGraph: TFGraph
  Left = 0
  Top = 0
  Caption = 'Graph'
  ClientHeight = 344
  ClientWidth = 814
  Color = clBtnFace
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBChart1: TDBChart
    Left = 0
    Top = 0
    Width = 814
    Height = 344
    Title.Text.Strings = (
      'TDBChart')
    Title.Visible = False
    View3D = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 580
    ExplicitWidth = 418
    ExplicitHeight = 400
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 7
    object Series1: TBarSeries
      Selected.Hover.Visible = False
      Active = False
      BarPen.Color = 6724095
      ColorEachPoint = True
      Marks.Visible = False
      Marks.Callout.Length = 8
      DataSource = DBCrossTabSource1
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
      object TeeFunction1: TSubtractTeeFunction
        CalcByValue = False
      end
    end
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=user18c;Persist Security Info=True;U' +
      'ser ID=user18c;Data Source=CiDB'
    CursorType = ctStatic
    TableName = 'DBPePersonInfo'
    Left = 24
    Top = 16
  end
  object DBCrossTabSource1: TDBCrossTabSource
    Active = True
    Formula = gfCount
    GroupField = 'STATE'
    LabelField = 'RANK'
    Series = Series1
    ValueField = 'EM_NO'
    DataSet = ADOTable1
  end
end
