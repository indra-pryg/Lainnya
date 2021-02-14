object Form1: TForm1
  Left = 390
  Top = 110
  Caption = 'ANN Function'
  ClientHeight = 543
  ClientWidth = 840
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 298
    Top = 8
    Width = 343
    Height = 250
    Legend.Visible = False
    Title.Text.Strings = (
      'Grafik MSE Output')
    BottomAxis.LabelsFormat.TextAlignment = taCenter
    DepthAxis.LabelsFormat.TextAlignment = taCenter
    DepthTopAxis.LabelsFormat.TextAlignment = taCenter
    LeftAxis.LabelsFormat.TextAlignment = taCenter
    RightAxis.LabelsFormat.TextAlignment = taCenter
    TopAxis.LabelsFormat.TextAlignment = taCenter
    Zoom.Pen.Mode = pmNotXor
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series2: TFastLineSeries
      Marks.Visible = False
      LinePen.Color = 3513587
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      object TeeFunction1: TAverageTeeFunction
        CalcByValue = False
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 284
    Height = 250
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 27
      Width = 67
      Height = 13
      Caption = 'Error Refrensi'
    end
    object Label2: TLabel
      Left = 24
      Top = 54
      Width = 24
      Height = 13
      Caption = 'Error'
    end
    object Edit1: TEdit
      Left = 120
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 120
      Top = 51
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 120
      Top = 78
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 120
      Top = 105
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object GroupBox2: TGroupBox
      Left = 3
      Top = 78
      Width = 278
      Height = 169
      TabOrder = 4
      object Label5: TLabel
        Left = 21
        Top = 16
        Width = 16
        Height = 13
        Caption = 'W1'
      end
      object Label6: TLabel
        Left = 18
        Top = 63
        Width = 16
        Height = 13
        Caption = 'W2'
      end
      object Label9: TLabel
        Left = 140
        Top = 63
        Width = 16
        Height = 13
        Caption = 'W4'
      end
      object Label10: TLabel
        Left = 139
        Top = 16
        Width = 16
        Height = 13
        Caption = 'W3'
      end
      object Label11: TLabel
        Left = 6
        Top = 118
        Width = 31
        Height = 13
        Caption = 'Iterasi'
      end
      object Label12: TLabel
        Left = 135
        Top = 118
        Width = 22
        Height = 13
        Caption = 'Teta'
      end
      object Edit5: TEdit
        Left = 43
        Top = 16
        Width = 85
        Height = 21
        TabOrder = 0
      end
      object Edit6: TEdit
        Left = 40
        Top = 67
        Width = 85
        Height = 21
        TabOrder = 1
      end
      object Edit7: TEdit
        Left = 162
        Top = 67
        Width = 85
        Height = 21
        TabOrder = 2
      end
      object Edit8: TEdit
        Left = 161
        Top = 16
        Width = 85
        Height = 21
        TabOrder = 3
      end
      object Edit9: TEdit
        Left = 43
        Top = 118
        Width = 85
        Height = 21
        TabOrder = 4
      end
      object Edit10: TEdit
        Left = 163
        Top = 118
        Width = 83
        Height = 21
        TabOrder = 5
      end
    end
  end
  object GroupBox4: TGroupBox
    Left = 647
    Top = 347
    Width = 185
    Height = 113
    Caption = 'Pilihan Gerbang Logika'
    TabOrder = 2
    object RadioButton1: TRadioButton
      Left = 24
      Top = 24
      Width = 113
      Height = 17
      Caption = 'OR'
      TabOrder = 0
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 24
      Top = 47
      Width = 113
      Height = 17
      Caption = 'AND'
      TabOrder = 1
      OnClick = RadioButton2Click
    end
    object RadioButton3: TRadioButton
      Left = 24
      Top = 70
      Width = 113
      Height = 17
      Caption = 'EX-XOR'
      TabOrder = 2
      OnClick = RadioButton3Click
    end
  end
  object Button1: TButton
    Left = 647
    Top = 489
    Width = 185
    Height = 25
    Caption = 'Test'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 647
    Top = 466
    Width = 185
    Height = 25
    Caption = 'Proses'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 647
    Top = 512
    Width = 185
    Height = 25
    Caption = 'Keluar'
    TabOrder = 5
    OnClick = Button3Click
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 264
    Width = 633
    Height = 271
    Caption = 'Tabel Kebenaran'
    TabOrder = 6
    object Label7: TLabel
      Left = 21
      Top = 32
      Width = 12
      Height = 13
      Caption = 'X1'
    end
    object Label8: TLabel
      Left = 21
      Top = 72
      Width = 12
      Height = 13
      Caption = 'X2'
    end
    object Label13: TLabel
      Left = 21
      Top = 112
      Width = 12
      Height = 13
      Caption = 'X3'
    end
    object Label14: TLabel
      Left = 21
      Top = 152
      Width = 12
      Height = 13
      Caption = 'X4'
    end
    object Label16: TLabel
      Left = 85
      Top = 152
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label17: TLabel
      Left = 120
      Top = 152
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label18: TLabel
      Left = 158
      Top = 152
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label19: TLabel
      Left = 190
      Top = 152
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label25: TLabel
      Left = 258
      Top = 152
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label26: TLabel
      Left = 296
      Top = 152
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label27: TLabel
      Left = 328
      Top = 152
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label28: TLabel
      Left = 366
      Top = 152
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label29: TLabel
      Left = 398
      Top = 152
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label30: TLabel
      Left = 223
      Top = 152
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label31: TLabel
      Left = 433
      Top = 152
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label32: TLabel
      Left = 468
      Top = 152
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label33: TLabel
      Left = 501
      Top = 152
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label34: TLabel
      Left = 536
      Top = 152
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label35: TLabel
      Left = 574
      Top = 152
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label15: TLabel
      Left = 608
      Top = 152
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label36: TLabel
      Left = 85
      Top = 112
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label37: TLabel
      Left = 120
      Top = 112
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label38: TLabel
      Left = 158
      Top = 112
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label39: TLabel
      Left = 190
      Top = 112
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label44: TLabel
      Left = 223
      Top = 112
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label45: TLabel
      Left = 258
      Top = 112
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label46: TLabel
      Left = 296
      Top = 112
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label47: TLabel
      Left = 328
      Top = 112
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label48: TLabel
      Left = 366
      Top = 112
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label49: TLabel
      Left = 398
      Top = 112
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label50: TLabel
      Left = 433
      Top = 112
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label51: TLabel
      Left = 468
      Top = 112
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label52: TLabel
      Left = 501
      Top = 112
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label53: TLabel
      Left = 536
      Top = 112
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label54: TLabel
      Left = 574
      Top = 112
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label55: TLabel
      Left = 608
      Top = 112
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label56: TLabel
      Left = 85
      Top = 72
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label57: TLabel
      Left = 120
      Top = 72
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label58: TLabel
      Left = 158
      Top = 72
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label59: TLabel
      Left = 190
      Top = 72
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label60: TLabel
      Left = 223
      Top = 72
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label61: TLabel
      Left = 258
      Top = 72
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label62: TLabel
      Left = 296
      Top = 72
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label63: TLabel
      Left = 328
      Top = 72
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label64: TLabel
      Left = 366
      Top = 72
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label65: TLabel
      Left = 398
      Top = 72
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label66: TLabel
      Left = 433
      Top = 72
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label67: TLabel
      Left = 468
      Top = 72
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label68: TLabel
      Left = 501
      Top = 72
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label69: TLabel
      Left = 536
      Top = 72
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label70: TLabel
      Left = 574
      Top = 72
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label71: TLabel
      Left = 608
      Top = 72
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label72: TLabel
      Left = 85
      Top = 32
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label73: TLabel
      Left = 120
      Top = 32
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label74: TLabel
      Left = 158
      Top = 32
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label75: TLabel
      Left = 190
      Top = 32
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label76: TLabel
      Left = 223
      Top = 32
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label77: TLabel
      Left = 258
      Top = 32
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label78: TLabel
      Left = 296
      Top = 32
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label79: TLabel
      Left = 328
      Top = 32
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label80: TLabel
      Left = 363
      Top = 32
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label81: TLabel
      Left = 398
      Top = 32
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label82: TLabel
      Left = 433
      Top = 32
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label83: TLabel
      Left = 468
      Top = 32
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label84: TLabel
      Left = 501
      Top = 32
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label85: TLabel
      Left = 536
      Top = 32
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label86: TLabel
      Left = 574
      Top = 32
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label87: TLabel
      Left = 608
      Top = 32
      Width = 6
      Height = 13
      Caption = '1'
    end
    object TLabel
      Left = 296
      Top = 184
      Width = 3
      Height = 13
    end
    object Label20: TLabel
      Left = 260
      Top = 240
      Width = 4
      Height = 13
      Caption = '-'
    end
    object Label21: TLabel
      Left = 295
      Top = 240
      Width = 4
      Height = 13
      Caption = '-'
    end
    object Label22: TLabel
      Left = 330
      Top = 240
      Width = 4
      Height = 13
      Caption = '-'
    end
    object Label23: TLabel
      Left = 368
      Top = 240
      Width = 4
      Height = 13
      Caption = '-'
    end
    object Label24: TLabel
      Left = 400
      Top = 240
      Width = 4
      Height = 13
      Caption = '-'
    end
    object Label40: TLabel
      Left = 433
      Top = 240
      Width = 4
      Height = 13
      Caption = '-'
    end
    object Label41: TLabel
      Left = 470
      Top = 240
      Width = 4
      Height = 13
      Caption = '-'
    end
    object Label42: TLabel
      Left = 503
      Top = 240
      Width = 4
      Height = 13
      Caption = '-'
    end
    object Label43: TLabel
      Left = 536
      Top = 240
      Width = 4
      Height = 13
      Caption = '-'
    end
    object Label88: TLabel
      Left = 574
      Top = 240
      Width = 4
      Height = 13
      Caption = '-'
    end
    object Label90: TLabel
      Left = 608
      Top = 240
      Width = 4
      Height = 13
      Caption = '-'
    end
    object Label96: TLabel
      Left = 85
      Top = 240
      Width = 4
      Height = 13
      Caption = '-'
    end
    object Label97: TLabel
      Left = 120
      Top = 240
      Width = 4
      Height = 13
      Caption = '-'
    end
    object Label98: TLabel
      Left = 158
      Top = 240
      Width = 4
      Height = 13
      Caption = '-'
    end
    object Label99: TLabel
      Left = 190
      Top = 240
      Width = 4
      Height = 13
      Caption = '-'
    end
    object Label100: TLabel
      Left = 223
      Top = 240
      Width = 4
      Height = 13
      Caption = '-'
    end
    object Label112: TLabel
      Left = 21
      Top = 240
      Width = 32
      Height = 13
      Caption = 'Target'
    end
  end
  object GroupBox5: TGroupBox
    Left = 647
    Top = 8
    Width = 185
    Height = 333
    Caption = 'Y (Output)'
    TabOrder = 7
    object Label89: TLabel
      Left = 16
      Top = 27
      Width = 14
      Height = 13
      Caption = 'O1'
    end
    object Label91: TLabel
      Left = 16
      Top = 46
      Width = 14
      Height = 13
      Caption = 'O2'
    end
    object Label92: TLabel
      Left = 16
      Top = 65
      Width = 14
      Height = 13
      Caption = 'O3'
    end
    object Label93: TLabel
      Left = 16
      Top = 84
      Width = 14
      Height = 13
      Caption = 'O4'
    end
    object Label94: TLabel
      Left = 16
      Top = 103
      Width = 14
      Height = 13
      Caption = 'O5'
    end
    object Label95: TLabel
      Left = 16
      Top = 122
      Width = 14
      Height = 13
      Caption = 'O6'
    end
    object Label101: TLabel
      Left = 16
      Top = 141
      Width = 14
      Height = 13
      Caption = 'O7'
    end
    object Label102: TLabel
      Left = 16
      Top = 160
      Width = 14
      Height = 13
      Caption = 'O8'
    end
    object Label103: TLabel
      Left = 16
      Top = 179
      Width = 14
      Height = 13
      Caption = 'O9'
    end
    object Label104: TLabel
      Left = 16
      Top = 198
      Width = 20
      Height = 13
      Caption = 'O10'
    end
    object Label105: TLabel
      Left = 16
      Top = 217
      Width = 20
      Height = 13
      Caption = 'O11'
    end
    object Label106: TLabel
      Left = 16
      Top = 236
      Width = 20
      Height = 13
      Caption = 'O12'
    end
    object Label107: TLabel
      Left = 16
      Top = 255
      Width = 20
      Height = 13
      Caption = 'O13'
    end
    object Label108: TLabel
      Left = 16
      Top = 274
      Width = 20
      Height = 13
      Caption = 'O14'
    end
    object Label109: TLabel
      Left = 16
      Top = 293
      Width = 20
      Height = 13
      Caption = 'O15'
    end
    object Label110: TLabel
      Left = 16
      Top = 312
      Width = 20
      Height = 13
      Caption = 'O16'
    end
  end
end
