unit stg2_ar_verific;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TForm8 = class(TForm)
    Panel1: TPanel;
    Image34: TImage;
    Image4: TImage;
    Image5: TImage;
    Image2: TImage;
    Image3: TImage;
    Image13: TImage;
    GroupBox1: TGroupBox;
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Timer1: TTimer;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    procedure Image34Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses false_ar_unit, main_unit, stg_ar_unit, stg1_ar_unit, stg1_ar_verific,
  stg2_ar_unit, true_ar_unit, stg_fr_unit, stg1_fr_cerific, stg1_fr_unit,
  stg2_fr_unit, stg2_fr_verific;

procedure TForm8.Button1Click(Sender: TObject);
begin
if (CheckBox1.Checked = true ) and (CheckBox2.Checked = true )and (CheckBox3.Checked = true ) and (CheckBox4.Checked = true )then
          begin
              label2.Caption := '25' ;
              score :=  StrToInt(label2.Caption) ;
              temps :=  StrToInt(Label1.Caption)  ;
              form5.Show;
              form8.hide;
          end
              else

          begin
              label2.Caption := '0' ;
              score :=  StrToInt(label2.Caption) ;
              temps :=  StrToInt(Label1.Caption)  ;
              form6.Show;
              form8.hide;
          end
end;

procedure TForm8.FormActivate(Sender: TObject);
begin
Timer1.Enabled := true ;
end;

procedure TForm8.FormHide(Sender: TObject);
begin
timer1.Enabled := false ;
end;

procedure TForm8.Image13Click(Sender: TObject);
begin
form1.show ;
form8.Hide ;
end;

procedure TForm8.Image34Click(Sender: TObject);
begin
Application.Terminate ;
end;

procedure TForm8.Timer1Timer(Sender: TObject);
begin
Label1.Caption := IntToStr(StrToInt(Label1.Caption )+ 1 );
end;

end.
