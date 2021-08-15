unit Frame.ListarCleinte;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TNotifyEvent = procedure(Sander : TObject) of object;

  TFrame_ListarCliente = class(TFrame)
    Panel1: TPanel;
    LblCidade: TLabel;
    LblNome: TLabel;
    procedure Panel1Click(Sender: TObject);
  private
    FSelecionarCliente: TNotifyEvent;
    procedure SetSelecionarCliente(const Value: TNotifyEvent);
    { Private declarations }
  public
  property SelecionarCliente: TNotifyEvent read FSelecionarCliente write SetSelecionarCliente;
    { Public declarations }
  end;

implementation

{$R *.dfm}

{ TFrame_ListarCliente }

procedure TFrame_ListarCliente.Panel1Click(Sender: TObject);
begin
  SelecionarCliente(Self);
end;

procedure TFrame_ListarCliente.SetSelecionarCliente(const Value: TNotifyEvent);
begin
  FSelecionarCliente := Value;
end;

end.
