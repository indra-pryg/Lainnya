object Form5: TForm5
  Left = 180
  Top = 321
  Width = 313
  Height = 395
  Caption = 'Form Input Dokter'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 281
    Height = 305
    Caption = ' FORM INPUT DATA DOKTER '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 63
      Height = 13
      Caption = 'Nama Dokter'
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 52
      Height = 13
      Caption = 'Ruang Poli'
    end
    object Label3: TLabel
      Left = 16
      Top = 88
      Width = 68
      Height = 13
      Caption = 'Hari Praktek 1'
    end
    object Label4: TLabel
      Left = 16
      Top = 120
      Width = 68
      Height = 13
      Caption = 'Jam Praktek 1'
    end
    object Label5: TLabel
      Left = 16
      Top = 152
      Width = 68
      Height = 13
      Caption = 'Hari Praktek 2'
    end
    object Label6: TLabel
      Left = 16
      Top = 184
      Width = 68
      Height = 13
      Caption = 'Jam Praktek 2'
    end
    object Label7: TLabel
      Left = 16
      Top = 216
      Width = 32
      Height = 13
      Caption = 'Alamat'
    end
    object Label8: TLabel
      Left = 16
      Top = 248
      Width = 68
      Height = 13
      Caption = 'Nomor Kontak'
    end
    object Edit1: TEdit
      Left = 112
      Top = 24
      Width = 145
      Height = 21
      TabOrder = 0
    end
    object ComboBox2: TComboBox
      Left = 112
      Top = 88
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Items.Strings = (
        'Senin'
        'Selasa'
        'Rabu'
        'Kamis'
        'Jum'#39'at'
        'Sabtu'
        'Minggu')
    end
    object ComboBox3: TComboBox
      Left = 112
      Top = 120
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'Pagi (09.00 - 12.00)'
        'Siang (12.00 - 15.00)'
        'Malam (18.00 - 21.00)')
    end
    object Edit6: TEdit
      Left = 112
      Top = 216
      Width = 145
      Height = 21
      TabOrder = 3
    end
    object Edit7: TEdit
      Left = 112
      Top = 248
      Width = 145
      Height = 21
      TabOrder = 4
    end
    object ComboBox4: TComboBox
      Left = 112
      Top = 152
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 5
      Items.Strings = (
        'Senin'
        'Selasa'
        'Rabu'
        'Kamis'
        'Jum'#39'at'
        'Sabtu'
        'Minggu')
    end
    object ComboBox5: TComboBox
      Left = 112
      Top = 184
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 6
      Items.Strings = (
        'Pagi (09.00 - 12.00)'
        'Siang (12.00 - 15.00)'
        'Malam (18.00 - 21.00)')
    end
    object ComboBox1: TComboBox
      Left = 112
      Top = 56
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 7
      Items.Strings = (
        'Poli Penyakit Dalam'
        'Poli Umum'
        'Poli Radiologi')
    end
  end
  object Button1: TButton
    Left = 24
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 112
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 200
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 3
    OnClick = Button3Click
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 136
    Top = 240
  end
  object Table2: TTable
    Active = True
    DatabaseName = 'db_dokter'
    TableName = 'tb_dokter.db'
    Left = 176
    Top = 240
  end
end
