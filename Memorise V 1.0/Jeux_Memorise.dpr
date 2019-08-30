program Jeux_Memorise;

uses
  Vcl.Forms,
  main_unit in 'main_unit.pas' {Form1},
  stg_ar_unit in 'stg_ar_unit.pas' {Form2},
  stg1_ar_unit in 'stg1_ar_unit.pas' {Form3},
  stg1_ar_verific in 'stg1_ar_verific.pas' {Form4},
  true_ar_unit in 'true_ar_unit.pas' {Form5},
  false_ar_unit in 'false_ar_unit.pas' {Form6},
  stg2_ar_unit in 'stg2_ar_unit.pas' {Form7},
  stg2_ar_verific in 'stg2_ar_verific.pas' {Form8},
  stg_fr_unit in 'stg_fr_unit.pas' {Form9},
  stg1_fr_unit in 'stg1_fr_unit.pas' {Form10},
  stg1_fr_cerific in 'stg1_fr_cerific.pas' {Form11},
  stg2_fr_unit in 'stg2_fr_unit.pas' {Form12},
  stg2_fr_verific in 'stg2_fr_verific.pas' {Form13},
  apropos_unit in 'apropos_unit.pas' {Form14},
  helpfile in 'helpfile.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Onyx Blue');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm13, Form13);
  Application.CreateForm(TForm14, Form14);
  Application.Run;
end.
