unit Classe.Alterar.ComponentesVisuais;

interface

uses
  Vcl.Controls;

type
  TAlterarComponenteVisual = class
  private

  public
  function MakeRounded(Control: TWinControl; Border : Integer) : TAlterarComponenteVisual;
  class function new : TAlterarComponenteVisual;
  constructor Create;
  destructor Destroy;override;
end;


implementation

uses
  System.Types, Winapi.Windows, Winapi.Messages, System.SysUtils;

{ TAlterarComponenteVisual }

constructor TAlterarComponenteVisual.Create;
begin

end;

destructor TAlterarComponenteVisual.Destroy;
begin
  inherited;
end;

function TAlterarComponenteVisual.MakeRounded(Control: TWinControl;
  Border: Integer):TAlterarComponenteVisual;
var
  R: TRect;
  Rgn: HRGN;
begin
  with Control do
  begin
    R := ClientRect;
    rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 15, 15);
    Perform(EM_GETRECT, 0, lParam(@r));
    InflateRect(r, - 5, - 5);
    Perform(EM_SETRECTNP, 0, lParam(@r));
    SetWindowRgn(Handle, rgn, True);
    Invalidate;
  end;
  Result := Self;
end;

class function TAlterarComponenteVisual.new: TAlterarComponenteVisual;
begin
  Result := Self.Create;
end;

end.
