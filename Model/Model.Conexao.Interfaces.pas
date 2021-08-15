unit Model.Conexao.Interfaces;

interface

uses Data.DB,FireDAC.Comp.Client;

type

  iConexao = interface
    ['{B9BF2C4C-4412-454F-B148-DAE3D11BA6E2}']
    function Connection : TCustomConnection;
  end;

  iConexaoParametros = interface
    ['{F6F0183B-0DE6-4BBA-8CF5-0F8F55D7144D}']
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

  iQuery = interface
    ['{CB2E989C-BB9B-4330-895B-A83C42DBE238}']
    function Query : TFDQuery;
    function SQL(Value : String) : iQuery;
    function Insert(Value : String) : iQuery;
    function Migration : iQuery;
    function LerObjeto(FTable : String) : Boolean;
  end;

implementation


end.
