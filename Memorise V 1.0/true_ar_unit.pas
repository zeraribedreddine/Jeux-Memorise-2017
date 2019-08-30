unit true_ar_unit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.MPlayer;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Image2: TImage;
    Image4: TImage;
    Label3: TLabel;
    Image3: TImage;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Button1: TButton;
    Image1: TImage;
    MediaPlayer1: TMediaPlayer;
    procedure Image1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);


  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses false_ar_unit, main_unit, stg_ar_unit, stg1_ar_unit, stg1_ar_verific,
  stg_fr_unit, stg1_fr_cerific, stg1_fr_unit, stg2_ar_unit, stg2_ar_verific,
  stg2_fr_unit, stg2_fr_verific;



procedure TForm5.Button1Click(Sender: TObject);
begin
form2.show ;
form5.Hide;
MediaPlayer1.Pause ;
end;

procedure TForm5.FormActivate(Sender: TObject);
begin
  MediaPlayer1.Play ;
  label3.Caption := IntToStr(score) ;
  label4.Caption := IntToStr(temps) ;


end;

procedure TForm5.Image1Click(Sender: TObject);
begin
Application.Terminate ;
end;

end.
