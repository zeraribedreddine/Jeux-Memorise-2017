unit stg2_ar_unit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TForm7 = class(TForm)
    Panel1: TPanel;
    Image34: TImage;
    Image4: TImage;
    Image3: TImage;
    Image13: TImage;
    Image5: TImage;
    Image2: TImage;
    Label1: TLabel;
    Image7: TImage;
    Label3: TLabel;
    Image8: TImage;
    Label2: TLabel;
    Image6: TImage;
    Timer1: TTimer;
    Image1: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Image34Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses false_ar_unit, main_unit, stg_ar_unit, stg1_ar_unit, stg1_ar_verific,
  true_ar_unit, stg2_ar_verific, stg_fr_unit, stg1_fr_cerific, stg1_fr_unit,
  stg2_fr_unit, stg2_fr_verific;



procedure TForm7.FormActivate(Sender: TObject);
begin
Timer1.Enabled := true ;
end;

procedure TForm7.FormHide(Sender: TObject);
begin
timer1.Enabled := false ;
end;

procedure TForm7.Image13Click(Sender: TObject);
begin
form1.Show ;
form7.Hide ;
end;

procedure TForm7.Image34Click(Sender: TObject);
begin
Application.Terminate ;
end;

procedure TForm7.Timer1Timer(Sender: TObject);
begin
Label5.Caption := IntToStr(StrToInt(Label5.Caption )+ 1 );
    if Label5.Caption = '20' then
      begin
          label5.Caption := '0' ;
          Timer1.Enabled := false ;
            form8.show ;
            form7.hide ;
      end;
end;

end.
