unit View.ClienteSelecionado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, dxGDIPlusClasses, cxImage, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrm_ClienteSelecioando = class(TForm)
    Panel1: TPanel;
    LblCliente: TLabel;
    LblCidade: TLabel;
    cxImage1: TcxImage;
    BtnAlterarCliente: TPanel;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnAlterarClienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ClienteSelecioando: TFrm_ClienteSelecioando;

implementation

{$R *.dfm}

uses View.NovoPedido;

procedure TFrm_ClienteSelecioando.BtnAlterarClienteClick(Sender: TObject);
begin
  Frm_View_Pedido.LblCodigoCliente.Caption := '';
  Close;
end;

procedure TFrm_ClienteSelecioando.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  Frm_ClienteSelecioando := Nil;
end;

end.
