unit Controller.Module.Server;

interface

uses
  Forms, Classes, SysUtils, uniGUIServer, uniGUIMainModule, uniGUIApplication, uIdCustomHTTPServer,
  uniGUITypes, UniGUIVars,

  View.Module.Server;

type
  TControllerModuleServer = class
  private
    type
      TViewModuleServer = class(View.Module.Server.TViewModuleServer)
      protected
        procedure FirstInit; override;
      end;
  strict private
    type
      ECreateControllerModuleServer = class(Exception);
    var
      FView: TControllerModuleServer.TViewModuleServer;
    class var FInstancia: TControllerModuleServer;
    constructor CreatePrivate;
    procedure BindView;
    procedure UniGUIServerModuleDestroy(Sender: TObject);
  public
    constructor Create;
    class function GetInstance: TControllerModuleServer;
  end;

implementation

resourcestring
  ERROR_MENSAGEM_CREATE_CONTROLLER_MODULE_SERVER = 'Apenas uma instância da classe %s permitida';

constructor TControllerModuleServer.Create;
begin
  raise ECreateControllerModuleServer.CreateResFmt(@ERROR_MENSAGEM_CREATE_CONTROLLER_MODULE_SERVER, [Self.ClassName]);
end;

constructor TControllerModuleServer.CreatePrivate;
begin
  inherited Create;
  BindView;
end;

class function TControllerModuleServer.GetInstance: TControllerModuleServer;
begin
  if not Assigned(FInstancia) then
    FInstancia := TControllerModuleServer.CreatePrivate;
  Result := FInstancia;
end;

procedure TControllerModuleServer.BindView;
begin
  FView := TControllerModuleServer.TViewModuleServer.Create(Application);
  FView.OnDestroy := Self.UniGUIServerModuleDestroy;
end;

procedure TControllerModuleServer.UniGUIServerModuleDestroy(Sender: TObject);
begin
  Self.Free;
end;

procedure TControllerModuleServer.TViewModuleServer.FirstInit;
begin
  inherited;
  InitServerModule(Self);
end;

initialization
  RegisterServerModuleClass(TControllerModuleServer.TViewModuleServer);
end.
