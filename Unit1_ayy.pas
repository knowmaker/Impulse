unit Unit1_ayy;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    Image1: TImage;
    m1: TEdit;
    v10: TEdit;
    m2: TEdit;
    v20: TEdit;
    v1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Calculate: TButton;
    Reuse: TButton;
    Image2: TImage;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    v2: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure CalculateClick(Sender: TObject);
    procedure ReuseClick(Sender: TObject);
    procedure v10KeyPress(Sender: TObject; var Key: Char);
    procedure v20KeyPress(Sender: TObject; var Key: Char);
    procedure v1KeyPress(Sender: TObject; var Key: Char);
    procedure v2KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.CalculateClick(Sender: TObject);
var fl:boolean;
begin
fl:=False;
if (((v10.text<>'') and (v20.text<>'')) and (strtofloat(v20.text)-strtofloat(v10.text)<0)) then
begin
    if ((m1.text='') and (v10.text<>'') and (v20.text<>'') and (m2.text<>'') and (v1.text<>'') and (v2.text<>'')) then
    m1.text:=floattostr((strtofloat(m2.text)*(strtofloat(v2.text)-strtofloat(v20.text)))/(strtofloat(v10.text)-strtofloat(v1.text)));

    if ((m2.text='') and (v10.text<>'') and (v20.text<>'') and (m1.text<>'') and (v1.text<>'') and (v2.text<>'')) then
    m2.text:=floattostr((strtofloat(m1.text)*(strtofloat(v1.text)-strtofloat(v10.text)))/(strtofloat(v20.text)-strtofloat(v2.text)));

    if ((v10.text='') and (m1.text<>'') and (v20.text<>'') and (m2.text<>'') and (v1.text<>'') and (v2.text<>'')) then
    v10.text:=floattostr(((strtofloat(m1.text)*strtofloat(v1.text))+(strtofloat(m2.text)+strtofloat(v2.text))-(strtofloat(m2.text)*strtofloat(v20.text)))/strtofloat(m1.text));

    if ((v20.text='') and (m1.text<>'') and (v10.text<>'') and (m2.text<>'') and (v1.text<>'') and (v2.text<>'')) then
    v10.text:=floattostr(((strtofloat(m1.text)*strtofloat(v1.text))+(strtofloat(m2.text)+strtofloat(v2.text))-(strtofloat(m1.text)*strtofloat(v10.text)))/strtofloat(m2.text));

    if ((v1.text='') and (m1.text<>'') and (v10.text<>'') and (m2.text<>'') and (v20.text<>'') and (v2.text<>'')) then
    v1.text:=floattostr(((strtofloat(m1.text)*strtofloat(v10.text))+(strtofloat(m2.text)+strtofloat(v20.text))-(strtofloat(m2.text)*strtofloat(v2.text)))/strtofloat(m1.text));

    if ((v2.text='') and (m1.text<>'') and (v10.text<>'') and (m2.text<>'') and (v20.text<>'') and (v1.text<>'')) then
    v2.text:=floattostr(((strtofloat(m1.text)*strtofloat(v10.text))+(strtofloat(m2.text)+strtofloat(v20.text))-(strtofloat(m1.text)*strtofloat(v1.text)))/strtofloat(m2.text));
    fl:=True
end
else ShowMessage('Частицы не столкнутся');

if fl then
begin
  Image1.Canvas.MoveTo(75,75);
  if strtofloat(v10.text)>0 then
  begin
  Image1.Canvas.LineTo(140,75);
  Image1.Canvas.LineTo(130,85);
  Image1.Canvas.MoveTo(140,75);
  Image1.Canvas.LineTo(130,65);
  end
  else
  begin
  Image1.Canvas.LineTo(10,75);
  Image1.Canvas.LineTo(20,85);
  Image1.Canvas.MoveTo(10,75);
  Image1.Canvas.LineTo(20,65);
  end;
  Image1.Canvas.MoveTo(225,75);
  if strtofloat(v20.text)>0 then
  begin
  Image1.Canvas.LineTo(290,75);
  Image1.Canvas.LineTo(280,85);
  Image1.Canvas.MoveTo(290,75);
  Image1.Canvas.LineTo(280,65);
  end
  else
  begin
  Image1.Canvas.LineTo(150,75);
  Image1.Canvas.LineTo(160,85);
  Image1.Canvas.MoveTo(150,75);
  Image1.Canvas.LineTo(160,65);
  end;

  Image2.Canvas.MoveTo(75,75);
  if strtofloat(v1.text)>0 then
  begin
  Image2.Canvas.LineTo(140,75);
  Image2.Canvas.LineTo(130,85);
  Image2.Canvas.MoveTo(140,75);
  Image2.Canvas.LineTo(130,65);
  end
  else
  begin
  Image2.Canvas.LineTo(10,75);
  Image2.Canvas.LineTo(20,85);
  Image2.Canvas.MoveTo(10,75);
  Image2.Canvas.LineTo(20,65);
  end;
  Image2.Canvas.MoveTo(225,75);
  if strtofloat(v2.text)>0 then
  begin
  Image2.Canvas.LineTo(290,75);
  Image2.Canvas.LineTo(280,85);
  Image2.Canvas.MoveTo(290,75);
  Image2.Canvas.LineTo(280,65);
  end
  else
  begin
  Image2.Canvas.LineTo(150,75);
  Image2.Canvas.LineTo(160,85);
  Image2.Canvas.MoveTo(150,75);
  Image2.Canvas.LineTo(160,65);
  end;
  Calculate.Visible:=False;
end;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
Image1.Picture:= nil;
Image1.Canvas.Brush.Color:=clWhite;
Image1.Canvas.Pen.Color:=clBlack;
Image1.Canvas.LineTo(0,Image1.Height-10);
Image1.Canvas.LineTo(Image1.Width-30,Image1.Height-10);
Image1.Canvas.TextOut(Image1.Width-30,Image1.Height-30,'x');
Image1.Canvas.Ellipse(50,50,100,100);
Image1.Canvas.Ellipse(200,50,250,100);
Image1.Canvas.TextOut(0,0,'y');


Image2.Picture:= nil;
Image2.Canvas.Brush.Color:=clWhite;
Image2.Canvas.Pen.Color:=clBlack;
Image2.Canvas.LineTo(0,Image1.Height-10);
Image2.Canvas.LineTo(Image1.Width-30,Image1.Height-10);
Image2.Canvas.TextOut(Image1.Width-30,Image1.Height-30,'x');
Image2.Canvas.Ellipse(50,50,100,100);
Image2.Canvas.Ellipse(200,50,250,100);
Image2.Canvas.TextOut(0,0,'y');

end;

procedure TForm2.ReuseClick(Sender: TObject);
begin
m1.clear;
m2.clear;
v10.clear;
v20.clear;
v1.clear;
v2.clear;
Calculate.Visible:=True;
Form2.Free;
Application.CreateForm(TForm2, Form2);
Form2.Show;

end;

procedure TForm2.v10KeyPress(Sender: TObject; var Key: Char);
begin
v10.ReadOnly:= not (Key in ['-','0'..'9',',',#8]);
end;

procedure TForm2.v20KeyPress(Sender: TObject; var Key: Char);
begin
v20.ReadOnly:= not (Key in ['-','0'..'9',',',#8]);
end;

procedure TForm2.v2KeyPress(Sender: TObject; var Key: Char);
begin
v2.ReadOnly:= not (Key in ['-','0'..'9',',',#8]);
end;

procedure TForm2.v1KeyPress(Sender: TObject; var Key: Char);
begin
v1.ReadOnly:= not (Key in ['-','0'..'9',',',#8]);
end;

end.
