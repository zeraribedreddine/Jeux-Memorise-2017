unit stg_ar_unit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Image34: TImage;
    Image2: TImage;
    Label1: TLabel;
    Image12: TImage;
    Image11: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    procedure Image34Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);

  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses stg1_ar_unit, false_ar_unit, main_unit, stg1_ar_verific, stg2_ar_unit,
  stg2_ar_verific, true_ar_unit;



procedure TForm2.Image11Click(Sender: TObject);
begin
Form1.mediaplayer1.Pause ;
end;

procedure TForm2.Image12Click(Sender: TObject);
begin
Form1.mediaplayer1.Play ;
end;

procedure TForm2.Image34Click(Sender: TObject);
begin
Application.Terminate ;
end;

procedure TForm2.Image3Click(Sender: TObject);
begin
form3.show ;
form2.Hide ;
end;

procedure TForm2.Image4Click(Sender: TObject);
begin
form7.show ;
form2.Hide ;
end;

end.
