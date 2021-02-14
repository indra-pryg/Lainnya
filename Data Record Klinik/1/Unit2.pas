unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DB, DBTables;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    ComboBox4: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Button3: TButton;
    Button2: TButton;
    Button1: TButton;
    DataSource1: TDataSource;
    Table1: TTable;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
//    procedure DateTimePicker1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses DateUtils;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin

//SetAutoInc('D:\Biomedika\Data Record Klinik\Database\tb_pasien.DB',1130);

Table1.Append;
Table1.FieldByName('Nomor Registrasi').AsString := Edit1.Text;
Table1.FieldByName('Nama Pasien').AsString := Edit2.Text;
Table1.FieldByName('Tempat Lahir').AsString := Edit3.Text;
Table1.FieldByName('Tanggal Lahir').AsString := DateToStr(DateTimePicker1.Date);
Table1.FieldByName('Jenis Kelamin').AsString := ComboBox2.Text;
Table1.FieldByName('Golongan Darah').AsString := ComboBox3.Text;
Table1.FieldByName('Umur').AsString := Edit4.Text;
Table1.FieldByName('Pekerjaan').AsString := Edit5.Text;
Table1.FieldByName('Status Perkawinan').AsString := ComboBox4.Text;
Table1.FieldByName('Alamat').AsString := Edit6.Text;
Table1.FieldByName('Nomor Kontak').AsString := Edit7.Text;
Table1.Post;
MessageDlg('Data Berhasil Disimpan', mtInformation, [mbOK], 0);

end;

procedure TForm2.FormCreate(Sender: TObject);
begin

Table1.Open;

end;

procedure TForm2.Button3Click(Sender: TObject);
var x : Integer;
begin

x:=MessageDlg('Anda Yakin Mau Keluar?',mtconfirmation,[mbyes]+[mbno],0);
if x=6 then
begin
 form2.Visible:=false;
end;

end;

procedure TForm2.Button2Click(Sender: TObject);
begin

Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;
ComboBox2.ClearSelection;
ComboBox3.ClearSelection;
ComboBox4.ClearSelection;

end;
{
procedure setAutoInc(filename : String; Value : Longint);
var mystream : TFileStream;
begin

mystream := tfilestream.create(filename, fmOpenWrite + fmShareExclusive);
try
  mystream.Seek(73, soFromBeginning);
  mystream.Writebuffer(Value, SizeOf(Value));
finally
  mystream.Free;
end;

end;
}
{
procedure TForm2.DateTimePicker1Change(Sender: TObject);
var umur, t1, ts : Integer;
begin

t1 := YearOf(Now);
ts := YearOf(DateTimePicker1.Date);
umur := t1 - ts;
Edit4.Text := IntToStr(umur);

end;
}

end.
