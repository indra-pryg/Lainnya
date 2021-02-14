object Form2: TForm2
  Left = 1022
  Top = 218
  Width = 315
  Height = 492
  Caption = 'Registrasi Data Pasien'
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
    Height = 401
    Caption = ' FORM REGISTRASI DATA PASIEN '
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
      Width = 80
      Height = 13
      Caption = 'Nomor Registrasi'
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 28
      Height = 13
      Caption = 'Nama'
    end
    object Label3: TLabel
      Left = 16
      Top = 88
      Width = 69
      Height = 13
      Caption = 'Kota Kelahiran'
    end
    object Label4: TLabel
      Left = 16
      Top = 120
      Width = 65
      Height = 13
      Caption = 'Tanggal Lahir'
    end
    object Label5: TLabel
      Left = 16
      Top = 152
      Width = 64
      Height = 13
      Caption = 'Jenis Kelamin'
    end
    object Label6: TLabel
      Left = 16
      Top = 184
      Width = 78
      Height = 13
      Caption = 'Golongan Darah'
    end
    object Label7: TLabel
      Left = 16
      Top = 216
      Width = 25
      Height = 13
      Caption = 'Umur'
    end
    object Label8: TLabel
      Left = 16
      Top = 248
      Width = 48
      Height = 13
      Caption = 'Pekerjaan'
    end
    object Label9: TLabel
      Left = 16
      Top = 280
      Width = 89
      Height = 13
      Caption = 'Status Perkawinan'
    end
    object Label10: TLabel
      Left = 16
      Top = 312
      Width = 32
      Height = 13
      Caption = 'Alamat'
    end
    object Label11: TLabel
      Left = 16
      Top = 344
      Width = 68
      Height = 13
      Caption = 'Nomer Kontak'
    end
    object Label12: TLabel
      Left = 224
      Top = 216
      Width = 31
      Height = 13
      Caption = 'Tahun'
    end
    object Edit1: TEdit
      Left = 112
      Top = 24
      Width = 145
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 112
      Top = 56
      Width = 145
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 112
      Top = 88
      Width = 145
      Height = 21
      TabOrder = 2
    end
    object ComboBox2: TComboBox
      Left = 112
      Top = 152
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      Items.Strings = (
        'Pria'
        'Wanita')
    end
    object ComboBox3: TComboBox
      Left = 112
      Top = 184
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 4
      Items.Strings = (
        'A'
        'B'
        'AB'
        'O')
    end
    object Edit4: TEdit
      Left = 112
      Top = 216
      Width = 105
      Height = 21
      TabOrder = 5
    end
    object Edit5: TEdit
      Left = 112
      Top = 248
      Width = 145
      Height = 21
      TabOrder = 6
    end
    object Edit6: TEdit
      Left = 112
      Top = 312
      Width = 145
      Height = 21
      TabOrder = 7
    end
    object Edit7: TEdit
      Left = 112
      Top = 344
      Width = 145
      Height = 21
      TabOrder = 8
    end
    object ComboBox4: TComboBox
      Left = 112
      Top = 280
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 9
      Items.Strings = (
        'Belum Menikah'
        'Sudah Menikah')
    end
    object DateTimePicker1: TDateTimePicker
      Left = 112
      Top = 120
      Width = 145
      Height = 21
      Date = 42690.023171342590000000
      Time = 42690.023171342590000000
      TabOrder = 10
    end
  end
  object Button3: TButton
    Left = 200
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 1
    OnClick = Button3Click
  end
  object Button2: TButton
    Left = 112
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 24
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 3
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 160
    Top = 376
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'db_pasien'
    TableName = 'tb_pasien.db'
    Left = 128
    Top = 376
  end
end
