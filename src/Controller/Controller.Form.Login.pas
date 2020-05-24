unit Controller.Form.Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIApplication,
  uniGUIBaseClasses, uniGUIVars,

  View.Form.Login;

type
  TControllerFormLogin = class
  private
    type
      TViewFormLogin = class(View.Form.Login.TViewFormLogin)
      strict private
        FController: TControllerFormLogin;
      public
        constructor Create(Aowner: TComponent); override;
      end;
  strict private
    FView: TControllerFormLogin.TViewFormLogin;
    procedure BindView;
    procedure UniFormDestroy(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure BtnLoginClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  public
    constructor Create(Aview: TControllerFormLogin.TViewFormLogin); reintroduce;
  end;

implementation

constructor TControllerFormLogin.TViewFormLogin.Create(Aowner: TComponent);
begin
  inherited Create(Aowner);
  FController := TControllerFormLogin.Create(Self);
end;

constructor TControllerFormLogin.Create(Aview: TControllerFormLogin.TViewFormLogin);
begin
  inherited Create;
  FView := Aview;
  BindView;
end;

procedure TControllerFormLogin.BindView;
begin
  FView.OnCreate := UniFormCreate;
  FView.BtnLogin.OnClick := Self.BtnLoginClick;
  FView.BtnCancelar.OnClick := Self.BtnCancelarClick;
  FView.OnDestroy := Self.UniFormDestroy;
end;

procedure TControllerFormLogin.BtnLoginClick(Sender: TObject);
begin
  FView.ModalResult := mrOk;
end;

procedure TControllerFormLogin.BtnCancelarClick(Sender: TObject);
begin
  FView.ModalResult := mrCancel;
end;

procedure TControllerFormLogin.UniFormCreate(Sender: TObject);
begin
  FView.BtnLogin.Caption := 'Login';
end;

procedure TControllerFormLogin.UniFormDestroy(Sender: TObject);
begin
  Self.Free;
end;

initialization
  RegisterAppFormClass(TControllerFormLogin.TViewFormLogin);
end.
