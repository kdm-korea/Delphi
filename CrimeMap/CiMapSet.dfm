object FMapSet: TFMapSet
  Left = 0
  Top = 0
  Caption = 'Google Map Setting'
  ClientHeight = 128
  ClientWidth = 305
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 289
    Height = 113
    Caption = 'Setting'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 16
      Top = 23
      Width = 52
      Height = 17
      Caption = #9633' Traffic'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft JhengHei UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 78
      Width = 79
      Height = 17
      Caption = #9633' StreetView'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft JhengHei UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 16
      Top = 51
      Width = 68
      Height = 18
      Caption = #9633' Bicycling'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft JhengHei UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox2: TGroupBox
      Left = 100
      Top = 19
      Width = 177
      Height = 25
      TabOrder = 0
      object RadioButton1: TRadioButton
        Left = 10
        Top = 4
        Width = 76
        Height = 17
        Caption = 'On'
        TabOrder = 0
      end
      object RadioButton2: TRadioButton
        Left = 92
        Top = 5
        Width = 76
        Height = 17
        Caption = 'Off'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object GroupBox3: TGroupBox
      Left = 100
      Top = 47
      Width = 177
      Height = 25
      TabOrder = 1
      object RadioButton3: TRadioButton
        Left = 10
        Top = 3
        Width = 76
        Height = 17
        Caption = 'On'
        TabOrder = 0
      end
      object RadioButton4: TRadioButton
        Left = 92
        Top = 5
        Width = 76
        Height = 17
        Caption = 'Off'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object GroupBox4: TGroupBox
      Left = 100
      Top = 74
      Width = 177
      Height = 25
      TabOrder = 2
      object RadioButton5: TRadioButton
        Left = 10
        Top = 4
        Width = 76
        Height = 17
        Caption = 'On'
        TabOrder = 0
      end
      object RadioButton6: TRadioButton
        Left = 92
        Top = 5
        Width = 76
        Height = 17
        Caption = 'Off'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
  end
end
