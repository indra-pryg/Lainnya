unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables;

type
  TForm5 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Edit6: TEdit;
    Edit7: TEdit;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DataSource2: TDataSource;
    Table2: TTable;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin

Table2.Append;
Table2.FieldByName('Nama Dokter').AsString := Edit1.Text;
Table2.FieldByName('Ruang Poli').AsString := ComboBox1.Text;
Table2.FieldByName('Hari Praktek 1').AsString := ComboBox2.Text;
Table2.FieldByName('Jam Praktek 1').AsString := ComboBox3.Text;
Table2.FieldByName('Hari Praktek 2').AsString := ComboBox4.Text;
Table2.FieldByName('Jam Praktek 2').AsString := ComboBox5.Text;
Table2.FieldByName('Alamat').AsString := Edit6.Text;
Table2.FieldByName('Nomor Kontak').AsString := Edit7.Text;
table2.Post;
MessageDlg('Data Berhasil Disimpan',mtinformation,[mbok],0);
Table2.Refresh;

end;

procedure TForm5.FormCreate(Sender: TObject);
begin

Table2.Open;

end;

procedure TForm5.Button2Click(Sender: TObject);
begin

Edit1.Clear;
Edit6.Clear;
Edit7.Clear;
ComboBox1.ClearSelection;
ComboBox2.ClearSelection;
ComboBox3.ClearSelection;
ComboBox4.ClearSelection;
ComboBox5.ClearSelection;

end;

procedure TForm5.Button3Click(Sender: TObject);
var x:integer;
begin

  x:=MessageDlg('Anda Yakin Mau Keluar?',mtconfirmation,[mbyes]+[mbno],0);
  if x=6 then
  begin
   Form5.Visible:=false;
  end;

end;

end.
