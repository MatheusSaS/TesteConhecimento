unit View.ConectaBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Vcl.StdCtrls, cxImage, Vcl.ExtCtrls, dxGDIPlusClasses,Model.Conexao.Interfaces;

type
  TFrm_Conecta_Banco = class(TForm)
    Panel: TPanel;
    Panel2: TPanel;
    Panel6: TPanel;
    Image2: TImage;
    Image1: TImage;
    GridPanel1: TGridPanel;
    PnlInfo: TPanel;
    Label3: TLabel;
    PnlDataBase: TPanel;
    cxImage1: TcxImage;
    EdtDatabase: TEdit;
    Label1: TLabel;
    PnlUser: TPanel;
    cxImage3: TcxImage;
    EdtUser: TEdit;
    Label4: TLabel;
    PnlPassword: TPanel;
    cxImage4: TcxImage;
    EdtPassword: TEdit;
    Label5: TLabel;
    PnlServer: TPanel;
    cxImage5: TcxImage;
    EdtServer: TEdit;
    Label6: TLabel;
    PnlPort: TPanel;
    cxImage2: TcxImage;
    EdtPort: TEdit;
    Label2: TLabel;
    BtnNovoPedido: TPanel;
    Label7: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Panel2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BtnNovoPedidoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Conecta_Banco: TFrm_Conecta_Banco;

implementation

{$R *.dfm}

uses Classe.Alterar.ComponentesVisuais, Model.Conexao.Firedac,
  Model.Query.Firedac, View.principal;

procedure TFrm_Conecta_Banco.BtnNovoPedidoClick(Sender: TObject);
Var FParametros : iConexaoParametros;
begin
  try
    FParametros :=
      TModelConexaoParametros
        .New
        .DriverName('MySQL')
        .Database(EdtDatabase.Text)
        .User(EdtUser.Text)
        .Password(EdtPassword.Text)
        .Server(EdtServer.Text)
        .Port(EdtPort.Text);

    Frm_Principal
     .FConexao :=
      TModelConexaoFiredac
        .New(FParametros);

  except on E:Exception do
    begin
      MessageDlg('Não foi possivel conectar ao banco de dados, Erro: '+E.Message,mtError,[mbOK],0,mbOK);
      Exit;
    end;
  end;
  MessageDlg('Conexão realizada corretamente',mtInformation,[mbOK],0,mbOK);

  TModelQueryFiredac
    .New(Frm_Principal.FConexao)
    .Migration;

  Close;
end;

procedure TFrm_Conecta_Banco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  Frm_Conecta_Banco := Nil;
end;

procedure TFrm_Conecta_Banco.FormCreate(Sender: TObject);
var rgn: HRGN;
begin
  rgn := CreateRoundRectRgn(0, 0,ClientWidth,ClientHeight,20,20);
  SetWindowRgn(Handle, rgn, True);

TAlterarComponenteVisual
    .New
    .MakeRounded(PnlInfo,20)
    .MakeRounded(PnlDataBase,20)
    .MakeRounded(PnlUser,20)
    .MakeRounded(PnlPassword,20)
    .MakeRounded(PnlServer,20)
    .MakeRounded(PnlPort,20)
    .MakeRounded(BtnNovoPedido,20)
    .Destroy;
end;

procedure TFrm_Conecta_Banco.Image2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrm_Conecta_Banco.Panel2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
SC_DRAGMOVE = $F012;
begin
  if Button = mbleft then
  begin
    ReleaseCapture;
    Frm_Conecta_Banco.Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
  end;
end;

end.
