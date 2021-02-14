unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, DBTables;

type
  TForm6 = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DataSource1: TDataSource;
    Table2: TTable;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit5;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin

Table2.Refresh;

end;

procedure TForm6.FormCreate(Sender: TObject);
begin

Table2.Open;

end;

procedure TForm6.Button3Click(Sender: TObject);
var x:integer;
begin

  x:=MessageDlg('Anda Yakin Mau Keluar?',mtconfirmation,[mbyes]+[mbno],0);
  if x=6 then
  begin
   Form6.Visible:=false;
  end;

end;

procedure TForm6.Button2Click(Sender: TObject);
var s:array[0..255]of char;
begin

StrPCopy (s, format('Yakin data dokter %s akan dihapus dari tabel?',[Table2.Fields[0].AsString]));
if (Application.MessageBox(S,'Peringatan',MB_YESNO or MB_ICONQUESTION)=IDYES) then
begin
  table2.Delete;
end;

end;

end.
