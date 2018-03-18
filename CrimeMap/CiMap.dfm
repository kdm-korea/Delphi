object FMap: TFMap
  Left = 0
  Top = 0
  Caption = 'FMap'
  ClientHeight = 300
  ClientWidth = 635
  Color = clBtnFace
  DragKind = dkDock
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  DesignSize = (
    635
    300)
  PixelsPerInch = 96
  TextHeight = 13
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 0
    Width = 635
    Height = 300
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = 8
    ControlData = {
      4C000000A1410000021F00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object BitBtn1: TBitBtn
    Left = 594
    Top = 8
    Width = 33
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '&'
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
