program MVC.Unigui;

uses
  Forms,
  View.Module.Server.TViewModuleServer in 'src\View\View.Module.Server\View.Module.Server.TViewModuleServer.pas' {ViewModuleServer: TUniGUIServerModule},
  View.Module.Main.TViewModuleMain in 'src\View\View.Module.Main\View.Module.Main.TViewModuleMain.pas' {ViewModuleMain: TUniGUIMainModule},
  View.Form.Main.TViewMainForm in 'src\View\View.Form.Main\View.Form.Main.TViewMainForm.pas' {ViewMainForm: TUniForm},
  Controller.Module.Server.TControllerModuleServer in 'src\Controller\Controller.Module.Server.TControllerModuleServer.pas',
  Controller.Module.Main.TControllerModuleMain in 'src\Controller\Controller.Module.Main.TControllerModuleMain.pas',
  Controller.Form.Main.TControllerMainForm in 'src\Controller\Controller.Form.Main.TControllerMainForm.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TControllerModuleServer.GetInstance;
  Application.Run;
end.
