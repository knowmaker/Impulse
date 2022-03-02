unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,Unit_anyy,Unit1_ayy;

type
  TMainForm = class(TForm)
    anyy: TButton;
    ayy: TButton;
    Label1: TLabel;
    procedure anyyClick(Sender: TObject);
    procedure ayyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.anyyClick(Sender: TObject);
begin
Form1.Show;
end;

procedure TMainForm.ayyClick(Sender: TObject);
begin
Form2.Show;
end;

end.
