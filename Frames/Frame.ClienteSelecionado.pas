unit Frame.ClienteSelecionado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, dxGDIPlusClasses, cxImage, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrame_ClienteSelecionado = class(TFrame)
    Panel1: TPanel;
    LblCliente: TLabel;
    LblCidade: TLabel;
    cxImage1: TcxImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
