unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.StdCtrls,
  VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart,
  VCLTee.TeeFunci;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    GroupBox4: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label15: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label88: TLabel;
    Label90: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label112: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Series2: TFastLineSeries;
    TeeFunction1: TAverageTeeFunction;
    Label3: TLabel;
    Label4: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    Button6: TButton;
    Button5: TButton;
    Button8: TButton;
    SaveDialog2: TSaveDialog;
    SaveDialog3: TSaveDialog;
    OpenDialog2: TOpenDialog;
    OpenDialog3: TOpenDialog;
    procedure Button3Click(Sender: TObject);
    procedure delay(lama : LongInt);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  err_ref, err, mse : Real;
  w1, w2, w3, w4, teta, u, v, Uo, tau, Wo : Real;
  output : Real;
  i, p, a, k, d : Integer;
  e : array[1..16] of Real;
  y_test : array[1..16] of Real;

const
  x1 : array[1..16] of Integer = (0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1);
  x2 : array[1..16] of Integer = (0,0,0,0,1,1,1,1,0,0,0,0,1,1,1,1);
  x3 : array[1..16] of Integer = (0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1);
  x4 : array[1..16] of Integer = (0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1);
  x1bar : array[1..16] of Integer = (1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0);
  x2bar : array[1..16] of Integer = (1,1,1,1,0,0,0,0,1,1,1,1,0,0,0,0);
  x3bar : array[1..16] of Integer = (1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,0);
  x4bar : array[1..16] of Integer = (1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0);
  y1 : array[1..16] of Integer = (0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
  y2 : array[1..16] of Integer = (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
  y3 : array[1..16] of Integer = (0,1,1,0,1,0,0,1,1,0,0,1,0,1,1,0);

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

if RadioButton1.Checked = True then
begin
  Label96.Caption := '0';
  Label97.Caption := '1';
  Label98.Caption := '1';
  Label99.Caption := '1';
  Label100.Caption := '1';
  Label20.Caption := '1';
  Label21.Caption := '1';
  Label22.Caption := '1';
  Label23.Caption := '1';
  Label24.Caption := '1';
  Label40.Caption := '1';
  Label41.Caption := '1';
  Label42.Caption := '1';
  Label43.Caption := '1';
  Label88.Caption := '1';
  Label90.Caption := '1';

for d := 1 to 16 do //procedure testing hasil proses
begin
  v := (x1[d]*w1+x2[d]*w2+x3[d]*w3+x4[d]*w4) - teta; //gunakan persamaan mencari nilai input
  y_test[d] := 1/(1+Exp(-a*v)); //gunakan activation function
  ListBox1.Clear;
  ListBox1.Items.Add('O1 '+' '+ FloatToStr(y_test[1]));
  ListBox1.Items.Add('O2 '+' '+ FloatToStr(y_test[2]));
  ListBox1.Items.Add('O3 '+' '+ FloatToStr(y_test[3]));
  ListBox1.Items.Add('O4 '+' '+ FloatToStr(y_test[4]));
  ListBox1.Items.Add('O5 '+' '+ FloatToStr(y_test[5]));
  ListBox1.Items.Add('O6 '+' '+ FloatToStr(y_test[6]));
  ListBox1.Items.Add('O7 '+' '+ FloatToStr(y_test[7]));
  ListBox1.Items.Add('O8 '+' '+ FloatToStr(y_test[8]));
  ListBox1.Items.Add('O9 '+' '+ FloatToStr(y_test[9]));
  ListBox1.Items.Add('O10 '+' '+ FloatToStr(y_test[10]));
  ListBox1.Items.Add('O11 '+' '+ FloatToStr(y_test[11]));
  ListBox1.Items.Add('O12 '+' '+ FloatToStr(y_test[12]));
  ListBox1.Items.Add('O13 '+' '+ FloatToStr(y_test[13]));
  ListBox1.Items.Add('O14 '+' '+ FloatToStr(y_test[14]));
  ListBox1.Items.Add('O15 '+' '+ FloatToStr(y_test[15]));
  ListBox1.Items.Add('O16 '+' '+ FloatToStr(y_test[16]));
end;

end;

if RadioButton2.Checked = True then
begin
  Label96.Caption := '0';
  Label97.Caption := '0';
  Label98.Caption := '0';
  Label99.Caption := '0';
  Label100.Caption := '0';
  Label20.Caption := '0';
  Label21.Caption := '0';
  Label22.Caption := '0';
  Label23.Caption := '0';
  Label24.Caption := '0';
  Label40.Caption := '0';
  Label41.Caption := '0';
  Label42.Caption := '0';
  Label43.Caption := '0';
  Label88.Caption := '0';
  Label90.Caption := '1';

for d := 1 to 16 do //procedure testing hasil proses
begin
  v := ((x1[d]*w1)*(x2[d]*w2))*((x3[d]*w3)*(x4[d]*w4)) - teta; //gunakan persamaan mencari nilai input
  y_test[d] := 1/(1+Exp(-a*v)); //gunakan activation function
  ListBox1.Clear;
  ListBox1.Items.Add('O1 '+' '+ FloatToStr(y_test[1]));
  ListBox1.Items.Add('O2 '+' '+ FloatToStr(y_test[2]));
  ListBox1.Items.Add('O3 '+' '+ FloatToStr(y_test[3]));
  ListBox1.Items.Add('O4 '+' '+ FloatToStr(y_test[4]));
  ListBox1.Items.Add('O5 '+' '+ FloatToStr(y_test[5]));
  ListBox1.Items.Add('O6 '+' '+ FloatToStr(y_test[6]));
  ListBox1.Items.Add('O7 '+' '+ FloatToStr(y_test[7]));
  ListBox1.Items.Add('O8 '+' '+ FloatToStr(y_test[8]));
  ListBox1.Items.Add('O9 '+' '+ FloatToStr(y_test[9]));
  ListBox1.Items.Add('O10 '+' '+ FloatToStr(y_test[10]));
  ListBox1.Items.Add('O11 '+' '+ FloatToStr(y_test[11]));
  ListBox1.Items.Add('O12 '+' '+ FloatToStr(y_test[12]));
  ListBox1.Items.Add('O13 '+' '+ FloatToStr(y_test[13]));
  ListBox1.Items.Add('O14 '+' '+ FloatToStr(y_test[14]));
  ListBox1.Items.Add('O15 '+' '+ FloatToStr(y_test[15]));
  ListBox1.Items.Add('O16 '+' '+ FloatToStr(y_test[16]));
end;

end;

if RadioButton3.Checked = True then
begin
  Label96.Caption := '0';
  Label97.Caption := '1';
  Label98.Caption := '1';
  Label99.Caption := '0';
  Label100.Caption := '1';
  Label20.Caption := '0';
  Label21.Caption := '0';
  Label22.Caption := '1';
  Label23.Caption := '1';
  Label24.Caption := '0';
  Label40.Caption := '0';
  Label41.Caption := '1';
  Label42.Caption := '0';
  Label43.Caption := '1';
  Label88.Caption := '1';
  Label90.Caption := '0';

for d := 1 to 16 do //procedure testing hasil proses
begin
  v := (((x1bar[d]*w1*x2[d]*w2+x1[d]*w1*x2bar[d]*w2)*(x3[d]*w3*x4[d]*w4+x3bar[d]*w3*x4bar[d]*w4))+
    ((x1[d]*w1*x2[d]*w2+x1bar[d]*w1*x2bar[d]*w2)*(x3bar[d]*w3*x4[d]*w4+x3[d]*w3*x4bar[d]*w4))) - teta; //gunakan persamaan mencari nilai input
  y_test[d] := 1/(1+Exp(-a*v)); //gunakan activation function
  ListBox1.Clear;
  ListBox1.Items.Add('O1 '+' '+ FloatToStr(y_test[1]));
  ListBox1.Items.Add('O2 '+' '+ FloatToStr(y_test[2]));
  ListBox1.Items.Add('O3 '+' '+ FloatToStr(y_test[3]));
  ListBox1.Items.Add('O4 '+' '+ FloatToStr(y_test[4]));
  ListBox1.Items.Add('O5 '+' '+ FloatToStr(y_test[5]));
  ListBox1.Items.Add('O6 '+' '+ FloatToStr(y_test[6]));
  ListBox1.Items.Add('O7 '+' '+ FloatToStr(y_test[7]));
  ListBox1.Items.Add('O8 '+' '+ FloatToStr(y_test[8]));
  ListBox1.Items.Add('O9 '+' '+ FloatToStr(y_test[9]));
  ListBox1.Items.Add('O10 '+' '+ FloatToStr(y_test[10]));
  ListBox1.Items.Add('O11 '+' '+ FloatToStr(y_test[11]));
  ListBox1.Items.Add('O12 '+' '+ FloatToStr(y_test[12]));
  ListBox1.Items.Add('O13 '+' '+ FloatToStr(y_test[13]));
  ListBox1.Items.Add('O14 '+' '+ FloatToStr(y_test[14]));
  ListBox1.Items.Add('O15 '+' '+ FloatToStr(y_test[15]));
  ListBox1.Items.Add('O16 '+' '+ FloatToStr(y_test[16]));
end;

end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin

Chart1.Series[0].Clear;

if RadioButton1.Checked = True then
begin
err_ref := StrToFloat(Edit1.Text); //ambil nilai err_ref dari komponen edit
Uo := StrToFloat(Edit3.Text);
tau := StrToFloat(Edit4.Text);
Wo := 1;
w1 := 1; //set nilai w1
w2 := 1; //set nilai w2
w3 := 1; //set nilai w3
w4 := 1; //set nilai w4
teta := 1; //set nilai teta
a := 5; //set nilai alpha
i := 1; //set nilai iterasi

repeat
mse := 0;
for p := 1 to 16 do //banyak patern
begin
  u := Uo/(1+i/tau);
  v := ((x1[p]*w1)+(x2[p]*w2)+(x3[p]*w3)+(x4[p]*w4)) - teta; //hitung jumlah masing2 perkalian input weight
  output := 1/(1+exp(-a*v)); //hitung output
  e[p] := y1[p] - output; //hitung error
  Wo := Wo + u*e[p];
  w1 := w1 + u*e[p]*x1[p];
  w2 := w2 + u*e[p]*x2[p];
  w3 := w3 + u*e[p]*x3[p];
  w4 := w4 + u*e[p]*x4[p];
  teta := teta - u*e[p]; //update nilai teta
  e[p] := sqr(e[p])/2; //hitung MSE
end;
for k := 1 to 16 do
begin
  mse := mse + e[k]; //jumlah error sebanyak jumlah input
end;
ListBox2.Clear;
ListBox2.Items.Add('error '+' '+FloatToStr(mse));
ListBox2.Items.Add('teta '+' '+FloatToStr(teta));
ListBox2.Items.Add('iterasi '+' '+FloatToStr(i));
ListBox2.Items.Add('');
ListBox2.Items.Add('Wo '+' '+FloatToStr(Wo));
ListBox2.Items.Add('W1 '+' '+FloatToStr(w1));
ListBox2.Items.Add('W2 '+' '+FloatToStr(w2));
ListBox2.Items.Add('W3 '+' '+FloatToStr(w3));
ListBox2.Items.Add('W4 '+' '+FloatToStr(w4));
ListBox3.Items.Add('i='+''+FloatToStr(i)+'    '+FloatToStr(mse));
Series2.AddXY(i,mse); //tamplkan grafik iterasi dan mse
i := i+1; //increment nilai iterasi
delay(5);
until (mse <= err_ref);
end;


if RadioButton2.Checked = True then
begin
err_ref := StrToFloat(Edit1.Text); //ambil nilai err_ref dari komponen edit
Uo := StrToFloat(Edit3.Text);
tau := StrToFloat(Edit4.Text);
Wo := 1;
w1 := 1; //set nilai w1
w2 := 1; //set nilai w2
w3 := 1; //set nilai w3
w4 := 1; //set nilai w4
teta := 1; //set nilai teta
a := 5; //set nilai alpha
i := 1; //set nilai iterasi

repeat
mse := 0;
for p := 1 to 16 do //banyak patern
begin
  u := Uo/(1+i/tau);
  v := ((x1[p]*w1)*(x2[p]*w2)*(x3[p]*w3)*(x4[p]*w4)) - teta; //hitung jumlah masing2 perkalian input weight
  output := 1/(1+exp(-a*v)); //hitung output
  e[p] := y2[p] - output; //hitung error
  Wo := Wo + u*e[p];
  w1 := w1 + u*e[p]*x1[p];
  w2 := w2 + u*e[p]*x2[p];
  w3 := w3 + u*e[p]*x3[p];
  w4 := w4 + u*e[p]*x4[p];
  teta := teta - u*e[p]; //update nilai teta
  e[p] := sqr(e[p])/2; //hitung MSE
end;
for k := 1 to 16 do
begin
  mse := mse + e[k]; //jumlah error sebanyak jumlah input
end;
ListBox2.Clear;
ListBox2.Items.Add('error '+' '+FloatToStr(mse));
ListBox2.Items.Add('teta '+' '+FloatToStr(teta));
ListBox2.Items.Add('iterasi '+' '+FloatToStr(i));
ListBox2.Items.Add('');
ListBox2.Items.Add('Wo '+' '+FloatToStr(Wo));
ListBox2.Items.Add('W1 '+' '+FloatToStr(w1));
ListBox2.Items.Add('W2 '+' '+FloatToStr(w2));
ListBox2.Items.Add('W3 '+' '+FloatToStr(w3));
ListBox2.Items.Add('W4 '+' '+FloatToStr(w4));
ListBox3.Items.Add('i='+''+FloatToStr(i)+'    '+FloatToStr(mse));
Series2.AddXY(i,mse); //tamplkan grafik iterasi dan mse
i := i+1; //increment nilai iterasi
delay(5);
until (mse <= err_ref);
end;

if RadioButton3.Checked = True then
begin
err_ref := StrToFloat(Edit1.Text); //ambil nilai err_ref dari komponen edit
Uo := StrToFloat(Edit3.Text);
tau := StrToFloat(Edit4.Text);
Wo := 1;
w1 := 1; //set nilai w1
w2 := 1; //set nilai w2
w3 := 1; //set nilai w3
w4 := 1; //set nilai w4
teta := 1; //set nilai teta
a := 5; //set nilai alpha
i := 1; //set nilai iterasi

repeat
mse := 0;
for p := 1 to 16 do //banyak patern
begin
  u := Uo/(1+i/tau);
  v := (((x1bar[p]*w1*x2[p]*w2+x1[p]*w1*x2bar[p]*w2)*(x3[p]*w3*x4[p]*w4+x3bar[p]*w3*x4bar[p]*w4))+
    ((x1[p]*w1*x2[p]*w2+x1bar[p]*w1*x2bar[p]*w2)*(x3bar[p]*w3*x4[p]*w4+x3[p]*w3*x4bar[p]*w4))) - teta; //gunakan persamaan mencari nilai input
  output := 1/(1+exp(-a*v)); //hitung output
  e[p] := y3[p] - output; //hitung error
  Wo := Wo + u*e[p];
  w1 := w1 + u*e[p]*x1[p];
  w2 := w2 + u*e[p]*x2[p];
  w3 := w3 + u*e[p]*x3[p];
  w4 := w4 + u*e[p]*x4[p];
  teta := teta - u*e[p]; //update nilai teta
  e[p] := sqr(e[p])/2; //hitung MSE
end;
for k := 1 to 16 do
begin
  mse := mse + e[k]; //jumlah error sebanyak jumlah input
end;
ListBox2.Clear;
ListBox2.Items.Add('error '+' '+FloatToStr(mse));
ListBox2.Items.Add('teta '+' '+FloatToStr(teta));
ListBox2.Items.Add('iterasi '+' '+FloatToStr(i));
ListBox2.Items.Add('');
ListBox2.Items.Add('Wo '+' '+FloatToStr(Wo));
ListBox2.Items.Add('W1 '+' '+FloatToStr(w1));
ListBox2.Items.Add('W2 '+' '+FloatToStr(w2));
ListBox2.Items.Add('W3 '+' '+FloatToStr(w3));
ListBox2.Items.Add('W4 '+' '+FloatToStr(w4));
ListBox3.Items.Add('i='+''+FloatToStr(i)+'    '+FloatToStr(mse));
Series2.AddXY(i,mse); //tamplkan grafik iterasi dan mse
i := i+1; //increment nilai iterasi
delay(5);
until (mse <= err_ref);
end;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin

Halt;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin

ListBox1.Clear;
ListBox2.Clear;
ListBox3.Clear;

RadioButton1.Checked := False;
RadioButton2.Checked := False;
RadioButton3.Checked := False;

end;

procedure TForm1.Button6Click(Sender: TObject);
begin

if OpenDialog1.Execute then
begin
  ListBox1.Items.LoadFromFile(OpenDialog1.FileName);
end;
if OpenDialog2.Execute then
begin
  ListBox2.Items.LoadFromFile(OpenDialog2.FileName);
end;
if OpenDialog3.Execute then
begin
  ListBox3.Items.LoadFromFile(OpenDialog3.FileName);
end;
end;


procedure TForm1.Button8Click(Sender: TObject);
var
namFile : string;
nam1File : string;
nam2File : string;
begin
if SaveDialog1.Execute then
begin
  namFile := SaveDialog1.FileName+'.txt';
  ListBox1.Items.SaveToFile(namFile);
end;
if SaveDialog2.Execute then
begin
  nam1File := SaveDialog2.FileName+'.txt';
  ListBox2.Items.SaveToFile(nam1File);
end;
if SaveDialog3.Execute then
begin
  nam2File := SaveDialog3.FileName+'.txt';
  ListBox3.Items.SaveToFile(nam2File);
end;
end;

procedure TForm1.delay(lama : LongInt);
var ref: LongInt;
begin

ref := GetTickCount;
repeat
Application.ProcessMessages;
until ((GetTickCount-ref) >= lama);

end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin

if RadioButton1.Checked = True then
begin
  RadioButton2.Checked := False;
  RadioButton3.Checked := False;
end;

end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin

if RadioButton2.Checked = False then
begin
  RadioButton1.Checked := False;
  RadioButton3.Checked := False
end;

end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin

 if RadioButton3.Checked = True then
 begin
   RadioButton2.Checked := False;
   RadioButton1.Checked := False;
 end;

end;

end.
