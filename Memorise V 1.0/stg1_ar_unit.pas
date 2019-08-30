unit stg1_ar_unit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TForm3 = class(TForm)
    Image34: TImage;
    Panel1: TPanel;
    Image4: TImage;
    Label5: TLabel;
    Image3: TImage;
    Label4: TLabel;
    Image13: TImage;
    Image5: TImage;
    Image2: TImage;
    Label1: TLabel;
    Image7: TImage;
    Label2: TLabel;
    Image6: TImage;
    Label3: TLabel;
    Image8: TImage;
    Timer1: TTimer;
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
  Form3: TForm3;

implementation

{$R *.dfm}

uses main_unit, stg1_ar_verific, false_ar_unit, stg_ar_unit, true_ar_unit,
  stg_fr_unit, stg1_fr_cerific, stg1_fr_unit, stg2_ar_unit, stg2_ar_verific,
  stg2_fr_unit, stg2_fr_verific;

procedure TForm3.FormActivate(Sender: TObject);
begin
 Timer1.Enabled := true ;
end;


procedure TForm3.FormHide(Sender: TObject);
begin
   timer1.Enabled := false ;
end;

procedure TForm3.Image13Click(Sender: TObject);
begin
form1.show ;
form3.Hide ;
end;

procedure TForm3.Image34Click(Sender: TObject);
begin
Application.Terminate ;
end;

procedure TForm3.Timer1Timer(Sender: TObject);
begin
Label4.Caption := IntToStr(StrToInt(Label4.Caption )+ 1 );
    if Label4.Caption = '30' then
      begin
          label4.Caption := '0' ;
          Timer1.Enabled := false ;
            form4.show ;
            form3.hide ;
      end;

end;

end.
