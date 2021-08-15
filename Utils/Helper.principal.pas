unit Helper.principal;

interface

uses
  Vcl.ExtCtrls, SysUtils;

  type
	   TAlterPanel = class helper for TPanel
	   private
	      procedure MakeRounded(Border: Integer);
end;

implementation

uses
  Winapi.Windows, Winapi.Messages;

{ TAlterPanel }

procedure TAlterPanel.MakeRounded(Border: Integer);
var R: TRect; Rgn: HRGN;
begin
  with Self do
  begin
    R := ClientRect;
    rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 15, 15);
    Perform(EM_GETRECT, 0, lParam(@r));
    InflateRect(r, - 5, - 5);
    Perform(EM_SETRECTNP, 0, lParam(@r));
    SetWindowRgn(Handle, rgn, True);
    Invalidate;
  end;
end;

end.
