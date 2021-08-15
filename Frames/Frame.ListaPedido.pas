unit Frame.ListaPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, Vcl.StdCtrls, dxGDIPlusClasses, cxImage;

type
  TNotifyEvent = procedure(Sander : TObject) of object;

  TFListarPedido = class(TFrame)
    Panel1: TPanel;
    cxImage1: TcxImage;
    LblNome: TLabel;
    LblValor: TLabel;
    LblData: TLabel;
    procedure Panel1Click(Sender: TObject);
  private
    FEditarPedido: TNotifyEvent;
    procedure SetEditarPedido(const Value: TNotifyEvent);
    { Private declarations }
  public
  property EditarPedido: TNotifyEvent read FEditarPedido write SetEditarPedido;
    { Public declarations }
  end;

implementation

{$R *.dfm}


{ TFListarPedido }

procedure TFListarPedido.Panel1Click(Sender: TObject);
begin
  EditarPedido(Self);
end;

procedure TFListarPedido.SetEditarPedido(const Value: TNotifyEvent);
begin
  FEditarPedido := Value;
end;

end.
