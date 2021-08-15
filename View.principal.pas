unit View.principal;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, dxGDIPlusClasses, cxImage,
  Frame.ListaPedido, Vcl.Menus, cxButtons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.Phys.MSAccDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.ODBCBase,
  FireDAC.Phys.MSAcc, Data.DB, FireDAC.Comp.Client, Model.Conexao.Interfaces;

type

  TFrm_Principal = class(TForm)
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    Panel3: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    BtnNovoPedido: TPanel;
    Label2: TLabel;
    PnlBorderEditBusca: TPanel;
    PnlBuscal: TPanel;
    cxImage1: TcxImage;
    Edit1: TEdit;
    BtnFiltrar: TPanel;
    cxImage2: TcxImage;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel6: TPanel;
    Image2: TImage;
    Panel5: TPanel;
    Panel: TPanel;
    Image1: TImage;
    Panel7: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure BtnNovoPedidoClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Panel2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxImage2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    FQueryFiltro : iQuery;
    procedure ClickEvent(Sander : TObject);
    { Private declarations }
  public
    FConexao : iConexao;
    function ApenasNumeros(Texto: String): String;
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

{$R *.dfm}

uses Helper.principal, View.NovoPedido, Classe.Alterar.ComponentesVisuais,
  View.Configuracao, View.ConectaBanco, Model.Query.Firedac, Winapi.Windows;

procedure TFrm_Principal.BtnNovoPedidoClick(Sender: TObject);
begin
  if not assigned(Frm_View_Pedido) then
    Frm_View_Pedido := TFrm_View_Pedido.Create(Application);
  Frm_View_Pedido.Parent := Panel;
  Frm_View_Pedido.Show;
end;

procedure TFrm_Principal.ClickEvent(Sander : TObject);
begin

  ShowMessage(TComponent(Sander).Name);
end;

procedure TFrm_Principal.cxButton1Click(Sender: TObject);
begin
Close;
end;

procedure TFrm_Principal.cxImage2Click(Sender: TObject);
begin
  if not assigned(Frm_Configuracao) then
    Frm_Configuracao := TFrm_Configuracao.Create(Application);

  Frm_Configuracao.Parent := Panel;
  Frm_Configuracao.Show;
  TAlterarComponenteVisual
    .New
    .MakeRounded(Frm_Configuracao.Panel2,20)
    .Destroy;
end;

procedure TFrm_Principal.Edit1Change(Sender: TObject);
Var i : Word;
begin
  if ScrollBox1.ControlCount <> 0 then
  begin
    for i := ScrollBox1.ControlCount - 1 downto 0 do
      ScrollBox1.Controls[i].Destroy;
  end;

  FQueryFiltro :=
    TModelQueryFiredac
      .New(FConexao)
      .SQL('select * from pedido p inner join cliente c on c.codigo = p.codigo_cliente where (c.nome) like ''%'+Edit1.Text+'%'' ');

  while not FQueryFiltro.Query.Eof do
  begin
    with TFListarPedido.Create(ScrollBox1) do
    begin
      LblNome.Caption := FQueryFiltro.Query.FieldByName('nome').AsString;
      LblData.Caption := FQueryFiltro.Query.FieldByName('data_emissao').AsString;
      LblValor.Caption := FQueryFiltro.Query.FieldByName('valor_total').AsString;
      name := 'id' + FQueryFiltro.Query.FieldByName('pedido').AsString;
      EditarPedido := ClickEvent;
      Parent := ScrollBox1;
      AutoSize := False;
      Align := alTop;
    end;
    FQueryFiltro.Query.Next;
  end;
  ScrollBox1.Realign;
end;

procedure TFrm_Principal.Edit1Enter(Sender: TObject);
begin
  PnlBorderEditBusca.Visible := True;
end;

procedure TFrm_Principal.Edit1Exit(Sender: TObject);
begin
  PnlBorderEditBusca.Visible := False;
end;

procedure TFrm_Principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Frm_Principal := Nil;
end;

procedure TFrm_Principal.FormCreate(Sender: TObject);
var rgn: HRGN;
begin
  rgn := CreateRoundRectRgn(0, 0,ClientWidth,ClientHeight,20,20);
  SetWindowRgn(Handle, rgn, True);

  ReportMemoryLeaksOnShutdown := true;

  TAlterarComponenteVisual
    .New
    .MakeRounded(BtnNovoPedido,20)
    .MakeRounded(PnlBuscal,20)
    .MakeRounded(BtnFiltrar,20)
    .MakeRounded(PnlBorderEditBusca,20)
    .MakeRounded(Panel,20)
    .MakeRounded(Panel7,20)
    .Destroy;
end;

procedure TFrm_Principal.FormShow(Sender: TObject);
begin
  if not Assigned(Frm_Conecta_Banco) then
    Frm_Conecta_Banco := TFrm_Conecta_Banco.Create(Application);
  Frm_Conecta_Banco.ShowModal;
end;

procedure TFrm_Principal.Image2Click(Sender: TObject);
begin
Close;
end;

procedure TFrm_Principal.Panel2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
SC_DRAGMOVE = $F012;
begin
  if Button = mbleft then
  begin
    ReleaseCapture;
    Frm_Principal.Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
  end;
end;

function TFrm_Principal.ApenasNumeros(Texto: String): String;
var nI: Integer;
TextoLimpo: String;
begin
  TextoLimpo := '';
  For nI := 1 to Length(Texto) do
  begin
    if Texto[nI] in ['0'..'9',','] then
      TextoLimpo := TextoLimpo + Texto[nI];
  end;
    Result := TextoLimpo;
end;

end.
