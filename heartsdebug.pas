unit heartsdebug;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmDebug }

  TfrmDebug = class(TForm)
    btnClose: TButton;
    memDebug: TMemo;
    procedure btnCloseClick(Sender: TObject);
  private

  public

  end;

var
  frmDebug: TfrmDebug;

implementation

{$R *.lfm}

{ TfrmDebug }

procedure TfrmDebug.btnCloseClick(Sender: TObject);
begin
  close;
end;

end.

