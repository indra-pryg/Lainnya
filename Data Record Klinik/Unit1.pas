unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, jpeg, StdCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    DataPasien1: TMenuItem;
    RegistrasiDataPasien1: TMenuItem;
    RekapDataPasien1: TMenuItem;
    CariDataPasien1: TMenuItem;
    DataDokter1: TMenuItem;
    InputDataDokter1: TMenuItem;
    RekapDataDokter1: TMenuItem;
    CheckUpOrder1: TMenuItem;
    ReservasiPasien1: TMenuItem;
    Exit1: TMenuItem;
    Image1: TImage;
    procedure RegistrasiDataPasien1Click(Sender: TObject);
    procedure RekapDataPasien1Click(Sender: TObject);
    procedure CariDataPasien1Click(Sender: TObject);
    procedure InputDataDokter1Click(Sender: TObject);
    procedure RekapDataDokter1Click(Sender: TObject);
    procedure ReservasiPasien1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7;

{$R *.dfm}

procedure TForm1.RegistrasiDataPasien1Click(Sender: TObject);
begin

Form2.visible := true;

end;

procedure TForm1.RekapDataPasien1Click(Sender: TObject);
begin

Form3.visible := true;

end;

procedure TForm1.CariDataPasien1Click(Sender: TObject);
begin

Form4.visible := true;

end;

procedure TForm1.InputDataDokter1Click(Sender: TObject);
begin

Form5.visible := true;

end;

procedure TForm1.RekapDataDokter1Click(Sender: TObject);
begin

Form6.visible := true;

end;

procedure TForm1.ReservasiPasien1Click(Sender: TObject);
begin

Form7.visible := true;

end;

procedure TForm1.Exit1Click(Sender: TObject);
begin

Halt;

end;

end.
