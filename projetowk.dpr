program projetowk;

uses
  Vcl.Forms,
  View.principal in 'View.principal.pas' {Frm_Principal},
  Helper.principal in 'Utils\Helper.principal.pas',
  Frame.ListaPedido in 'Frames\Frame.ListaPedido.pas' {FListarPedido: TFrame},
  View.NovoPedido in 'View.NovoPedido.pas' {Frm_View_Pedido},
  Classe.Alterar.ComponentesVisuais in 'Utils\Classe.Alterar.ComponentesVisuais.pas',
  View.Configuracao in 'View.Configuracao.pas' {Frm_Configuracao},
  View.ConectaBanco in 'View.ConectaBanco.pas' {Frm_Conecta_Banco},
  Model.Conexao.Interfaces in 'Model\Model.Conexao.Interfaces.pas',
  Model.Query.Firedac in 'Model\Model.Query.Firedac.pas',
  Model.Conexao.Firedac in 'Model\Model.Conexao.Firedac.pas',
  Frame.ListarCleinte in 'Frames\Frame.ListarCleinte.pas' {Frame_ListarCliente: TFrame},
  Frame.ClienteSelecionado in 'Frames\Frame.ClienteSelecionado.pas' {Frame_ClienteSelecionado: TFrame},
  View.ClienteSelecionado in 'View.ClienteSelecionado.pas' {Frm_ClienteSelecioando};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(TFrm_ClienteSelecioando, Frm_ClienteSelecioando);
  Application.Run;
end.
