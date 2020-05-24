unit View.Module.Server;

interface

uses
  Classes, SysUtils, uniGUIServer, uniGUIMainModule, uniGUIApplication, uIdCustomHTTPServer,
  uniGUITypes;

type
  TViewModuleServer = class(TUniGUIServerModule);

implementation

{$R *.dfm}

end.
