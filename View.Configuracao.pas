unit View.Configuracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, dxGDIPlusClasses, cxImage;

type
  TFrm_Configuracao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxImage1: TcxImage;
    procedure cxImage1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Configuracao: TFrm_Configuracao;

implementation

{$R *.dfm}

procedure TFrm_Configuracao.cxImage1Click(Sender: TObject);
begin
  Close;
end;

end.
