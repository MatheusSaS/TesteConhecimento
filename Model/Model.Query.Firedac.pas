unit Model.Query.Firedac;

interface

uses FireDAC.Stan.Intf, FireDAC.Stan.Option,FireDAC.Stan.Error, FireDAC.UI.Intf,
     FireDAC.Phys.Intf, FireDAC.Stan.Def,FireDAC.Stan.Pool, FireDAC.Stan.Async,
     FireDAC.Phys, FireDAC.Phys.MySQL,FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
     FireDAC.Comp.UI, Data.DB,FireDAC.Comp.Client,System.SysUtils,Model.Conexao.Interfaces,
     FireDAC.DApt;

Type
  TModelQueryFiredac = class(TInterfacedObject, iQuery)
    private
      FParent : iConexao;
      FQuery : TFDQuery;
    public
      function Query : TFDQuery;
      function SQL(Value : String) : iQuery;
      function Insert(Value : String) : iQuery;
      function Migration : iQuery;
      function LerObjeto(FTable : String) : Boolean;
      constructor Create(Parent : iConexao);
      destructor Destroy;override;
      class function New(Parent : iConexao) : iQuery;
  end;

implementation

uses
  Vcl.Dialogs;

{ TModelQueryFiredac }

constructor TModelQueryFiredac.Create(Parent: iConexao);
begin
  FParent := Parent;
  FQuery := TFDQuery.Create(nil);
  FQuery.Connection := TFDConnection(FParent.Connection);
end;

destructor TModelQueryFiredac.Destroy;
begin
  FreeAndNil(FQuery);
  inherited;
end;

function TModelQueryFiredac.Insert(Value: String): iQuery;
begin
  Result := Self;
  FQuery.SQL.Add(Value);
  FQuery.ExecSQL;
end;

function TModelQueryFiredac.LerObjeto(FTable : String): Boolean;
begin
  with FQuery do
  begin
    Close;
    SQL.Text := 'SHOW TABLES LIKE '''+FTable+''' ';
    Active := True;
  end;

  if FQuery.RecordCount = 0 then
    Result := True
  else
    Result := False;
end;

function TModelQueryFiredac.Migration: iQuery;
begin
  if LerObjeto('cliente') then
  begin
    try
      with FQuery do
      begin
        Close;
        SQL.Text := 'CREATE TABLE cliente(          '+
                    'codigo int AUTO_INCREMENT,     '+
                    'nome varchar(50) NOT NULL,     '+
                    'cidade varchar(50),            '+
                    'uf varchar(2),                 '+
                    'PRIMARY KEY (codigo),          '+
                    'index(codigo),                 '+
                    'index(nome))';
        ExecSQL;
      end;
    except on E:Exception do
      begin
        MessageDlg('Erro na Migração da tabela cliente: '+E.Message,mtError,[mbOK],0,mbOK);
        Exit;
      end;
    end;

    MessageDlg('Migração da tabela cliente, realizada corretamente!',mtInformation,[mbOK],0,mbOK);
  end;

  if LerObjeto('produto') then
  begin
     try
      with FQuery do
      begin
        Close;
        SQL.Text := 'CREATE TABLE produto(             '+
                    'codigo int AUTO_INCREMENT,        '+
                    'descricao varchar(30) NOT NULL,   '+
                    'preco_venda float NOT NULL,       '+
                    'PRIMARY KEY (codigo),             '+
                    'index(codigo))';
        ExecSQL;
      end;
    except on E:Exception do
      begin
        MessageDlg('Erro na Migração da tabela produto: '+E.Message,mtError,[mbOK],0,mbOK);
        Exit;
      end;
    end;

    MessageDlg('Migração da tabela produto, realizada corretamente!',mtInformation,[mbOK],0,mbOK);
  end;

  if LerObjeto('pedido') then
  begin
    try
      with FQuery do
      begin
        Close;
        SQL.Text := 'CREATE TABLE pedido(                                      '+
                    'pedido int AUTO_INCREMENT,                                '+
                    'data_emissao date NOT NULL,                               '+
                    'codigo_cliente int NOT NULL,                              '+
                    'valor_total float NOT NULL,                               '+
                    'PRIMARY KEY (pedido),                                     '+
                    'FOREIGN KEY (codigo_cliente) REFERENCES cliente(codigo),  '+
                    'index(pedido),                                            '+
                    'index(codigo_cliente))';
        ExecSQL;
      end;
    except on E:Exception do
      begin
        MessageDlg('Erro na Migração da tabela produto: '+E.Message,mtError,[mbOK],0,mbOK);
        Exit;
      end;
    end;

     MessageDlg('Migração da tabela pedido, realizada corretamente!',mtInformation,[mbOK],0,mbOK);
  end;

  if LerObjeto('item_pedido') then
  begin
    try
      with FQuery do
      begin
        Close;
        SQL.Text := 'CREATE TABLE item_pedido(                                  '+
                    'codigo int AUTO_INCREMENT,                                 '+
                    'codigo_pedido int NOT NULL,                                '+
                    'codigo_produto int NOT NULL,                               '+
                    'quantidade float NOT NULL,                                 '+
                    'valor_unitario float NOT NULL,                             '+
                    'valor_total float NOT NULL,                                '+
                    'PRIMARY KEY (codigo),                                      '+
                    'FOREIGN KEY (codigo_pedido) REFERENCES pedido(pedido),     '+
                    'FOREIGN KEY (codigo_produto) REFERENCES produto(codigo),   '+
                    'index(codigo),                                             '+
                    'index(codigo_pedido))';
        ExecSQL;
      end;
    except on E:Exception do
      begin
        MessageDlg('Erro na Migração da tabela produto: '+E.Message,mtError,[mbOK],0,mbOK);
        Exit;
      end;
    end;

     MessageDlg('Migração da tabela item pedido, realizada corretamente!',mtInformation,[mbOK],0,mbOK);
  end;
end;

class function TModelQueryFiredac.New(Parent: iConexao): iQuery;
begin
  Result := Self.Create(Parent);
end;

function TModelQueryFiredac.Query: TFDQuery;
begin
  Result := FQuery;
end;

function TModelQueryFiredac.SQL(Value: String): iQuery;
begin
  Result := Self;
  FQuery.SQL.Add(Value);
  FQuery.Active := True;
  FQuery.First;
end;

end.

