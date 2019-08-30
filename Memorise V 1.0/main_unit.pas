unit main_unit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.GIFImg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.MPlayer, System.ImageList,
  Vcl.ImgList, Vcl.Menus, HTMLHelpViewer, mmsystem ;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Image34: TImage;
    Image2: TImage;
    Label1: TLabel;
    Image12: TImage;
    Image11: TImage;
    Image4: TImage;
    Image5: TImage;
    MainMenu1: TMainMenu;
    propos1: TMenuItem;
    help1: TMenuItem;
    MediaPlayer1: TMediaPlayer;
    procedure Image34Click(Sender: TObject);

    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure help1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure propos1Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);







  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses stg_ar_unit, stg_fr_unit, false_ar_unit, stg1_ar_unit, stg1_ar_verific,
  stg1_fr_cerific, stg1_fr_unit, stg2_ar_unit, stg2_ar_verific, stg2_fr_unit,
  stg2_fr_verific, true_ar_unit, apropos_unit;





procedure TForm1.FormActivate(Sender: TObject);
begin
mediaplayer1.Play ;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

Application.HelpFile :=  ExtractFilePath(Application.ExeName) + '\HelpFile\HelpFile.chm';

end;

procedure TForm1.help1Click(Sender: TObject);
begin
HtmlHelp(0, Application.HelpFile, HH_DISPLAY_TOC, 0);
end;


procedure TForm1.Image11Click(Sender: TObject);
begin
mediaplayer1.Pause ;
end;

procedure TForm1.Image12Click(Sender: TObject);
begin
mediaplayer1.Play ;
end;

procedure TForm1.Image34Click(Sender: TObject);
begin
Application.Terminate ;
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
form2.show ;
form1.Hide ;

end;

procedure TForm1.Image5Click(Sender: TObject);
begin
form9.Show ;
Form1.Hide ;
end;





procedure TForm1.propos1Click(Sender: TObject);
begin
  form14.ShowModal ;
end ;


end .
