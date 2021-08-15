unit Model.Conexao.Firedac;

interface

uses FireDAC.Stan.Intf, FireDAC.Stan.Option,FireDAC.Stan.Error, FireDAC.UI.Intf,
     FireDAC.Phys.Intf, FireDAC.Stan.Def,FireDAC.Stan.Pool, FireDAC.Stan.Async,
     FireDAC.Phys, FireDAC.Phys.MySQL,FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
     FireDAC.Comp.UI, Data.DB,FireDAC.Comp.Client,Model.Conexao.Interfaces,Vcl.Forms;

Type
    TModelConexaoParametros = class(TInterfacedObject, iConexaoParametros)
  private
    FDriverName : String;
    FDatabase : String;
    FUser : String;
    FPassword: String;
    FServer: String;
    FPort : String;
  public
    constructor Create;
    destructor Destroy;override;
    class function New : iConexaoParametros;
    function DriverName: String;overload;
    function DriverName(Values : String) : iConexaoParametros;overload;
    function Database : String;overload;
    function Database(Values : String) : iConexaoParametros;overload;
    function User : String;overload;
    function User(Values : String) : iConexaoParametros;overload;
    function Password : String;overload;
    function Password(Values : String) : iConexaoParametros;overload;
    function Server : String;overload;
    function Server(Values : String) : iConexaoParametros;overload;
    function Port : String;overload;
    function Port(Values : String) : iConexaoParametros;overload;
  end;

  TModelConexaoFiredac = class(TInterfacedObject,iConexao)
    private
      FConexao : TFDConnection;
      FConexaoParametros : iConexaoParametros;
      FDriverMySql : TFDPhysMySQLDriverLink;
    public
      function Connection : TCustomConnection;
      constructor Create(ConexaoParametros : iConexaoParametros);
      destructor Destroy;override;
      class function New(ConexaoParametros : iConexaoParametros) : iConexao;
  end;

implementation

uses
  System.SysUtils, Vcl.Dialogs;

{ TModelConexaoFiredac }

function TModelConexaoFiredac.Connection: TCustomConnection;
begin
  Result := FConexao;
end;

constructor TModelConexaoFiredac.Create(ConexaoParametros : iConexaoParametros);
begin
  FConexaoParametros := ConexaoParametros;
  //FDriverMySql := TFDPhysMySQLDriverLink.Create(nil);
  //FDriverMySql.VendorLib := ExtractFilePath(Application.ExeName)+'libmysql.dll';

  FConexao := TFDConnection.Create(nil);

  FConexao.Params.Clear;
  FConexao.Params.Add('SERVER='+FConexaoParametros.Server);
  FConexao.Params.Add('User_name='+FConexaoParametros.User);
  FConexao.Params.Add('Password='+FConexaoParametros.Password);
  FConexao.Params.Add('DATABASE='+FConexaoParametros.Database);
  FConexao.Params.Add('MARS=yes');
  FConexao.Params.Add('DriverID='+FConexaoParametros.DriverName);
  FConexao.Connected := True;


end;

destructor TModelConexaoFiredac.Destroy;
begin
  FreeAndNil(FConexao);
  FreeAndNil(FDriverMySql);
  inherited;
end;

class function TModelConexaoFiredac.New(ConexaoParametros : iConexaoParametros): iConexao;
begin
   Result := Self.Create(ConexaoParametros);
end;




{ TModelConexaoParametros }

constructor TModelConexaoParametros.Create;
begin

end;

function TModelConexaoParametros.Database(Values: String): iConexaoParametros;
begin
  Result := Self;
  FDatabase := Values;
end;

function TModelConexaoParametros.Database: String;
begin
  Result := FDatabase;
end;

destructor TModelConexaoParametros.Destroy;
begin

  inherited;
end;

function TModelConexaoParametros.DriverName: String;
begin
  Result := FDriverName;
end;

function TModelConexaoParametros.DriverName(Values: String): iConexaoParametros;
begin
  Result := Self;
  FDriverName := Values;
end;

class function TModelConexaoParametros.New: iConexaoParametros;
begin
  Result := Self.Create;
end;

function TModelConexaoParametros.Password(Values: String): iConexaoParametros;
begin
  Result := Self;
  FPassword := Values;
end;

function TModelConexaoParametros.Port(Values: String): iConexaoParametros;
begin
  Result := Self;
  FPort := Values;
end;

function TModelConexaoParametros.Server(Values: String): iConexaoParametros;
begin
  Result := Self;
  FServer:= Values;
end;

function TModelConexaoParametros.User(Values: String): iConexaoParametros;
begin
  Result := Self;
  FUser := Values;
end;

function TModelConexaoParametros.Password: String;
begin
  Result := FPassword;
end;

function TModelConexaoParametros.Port: String;
begin
  Result := FPort;
end;

function TModelConexaoParametros.Server: String;
begin
 Result := FServer;
end;

function TModelConexaoParametros.User: String;
begin
  Result := FUser;
end;

end.

