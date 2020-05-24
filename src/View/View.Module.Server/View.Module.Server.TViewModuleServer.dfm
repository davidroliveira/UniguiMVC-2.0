object ViewModuleServer: TViewModuleServer
  OldCreateOrder = False
  TempFolder = 'temp\'
  Title = 'New Application'
  SuppressErrors = []
  Bindings = <>
  ServerMessages.UnavailableErrMsg = 'Erro de comunica'#231#227'o'
  ServerMessages.LoadingMessage = 'Carregando...'
  ServerMessages.InvalidSessionMessage = 'Sess'#227'o inv'#225'lida ou tempo limite da sess'#227'o.'
  ServerMessages.TerminateMessage = 'Sess'#227'o da Web encerrada.'
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_1
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  Options = [soShowLicenseInfo, soAutoPlatformSwitch, soRestartSessionOnTimeout, soWipeShadowSessions, soDontCompressDownloads]
  ConnectionFailureRecovery.ErrorMessage = 'Erro de conex'#227'o'
  ConnectionFailureRecovery.RetryMessage = 'Tentando novamente...'
  Height = 150
  Width = 215
end
