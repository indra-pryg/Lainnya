unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DB, DBTables;

type
  TForm4 = class(TForm)
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
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Table1: TTable;
    DataSource1: TDataSource;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button3Click(Sender: TObject);
var x:integer;
begin

x:=MessageDlg('Anda Yakin Mau Keluar?',mtconfirmation,[mbyes]+[mbno],0);
if x=6 then
begin
 Form4.Visible:=false;
end;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin

Table1.Open;

end;

procedure TForm4.Button2Click(Sender: TObject);
begin

Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;
Edit8.Clear;
Edit9.Clear;
Edit10.Clear;
Edit11.Clear;

end;

procedure TForm4.Button1Click(Sender: TObject);
var ada : Boolean; s : array[0..255] of char;
begin

//Table1.IndexName := 'Data Pasien';
ada := Table1.FindKey([Edit1.Text]);
if ada then
begin
  Edit2.Text := Table1.fieldbyname('Nama Pasien').AsString;
  Edit3.Text := Table1.fieldbyname('Tempat Lahir').AsString;
  Edit8.Text := Table1.fieldbyname('Tanggal Lahir').AsString;
  Edit9.Text := Table1.fieldbyname('Jenis Kelamin').AsString;
  Edit3.Text := Table1.fieldbyname('Tempat Lahir').AsString;
  Edit10.Text := Table1.fieldbyname('Golongan Darah').AsString;
  Edit4.Text := Table1.fieldbyname('Umur').AsString;
  Edit5.Text := Table1.fieldbyname('Pekerjaan').AsString;
  Edit11.Text := Table1.fieldbyname('Status Perkawinan').AsString;
  Edit6.Text := Table1.fieldbyname('Alamat').AsString;
  Edit7.Text := Table1.fieldbyname('Nomor Kontak').AsString;
//  ShowMessage('Data Ditemukan');
  StrPCopy (s, format('Data Dengan Nomor Registrasi %s Ditemukan',[Table1.Fields[0].AsString]));
  Application.MessageBox(S,'Confirm');
end
else
begin
  StrPCopy (s, format('Data Dengan Nomor Registrasi %s Tidak Ditemukan',[Table1.Fields[0].AsString]));
  Application.MessageBox(S,'Confirm');
end;
end;

end.
