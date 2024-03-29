unit stg2_fr_unit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TForm12 = class(TForm)
    Label1: TLabel;
    Image7: TImage;
    Panel1: TPanel;
    Image34: TImage;
    Image4: TImage;
    Label6: TLabel;
    Image3: TImage;
    Label7: TLabel;
    Image2: TImage;
    Image5: TImage;
    Image9: TImage;
    Label4: TLabel;
    Label3: TLabel;
    Image8: TImage;
    Label5: TLabel;
    Image1: TImage;
    Label2: TLabel;
    Image6: TImage;
    Image13: TImage;
    Timer1: TTimer;
    procedure Image13Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Image34Click(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

uses false_ar_unit, main_unit, stg_ar_unit, stg_fr_unit, stg1_ar_unit,
  stg1_ar_verific, stg1_fr_cerific, stg1_fr_unit, stg2_ar_unit, stg2_ar_verific,
  true_ar_unit, stg2_fr_verific;

procedure TForm12.FormActivate(Sender: TObject);
begin
Timer1.Enabled := true ;
end;

procedure TForm12.FormHide(Sender: TObject);
begin
timer1.Enabled := false ;
end;

procedure TForm12.Image13Click(Sender: TObject);
begin
form1.show ;
form12.Hide ;
end;

procedure TForm12.Image34Click(Sender: TObject);
begin
Application.Terminate ;
end;



procedure TForm12.Timer1Timer(Sender: TObject);
begin
Label7.Caption := IntToStr(StrToInt(Label7.Caption )+ 1 );
    if Label7.Caption = '20' then
      begin
          label7.Caption := '0' ;
          Timer1.Enabled := false ;
            form13.show ;
            form12.hide ;
      end;
end;

end.
