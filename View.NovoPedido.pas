unit View.NovoPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Vcl.StdCtrls, dxGDIPlusClasses, cxImage, Data.DB,
  Vcl.Grids, Vcl.DBGrids,Model.Query.Firedac, Model.Conexao.Interfaces,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCurrencyEdit, cxDBEdit;

type
  TFrm_View_Pedido = class(TForm)
    DaItemPedido: TDataSource;
    DaProduto: TDataSource;
    Panel4: TPanel;
    Label2: TLabel;
    Panel1: TPanel;
    Label3: TLabel;
    LblCodigoCliente: TLabel;
    PnlBuscal: TPanel;
    Label7: TLabel;
    cxImage1: TcxImage;
    EdtFiltro: TEdit;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    cxImage3: TcxImage;
    BtnCancelar: TPanel;
    Label5: TLabel;
    BtnSalvar: TPanel;
    Label6: TLabel;
    PnlIncluirItem: TPanel;
    Label4: TLabel;
    Label9: TLabel;
    LblQuantidade: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    LblTotal: TLabel;
    Panel5: TPanel;
    cxImage4: TcxImage;
    LcbProduto: TcxLookupComboBox;
    Panel6: TPanel;
    cxImage5: TcxImage;
    Panel7: TPanel;
    cxImage6: TcxImage;
    BtnSalvarItem: TPanel;
    Label8: TLabel;
    Panel9: TPanel;
    cxImage7: TcxImage;
    EdtValor: TcxDBCurrencyEdit;
    PnlIncluirPedido: TPanel;
    Label1: TLabel;
    cxImage2: TcxImage;
    ScrollBox1: TScrollBox;
    procedure FormClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnCancelarClick(Sender: TObject);
    procedure EdtFiltroChange(Sender: TObject);
    procedure EdtFiltroEnter(Sender: TObject);
    procedure EdtFiltroExit(Sender: TObject);
    procedure ClickEvent(Sander : TObject);
    procedure FormShow(Sender: TObject);
    procedure cxImage2Click(Sender: TObject);
    procedure cxImage5Click(Sender: TObject);
    procedure cxImage6Click(Sender: TObject);
    procedure BtnSalvarItemClick(Sender: TObject);
    procedure EdtValorExit(Sender: TObject);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure EdtValorPropertiesChange(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
  private
    FQueryFiltro,FQueryCliente,FQueryProduto,FQueryPedido,FQueryItemPedido : iQuery;
    FQuantidade : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_View_Pedido: TFrm_View_Pedido;

implementation


{$R *.dfm}

uses View.principal, Frame.ListarCleinte, Frame.ClienteSelecionado,
  View.ClienteSelecionado, Classe.Alterar.ComponentesVisuais;

procedure TFrm_View_Pedido.BtnCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_View_Pedido.ClickEvent(Sander: TObject);
begin
  FQueryCliente :=
    TModelQueryFiredac
      .New(Frm_Principal.FConexao)
      .SQL('select codigo,nome,cidade,uf from cliente '+
           'where codigo = '''+Frm_Principal.ApenasNumeros(TComponent(Sander).Name)+''' order by nome');

  if not assigned(Frm_ClienteSelecioando) then
    Frm_ClienteSelecioando := TFrm_ClienteSelecioando.Create(Application);
  Frm_ClienteSelecioando.Parent := Panel1;
  Frm_ClienteSelecioando.LblCliente.Caption := FQueryCliente.Query.FieldByName('nome').AsString;
  Frm_ClienteSelecioando.LblCidade.Caption := FQueryCliente.Query.FieldByName('cidade').AsString +' - '+
                         FQueryCliente.Query.FieldByName('uf').AsString;
  LblCodigoCliente.Caption := FQueryCliente.Query.FieldByName('codigo').AsString;

  FQueryPedido :=
    TModelQueryFiredac
      .New(Frm_Principal.FConexao)
      .SQL('select * from  pedido');
  FQueryPedido.Query.Append;
  FQueryPedido.Query.FieldByName('data_emissao').AsDateTime := Now;
  FQueryPedido.Query.FieldByName('codigo_cliente').AsString := LblCodigoCliente.Caption;
  FQueryPedido.Query.FieldByName('valor_total').AsFloat := 0;
  FQueryPedido.Query.Post;

  FQueryPedido.Query.FieldByName('pedido').AsInteger;

  TAlterarComponenteVisual
    .New
    .MakeRounded(Frm_ClienteSelecioando.BtnAlterarCliente,20)
    .Destroy;

  Frm_ClienteSelecioando.Show;
  ScrollBox1.Visible := False;
  PnlIncluirPedido.Visible := True;
end;

procedure TFrm_View_Pedido.cxImage2Click(Sender: TObject);
begin
  if LblCodigoCliente.Caption = '' then
  begin
    MessageDlg('Selectione um produto',mtError,[mbOK],0,mbOK);
    Exit;
  end;

  PnlIncluirItem.Visible := True;
  FQueryProduto :=
    TModelQueryFiredac
      .New(Frm_Principal.FConexao)
      .SQL('select * from  produto order by descricao');
  DaProduto.DataSet :=  FQueryProduto.Query;
end;

procedure TFrm_View_Pedido.cxImage5Click(Sender: TObject);
begin
  if FQuantidade <> 0 then
    FQuantidade := FQuantidade - 1;
  LblQuantidade.Caption := intToStr(FQuantidade);

  LblTotal.Caption := FloatToStr(FQuantidade * EdtValor.Value);
end;

procedure TFrm_View_Pedido.cxImage6Click(Sender: TObject);
begin
  FQuantidade := FQuantidade + 1;
  LblQuantidade.Caption := intToStr(FQuantidade);

  LblTotal.Caption := FloatToStr(FQuantidade * EdtValor.Value);
end;

procedure TFrm_View_Pedido.cxLookupComboBox1PropertiesChange(Sender: TObject);
begin
  EdtValor.Value := FQueryProduto.Query.FieldByName('preco_venda').AsFloat;
  LblTotal.Caption := FloatToStr(FQuantidade * EdtValor.Value);
end;

procedure TFrm_View_Pedido.EdtFiltroChange(Sender: TObject);
Var i : Word;
begin
  ScrollBox1.Visible := True;

  if ScrollBox1.ControlCount <> 0 then
  begin
    for i := ScrollBox1.ControlCount - 1 downto 0 do
      ScrollBox1.Controls[i].Destroy;
  end;

  FQueryFiltro :=
    TModelQueryFiredac
      .New(Frm_Principal.FConexao)
      .SQL('select codigo,nome,cidade from cliente where nome like ''%'+EdtFiltro.Text+'%'' order by nome');


  while not FQueryFiltro.Query.Eof do
  begin
    with TFrame_ListarCliente.Create(ScrollBox1) do
    begin
      LblNome.Caption :=  FQueryFiltro.Query.FieldByName('nome').AsString;
      LblCidade.Caption :=  FQueryFiltro.Query.FieldByName('cidade').AsString;
      name := 'id' + FQueryFiltro.Query.FieldByName('codigo').AsString;
      SelecionarCliente := ClickEvent;
      Parent := ScrollBox1;
      AutoSize := False;
      Align := alTop;
    end;
    FQueryFiltro.Query.Next;
  end;

end;

procedure TFrm_View_Pedido.EdtFiltroEnter(Sender: TObject);
begin
  ScrollBox1.Visible := True;
end;

procedure TFrm_View_Pedido.EdtFiltroExit(Sender: TObject);
begin
    ScrollBox1.Visible := False;
end;

procedure TFrm_View_Pedido.EdtValorExit(Sender: TObject);
begin
  LblTotal.Caption := FloatToStr(FQuantidade * EdtValor.Value);
end;

procedure TFrm_View_Pedido.EdtValorPropertiesChange(Sender: TObject);
begin
  LblTotal.Caption := FloatToStr(FQuantidade * EdtValor.Value);
end;

procedure TFrm_View_Pedido.FormClick(Sender: TObject);
begin
  FreeAndNil(Frm_View_Pedido);
end;

procedure TFrm_View_Pedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Frm_View_Pedido := Nil;
end;

procedure TFrm_View_Pedido.FormShow(Sender: TObject);
begin
  TAlterarComponenteVisual
    .New
    .MakeRounded(Panel1,20)
    .MakeRounded(Panel2,20)
    .MakeRounded(PnlBuscal,20)
    .MakeRounded(BtnCancelar,20)
    .MakeRounded(BtnSalvar,20)
    .MakeRounded(PnlIncluirPedido,20)
    .MakeRounded(PnlIncluirItem,20)
    .MakeRounded(Panel5,20)
    .MakeRounded(Panel9,20)
    .MakeRounded(Panel6,20)
    .MakeRounded(Panel7,20)
    .MakeRounded(BtnSalvarItem,20)
    .Destroy;
end;

procedure TFrm_View_Pedido.BtnSalvarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_View_Pedido.BtnSalvarItemClick(Sender: TObject);
begin
 if LcbProduto.EditValue = Null then
  begin
    MessageDlg('Selectione um produto',mtError,[mbOK],0,mbOK);
    Exit;
  end;

  PnlIncluirItem.Visible := False;
  FQueryItemPedido :=
    TModelQueryFiredac
      .New(Frm_Principal.FConexao)
      .SQL('select * from item_pedido');

  FQueryItemPedido.Query.Append;
  FQueryItemPedido.Query.FieldByName('codigo_pedido').AsInteger := FQueryPedido.Query.FieldByName('pedido').AsInteger;
  FQueryItemPedido.Query.FieldByName('codigo_produto').AsInteger := LcbProduto.EditValue;
  FQueryItemPedido.Query.FieldByName('quantidade').AsFloat := StrToFloat(LblQuantidade.Caption);
  FQueryItemPedido.Query.FieldByName('valor_unitario').AsFloat := EdtValor.Value;
  FQueryItemPedido.Query.FieldByName('valor_total').AsFloat := StrToFloat(LblTotal.Caption);
  FQueryItemPedido.Query.Post;

  FQueryItemPedido :=
    TModelQueryFiredac
      .New(Frm_Principal.FConexao)
      .SQL('select * from item_pedido i '+
                       'inner join produto p on p.codigo = i.codigo_produto '+
                       'where i.codigo_pedido = '+ FQueryPedido.Query.FieldByName('pedido').AsString);

  DaItemPedido.DataSet := FQueryItemPedido.Query;
end;

end.
