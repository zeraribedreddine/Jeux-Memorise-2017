unit stg2_fr_verific;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls;

type
  TForm13 = class(TForm)
    Panel1: TPanel;
    Image34: TImage;
    Image4: TImage;
    Image3: TImage;
    Image2: TImage;
    Image5: TImage;
    Image13: TImage;
    GroupBox1: TGroupBox;
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    CheckBox7: TCheckBox;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormHide(Sender: TObject);



  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

uses main_unit, false_ar_unit, stg_ar_unit, stg_fr_unit, stg1_ar_unit,
  stg1_ar_verific, stg1_fr_cerific, stg1_fr_unit, stg2_ar_unit, stg2_ar_verific,
  stg2_fr_unit, true_ar_unit;







procedure TForm13.Button1Click(Sender: TObject);
begin
if (CheckBox1.Checked = true ) and (CheckBox2.Checked = true )and (CheckBox4.Checked = true ) and (CheckBox5.Checked = true )
and (CheckBox6.Checked = true )then
          begin
              label1.Caption := '25' ;
              score :=  StrToInt(label1.Caption) ;
              temps :=  StrToInt(Label2.Caption)  ;
              form5.Show;
              form13.hide;
          end
              else

          begin
              label2.Caption := '0' ;
              score :=  StrToInt(label1.Caption) ;
              temps :=  StrToInt(Label2.Caption)  ;
              form6.Show;
              form13.hide;
          end
end;

procedure TForm13.FormActivate(Sender: TObject);
begin
Timer1.Enabled := true ;
end;

procedure TForm13.FormHide(Sender: TObject);
begin
timer1.Enabled := false ;
end;

procedure TForm13.Timer1Timer(Sender: TObject);
begin
Label2.Caption := IntToStr(StrToInt(Label2.Caption )+ 1 );
end;

end.
