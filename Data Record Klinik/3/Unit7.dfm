object Form7: TForm7
  Left = 236
  Top = 191
  Width = 597
  Height = 372
  Caption = 'Reservasi Pasien'
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
    Width = 561
    Height = 281
    Caption = ' RESERVASI PASIEN '
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
    object Label5: TLabel
      Left = 16
      Top = 88
      Width = 64
      Height = 13
      Caption = 'Jenis Kelamin'
    end
    object Label6: TLabel
      Left = 16
      Top = 120
      Width = 78
      Height = 13
      Caption = 'Golongan Darah'
    end
    object Label7: TLabel
      Left = 16
      Top = 152
      Width = 25
      Height = 13
      Caption = 'Umur'
    end
    object Label8: TLabel
      Left = 16
      Top = 184
      Width = 48
      Height = 13
      Caption = 'Pekerjaan'
    end
    object Label10: TLabel
      Left = 16
      Top = 216
      Width = 32
      Height = 13
      Caption = 'Alamat'
    end
    object Label11: TLabel
      Left = 16
      Top = 248
      Width = 68
      Height = 13
      Caption = 'Nomer Kontak'
    end
    object Label12: TLabel
      Left = 224
      Top = 152
      Width = 31
      Height = 13
      Caption = 'Tahun'
    end
    object Label3: TLabel
      Left = 280
      Top = 24
      Width = 32
      Height = 13
      Caption = 'Dokter'
    end
    object Label4: TLabel
      Left = 280
      Top = 56
      Width = 53
      Height = 13
      Caption = 'Tujuan Poli'
    end
    object Label9: TLabel
      Left = 280
      Top = 88
      Width = 93
      Height = 13
      Caption = 'Jadwal Check Up 1'
    end
    object Label13: TLabel
      Left = 280
      Top = 120
      Width = 93
      Height = 13
      Caption = 'Jadwal Check Up 2'
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
    object ComboBox2: TComboBox
      Left = 112
      Top = 88
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'Pria'
        'Wanita')
    end
    object Edit4: TEdit
      Left = 112
      Top = 152
      Width = 105
      Height = 21
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 112
      Top = 184
      Width = 145
      Height = 21
      TabOrder = 4
    end
    object Edit6: TEdit
      Left = 112
      Top = 216
      Width = 145
      Height = 21
      TabOrder = 5
    end
    object Edit7: TEdit
      Left = 112
      Top = 248
      Width = 145
      Height = 21
      TabOrder = 6
    end
    object Edit3: TEdit
      Left = 112
      Top = 120
      Width = 145
      Height = 21
      TabOrder = 7
    end
    object ComboBox1: TComboBox
      Left = 384
      Top = 24
      Width = 161
      Height = 21
      ItemHeight = 13
      TabOrder = 8
      OnChange = ComboBox1Change
    end
    object Edit8: TEdit
      Left = 384
      Top = 56
      Width = 161
      Height = 21
      TabOrder = 9
    end
    object Edit9: TEdit
      Left = 384
      Top = 88
      Width = 161
      Height = 21
      TabOrder = 10
    end
    object Edit11: TEdit
      Left = 384
      Top = 120
      Width = 161
      Height = 21
      TabOrder = 11
    end
  end
  object Button1: TButton
    Left = 168
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Cari'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 256
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Reset'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 344
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 432
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Refresh'
    TabOrder = 4
    OnClick = Button4Click
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 16
    Top = 296
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 56
    Top = 296
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'db_pasien'
    TableName = 'tb_pasien.db'
    Left = 88
    Top = 296
  end
  object Table2: TTable
    Active = True
    DatabaseName = 'db_dokter'
    TableName = 'tb_dokter.DB'
    Left = 120
    Top = 296
  end
end
