unit Controller.Module.Main.TControllerModuleMain;

interface

uses
  uniGUIMainModule, SysUtils, Classes, UniGUIVars, uniGUIApplication,

  View.Module.Main.TViewModuleMain;

type
  TControllerModuleMain = class
  private
    type
      TViewModuleMain = class(View.Module.Main.TViewModuleMain.TViewModuleMain)
      public
        constructor Create(Aowner: TComponent; AUniApplication: TComponent); override;
      end;
  strict private
    FView: TControllerModuleMain.TViewModuleMain;
    procedure Init;
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
  Init;
end;

procedure TControllerModuleMain.Init;
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
