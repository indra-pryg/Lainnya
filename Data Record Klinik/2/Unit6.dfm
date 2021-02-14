object Form6: TForm6
  Left = 187
  Top = 90
  Width = 1025
  Height = 177
  Caption = 'Rekap Data Dokter'
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
    Left = 7
    Top = 8
    Width = 905
    Height = 121
    Caption = ' REKAPITULASI DATA DOKTER '
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 8
      Top = 16
      Width = 889
      Height = 97
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object Button1: TButton
    Left = 925
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Refresh'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 925
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Delete Data'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 925
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 3
    OnClick = Button3Click
  end
  object DataSource1: TDataSource
    DataSet = Table2
    Left = 303
    Top = 72
  end
  object Table2: TTable
    Active = True
    DatabaseName = 'db_dokter'
    TableName = 'tb_dokter.db'
    Left = 343
    Top = 80
  end
end
