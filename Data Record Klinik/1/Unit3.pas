unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, DBTables;

type
  TForm3 = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Table1: TTable;
    DataSource1: TDataSource;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button3Click(Sender: TObject);
var x:integer;
begin

x:=MessageDlg('Anda Yakin Mau Keluar?',mtconfirmation,[mbyes]+[mbno],0);
if x=6 then
begin
 form3.Visible:=false;
end;

end;

procedure TForm3.Button1Click(Sender: TObject);
begin

Table1.Refresh;

end;

procedure TForm3.Button2Click(Sender: TObject);
var s:array[0..255]of char;
begin

StrPCopy (s, format('Yakin data pasien %s akan dihapus dari tabel?',[Table1.Fields[0].AsString]));
if (Application.MessageBox(S,'Peringatan',MB_YESNO or MB_ICONQUESTION)=IDYES) then
begin
  table1.Delete;
end;

end;

procedure TForm3.FormCreate(Sender: TObject);
begin

Table1.Open;

end;

end.
