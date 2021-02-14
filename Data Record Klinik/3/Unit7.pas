unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables;

type
  TForm7 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox2: TComboBox;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    ComboBox1: TComboBox;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit11: TEdit;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Table1: TTable;
    Table2: TTable;
    Button4: TButton;
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.Button3Click(Sender: TObject);
//var x:integer;

begin
//x:=MessageDlg('Anda Yakin Mau Keluar?',mtconfirmation,[mbyes]+[mbno],0);
//if x=6 then
if MessageDlg('Anda Yakin Mau Keluar?',mtconfirmation,[mbyes]+[mbno],0) = mrYes then
begin
 form7.Visible:=false;
end;

end;

procedure TForm7.FormCreate(Sender: TObject);
begin
    
Table1.Open;
Table2.Open;
ComboBox1.Items.Clear;
while not Table2.Eof do
begin
  ComboBox1.Items.Add(Table2.FieldByName('Nama Dokter').AsString);
  Table2.Next;
end;

end;

procedure TForm7.Button2Click(Sender: TObject);
begin

Edit1.Clear;
Edit2.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;
Edit3.Clear;
Edit8.Clear;
Edit9.Clear;
Edit11.Clear;
ComboBox2.ClearSelection;
ComboBox1.ClearSelection;

end;

procedure TForm7.ComboBox1Change(Sender: TObject);
var ada : Boolean;
begin

ada := Table2.FindKey([ComboBox1.Text]);
if ada then
begin
  Edit8.Text := Table2.FieldByName('Ruang Poli').AsString;
  Edit9.Text := Table2.FieldByName('Hari Praktek 1').AsString + ' ' + Table2.FieldByName('Jam Praktek 1').AsString;
  Edit11.Text := Table2.FieldByName('Hari Praktek 2').AsString + ' ' + Table2.FieldByName('Jam Praktek 2').AsString;
end;
Table2.Refresh;
end;

procedure TForm7.Button1Click(Sender: TObject);
var ada:boolean; s : array[0..255] of Char;
begin

ada:=Table1.FindKey([edit1.Text]);
if ada then
begin
  Edit2.Text := Table1.FieldByName('Nama Pasien').AsString;
  ComboBox2.Text := Table1.FieldByName('Jenis Kelamin').AsString;
  Edit3.Text := Table1.FieldByName('Golongan Darah').AsString;
  Edit4.Text := Table1.FieldByName('Umur').AsString;
  Edit5.Text := Table1.FieldByName('Pekerjaan').AsString;
  Edit6.Text := Table1.FieldByName('Alamat').AsString;
  Edit7.Text := Table1.FieldByName('Nomor Kontak').AsString;
  StrPCopy (s, format('Data Dengan Nomor Registrasi %s Ditemukan',[Table1.Fields[0].AsString]));
  Application.MessageBox(S,'Confirm');
end
else
begin
  StrPCopy (s, format('Data Dengan Nomor Registrasi %s Tidak Ditemukan',[Table1.Fields[0].AsString]));
  Application.MessageBox(S,'Confirm');
end;

end;

procedure TForm7.Button4Click(Sender: TObject);
begin

Table2.Open;
Table2.Refresh;
ComboBox1.Clear;
while not Table2.Eof do
begin
  ComboBox1.Items.Add(Table2.FieldByName('Nama Dokter').AsString);
  Table2.Next;
end;
Table2.First;

end;

end.
