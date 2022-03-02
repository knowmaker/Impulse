program Impulse;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  Unit_anyy in 'Unit_anyy.pas' {Form1},
  Unit1_ayy in 'Unit1_ayy.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
