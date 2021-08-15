program projetowk;

uses
  Vcl.Forms,
  View.principal in 'View.principal.pas' {Frm_Principal},
  Helper.principal in 'Utils\Helper.principal.pas',
  Frame.ListaPedido in 'Frames\Frame.ListaPedido.pas' {FListarPedido: TFrame},
  View.NovoPedido in 'View.NovoPedido.pas' {Frm_View_Pedido},
  Classe.Alterar.ComponentesVisuais in 'Utils\Classe.Alterar.ComponentesVisuais.pas',
  Unit1 in 'test\Unit1.pas' {DataModule1: TDataModule},
  View.Configuracao in 'View.Configuracao.pas' {Frm_Configuracao},
  View.ConectaBanco in 'View.ConectaBanco.pas' {Frm_Conecta_Banco},
  Model.Conexao.Interfaces in 'Model\Model.Conexao.Interfaces.pas',
  Model.Query.Firedac in 'Model\Model.Query.Firedac.pas',
  Model.Conexao.Firedac in 'Model\Model.Conexao.Firedac.pas',
  Frame.ListarCliente in 'Frames\Frame.ListarCliente.pas' {Frame_ListarCliente: TFrame},
  Frame.ClienteSelecionado in 'Frames\Frame.ClienteSelecionado.pas' {Frame2: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.Run;
end.
