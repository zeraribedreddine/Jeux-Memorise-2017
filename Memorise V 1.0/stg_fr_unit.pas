unit stg_fr_unit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TForm9 = class(TForm)
    Image1: TImage;
    Image3: TImage;
    Image34: TImage;
    Image2: TImage;
    Label1: TLabel;
    Image10: TImage;
    Image9: TImage;
    Image4: TImage;
    Image8: TImage;
    Image7: TImage;
    Image6: TImage;
    Image5: TImage;
    procedure Image34Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

uses false_ar_unit, main_unit, stg_ar_unit, stg1_ar_unit, stg1_ar_verific,
  stg1_fr_cerific, stg1_fr_unit, stg2_ar_unit, stg2_ar_verific, true_ar_unit,
  stg2_fr_unit, stg2_fr_verific;

procedure TForm9.Image34Click(Sender: TObject);
begin
Application.Terminate  ;
end;

procedure TForm9.Image3Click(Sender: TObject);
begin
form10.show ;
form9.hide ;
end;

procedure TForm9.Image4Click(Sender: TObject);
begin
form12.Show ;
form9.Hide ;
end;

end.
