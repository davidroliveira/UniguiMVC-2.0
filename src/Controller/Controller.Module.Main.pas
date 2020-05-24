unit Controller.Module.Main;

interface

uses
  uniGUIMainModule, SysUtils, Classes, UniGUIVars, uniGUIApplication,

  View.Module.Main;

type
  TControllerModuleMain = class
  private
    type
      TViewModuleMain = class(View.Module.Main.TViewModuleMain)
      public
        constructor Create(Aowner: TComponent; AUniApplication: TComponent); override;
      end;
  strict private
    FView: TControllerModuleMain.TViewModuleMain;
    procedure BindView;
    procedure UniGUIMainModuleCreate(Sender: TObject);
    procedure UniGUIMainModuleDestroy(Sender: TObject);
  public
    constructor Create(Aview: TControllerModuleMain.TViewModuleMain); reintroduce;
  end;

implementation

constructor TControllerModuleMain.TViewModuleMain.Create(Aowner, AUniApplication: TComponent);
begin
  inherited;
  TControllerModuleMain.Create(Self);
end;

constructor TControllerModuleMain.Create(Aview: TControllerModuleMain.TViewModuleMain);
begin
  inherited Create;
  FView := Aview;
  BindView;
end;

procedure TControllerModuleMain.BindView;
begin
  FView.OnCreate := Self.UniGUIMainModuleCreate;
  FView.OnDestroy := Self.UniGUIMainModuleDestroy;
end;

procedure TControllerModuleMain.UniGUIMainModuleCreate(Sender: TObject);
begin
  FView.Theme := 'gray';
end;

procedure TControllerModuleMain.UniGUIMainModuleDestroy(Sender: TObject);
begin
  Self.Free;
end;

initialization
  RegisterMainModuleClass(TControllerModuleMain.TViewModuleMain);
end.
