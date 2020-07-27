unit about;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  ComCtrls;

type

  { TfrmAbout }

  TfrmAbout = class(TForm)
    btnCloseAbout: TButton;
    Image1: TImage;
    Image2: TImage;
    imgAboutPlayer: TImage;
    imgAboutAbout: TImage;
    imgAboutHint: TImage;
    imgAboutNewGame: TImage;
    imgAboutQuit: TImage;
    imgAboutReplayHand: TImage;
    imgAboutReveal: TImage;
    Label1: TLabel;
    labIcons: TLabel;
    memAbout: TMemo;
    memCredits: TMemo;
    memHint: TMemo;
    memNewGame: TMemo;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    memQuit: TMemo;
    memReplay: TMemo;
    memReveal: TMemo;
    memRules: TMemo;
    pagAbout: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    procedure btnCloseAboutClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  frmAbout: TfrmAbout;

implementation

{$R *.lfm}

{ TfrmAbout }

procedure TfrmAbout.btnCloseAboutClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAbout.FormShow(Sender: TObject);
begin
  btnCloseAbout.Bringtofront;        // Because it's behind the group.
end;

end.

