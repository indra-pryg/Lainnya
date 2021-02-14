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
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    GroupBox2: TGroupBox;
    Edit5: TEdit;
    Edit6: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Edit9: TEdit;
    Label12: TLabel;
    Edit10: TEdit;
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
    GroupBox5: TGroupBox;
    Label89: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Series2: TFastLineSeries;
    TeeFunction1: TAverageTeeFunction;
    procedure Button3Click(Sender: TObject);
    procedure delay(lama : LongInt);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  err_ref, err, mse : Real;
  w1, w2, w3, w4, teta, u, v : Real;
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
  GroupBox5.Caption := 'Y (OR)';
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
end;
Label89.Caption := FloatToStr(y_test[1]);
Label91.Caption := FloatToStr(y_test[2]);
Label92.Caption := FloatToStr(y_test[3]);
Label93.Caption := FloatToStr(y_test[4]);
Label94.Caption := FloatToStr(y_test[5]);
Label95.Caption := FloatToStr(y_test[6]);
Label101.Caption := FloatToStr(y_test[7]);
Label102.Caption := FloatToStr(y_test[8]);
Label103.Caption := FloatToStr(y_test[9]);
Label104.Caption := FloatToStr(y_test[10]);
Label105.Caption := FloatToStr(y_test[11]);
Label106.Caption := FloatToStr(y_test[12]);
Label107.Caption := FloatToStr(y_test[13]);
Label108.Caption := FloatToStr(y_test[14]);
Label109.Caption := FloatToStr(y_test[15]);
Label110.Caption := FloatToStr(y_test[16]);
end;

if RadioButton2.Checked = True then
begin
  GroupBox5.Caption := 'Y (AND)';
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
end;
Label89.Caption := FloatToStr(y_test[1]);
Label91.Caption := FloatToStr(y_test[2]);
Label92.Caption := FloatToStr(y_test[3]);
Label93.Caption := FloatToStr(y_test[4]);
Label94.Caption := FloatToStr(y_test[5]);
Label95.Caption := FloatToStr(y_test[6]);
Label101.Caption := FloatToStr(y_test[7]);
Label102.Caption := FloatToStr(y_test[8]);
Label103.Caption := FloatToStr(y_test[9]);
Label104.Caption := FloatToStr(y_test[10]);
Label105.Caption := FloatToStr(y_test[11]);
Label106.Caption := FloatToStr(y_test[12]);
Label107.Caption := FloatToStr(y_test[13]);
Label108.Caption := FloatToStr(y_test[14]);
Label109.Caption := FloatToStr(y_test[15]);
Label110.Caption := FloatToStr(y_test[16]);
end;

if RadioButton3.Checked = True then
begin
  GroupBox5.Caption := 'Y (E-XOR)';
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
end;
Label89.Caption := FloatToStr(y_test[1]);
Label91.Caption := FloatToStr(y_test[2]);
Label92.Caption := FloatToStr(y_test[3]);
Label93.Caption := FloatToStr(y_test[4]);
Label94.Caption := FloatToStr(y_test[5]);
Label95.Caption := FloatToStr(y_test[6]);
Label101.Caption := FloatToStr(y_test[7]);
Label102.Caption := FloatToStr(y_test[8]);
Label103.Caption := FloatToStr(y_test[9]);
Label104.Caption := FloatToStr(y_test[10]);
Label105.Caption := FloatToStr(y_test[11]);
Label106.Caption := FloatToStr(y_test[12]);
Label107.Caption := FloatToStr(y_test[13]);
Label108.Caption := FloatToStr(y_test[14]);
Label109.Caption := FloatToStr(y_test[15]);
Label110.Caption := FloatToStr(y_test[16]);
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin

Chart1.Series[0].Clear;

if RadioButton1.Checked = True then
begin
err_ref := StrToFloat(Edit1.Text); //ambil nilai err_ref dari komponen edit
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
  u := ((x1[p]*w1)+(x2[p]*w2)+(x3[p]*w3)+(x4[p]*w4)) - teta; //hitung jumlah masing2 perkalian input weight
  output := 1/(1+exp(-a*u)); //hitung output
  e[p] := y1[p] - output; //hitung error
  w1 := w1 + 0.00011; //update weight 1
  w2 := w2 + 0.00011; //update weight 2
  w3 := w3 + 0.00011; //update weight 3
  w4 := w4 + 0.00011; //update weight 4
  teta := teta + 0.0001; //update nilai teta
  e[p] := sqr(e[p])/2; //hitung MSE
end;
for k := 1 to 16 do
begin
  mse := mse + e[k]; //jumlah error sebanyak jumlah input
end;
Edit2.Text := FloatToStr(mse); //tampilkan error
Edit3.Text := FloatToStr(u);
Edit4.Text := FloatToStr(e[p]);
Edit5.Text := FloatToStr(w1); //tampilkan nilai w1
Edit6.Text := FloatToStr(w2); //tampilkan nilai w2
Edit8.Text := FloatToStr(w3); //tampilkan nilai w3
Edit7.Text := FloatToStr(w4); //tampilkan nilai w4
Edit9.Text := IntToStr(i); //tampilkan jumlah iterasi
Edit10.Text := FloatToStr(teta);
Series2.AddXY(i,mse); //tamplkan grafik iterasi dan mse
i := i+1; //increment nilai iterasi
delay(5);
until (mse <= err_ref);
end;


if RadioButton2.Checked = True then
begin
err_ref := StrToFloat(Edit1.Text); //ambil nilai err_ref dari komponen edit
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
  u := ((x1[p]*w1)*(x2[p]*w2)*(x3[p]*w3)*(x4[p]*w4)) - teta; //hitung jumlah masing2 perkalian input weight
  output := 1/(1+exp(-a*u)); //hitung output
  e[p] := y2[p] - output; //hitung error
  w1 := w1 + 0.00011; //update weight 1
  w2 := w2 + 0.00011; //update weight 2
  w3 := w3 + 0.00011; //update weight 3
  w4 := w4 + 0.00011; //update weight 4
  teta := teta + 0.0001; //update nilai teta
  e[p] := sqr(e[p])/2; //hitung MSE
end;
for k := 1 to 16 do
begin
  mse := mse + e[k]; //jumlah error sebanyak jumlah input
end;
Edit2.Text := FloatToStr(mse); //tampilkan error
Edit3.Text := FloatToStr(u);
Edit4.Text := FloatToStr(e[p]);
Edit5.Text := FloatToStr(w1); //tampilkan nilai w1
Edit6.Text := FloatToStr(w2); //tampilkan nilai w2
Edit8.Text := FloatToStr(w3); //tampilkan nilai w3
Edit7.Text := FloatToStr(w4); //tampilkan nilai w4
Edit9.Text := IntToStr(i); //tampilkan jumlah iterasi
Edit10.Text := FloatToStr(teta);
Series2.AddXY(i,mse); //tamplkan grafik iterasi dan mse
i := i+1; //increment nilai iterasi
delay(5);
until (mse <= err_ref);
end;

if RadioButton3.Checked = True then
begin
  err_ref := StrToFloat(Edit1.Text); //ambil nilai err_ref dari komponen edit
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
  u := ((x1[p]*w1)+(x2[p]*w2)+(x3[p]*w3)+(x4[p]*w4)) - teta; //hitung jumlah masing2 perkalian input weight
  output := 1/(1+exp(-a*u)); //hitung output
  e[p] := y3[p] - output; //hitung error
  w1 := w1 + 0.00011; //update weight 1
  w2 := w2 + 0.00011; //update weight 2
  w3 := w3 + 0.00011; //update weight 3
  w4 := w4 + 0.00011; //update weight 4
  teta := teta + 0.0001; //update nilai teta
  e[p] := sqr(e[p])/2; //hitung MSE
end;
for k := 1 to 16 do
begin
  mse := mse + e[k]; //jumlah error sebanyak jumlah input
end;
Edit2.Text := FloatToStr(mse); //tampilkan error
Edit3.Text := FloatToStr(u);
Edit4.Text := FloatToStr(e[p]);
Edit5.Text := FloatToStr(w1); //tampilkan nilai w1
Edit6.Text := FloatToStr(w2); //tampilkan nilai w2
Edit8.Text := FloatToStr(w3); //tampilkan nilai w3
Edit7.Text := FloatToStr(w4); //tampilkan nilai w4
Edit9.Text := IntToStr(i); //tampilkan jumlah iterasi
Edit10.Text := FloatToStr(teta);
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
