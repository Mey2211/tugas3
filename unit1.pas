unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1EditingDone(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0: Image1.Picture.LoadFromFile('image2.jpg');
    1: Image1.Picture.LoadFromFile('image1.jpg');
    2: Image1.Picture.LoadFromFile('image3.jpg');
    3: Image1.Picture.LoadFromFile('image4.jpg');
    4: Image1.Picture.LoadFromFile('image5.jpg');
  else
    Image1.Picture := nil; // Jika tidak ada yang dipilih, kosongkan gambar
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ComboBox1.ItemIndex := -1;  // Reset pilihan di ComboBox
  Memo1.Clear;                // Kosongkan Memo1
  Memo2.Clear;                // Kosongkan Memo2
  Image1.Picture := nil;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Image1.Picture.LoadFromFile('image1.jpg');
  Image1.Picture.LoadFromFile('image2.jpg');
  Image1.Picture.LoadFromFile('image3.jpg');
  Image1.Picture.LoadFromFile('image4.jpg');
  Image1.Picture.LoadFromFile('image5.jpg');

end;
procedure TForm1.ComboBox1EditingDone(Sender: TObject);
begin
Case ComboBox1.ItemIndex of
0 : Memo1.Text := IntToStr(120000);
1 : Memo1.Text := IntToStr(90000);
2 : Memo1.Text := IntToStr(80000);
3 : Memo1.Text := IntToStr(100000);
4 : Memo1.Text := IntToStr(85000);
end;
Case ComboBox1.ItemIndex of
0 : Memo2.Text := Memo2.Text +  'dessert berbahan dasar keju';
1 : Memo2.Text := Memo2.Text + 'bolu lapis cokelat berwarna merah atau cokelat kemerahan yang dilapisi dengan keju krim putih.';
2 : Memo2.Text := Memo2.Text + 'kue sponge dengan rasa cokelat yang disusun berlapis';
3 : Memo2.Text := Memo2.Text + 'kue bolu yang dihias sesuai pesanan';
4 : Memo2.Text := Memo2.Text + 'biskuit berbentuk bulat kecil, aneka warna, renyah di luar, namun bagian tengahnya terdapat krim lembut yang lumer di mulut.';
end;
end;
end.

