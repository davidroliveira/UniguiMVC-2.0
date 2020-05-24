program MVC.Unigui;

uses
  Forms,
  View.Module.Server in 'src\View\View.Module.Server.pas' {ViewModuleServer: TUniGUIServerModule},
  Controller.Module.Server in 'src\Controller\Controller.Module.Server.pas',
  View.Module.Main in 'src\View\View.Module.Main.pas' {ViewModuleMain: TUniGUIMainModule},
  Controller.Module.Main in 'src\Controller\Controller.Module.Main.pas',
  View.Form.Main in 'src\View\View.Form.Main.pas' {ViewFormMain: TUniForm},
  Controller.Form.Main in 'src\Controller\Controller.Form.Main.pas',
  View.Form.Login in 'src\View\View.Form.Login.pas' {ViewFormLogin: TUniLoginForm},
  Controller.Form.Login in 'src\Controller\Controller.Form.Login.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TControllerModuleServer.GetInstance;
  Application.Run;
end.