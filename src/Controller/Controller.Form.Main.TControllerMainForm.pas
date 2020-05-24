unit Controller.Form.Main.TControllerMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIApplication,
  uniGUIBaseClasses, uniGUIVars,

  View.Form.Main.TViewMainForm;

type
  TControllerMainForm = class
  private
    type
      TViewMainForm = class(View.Form.Main.TViewMainForm.TViewMainForm)
      strict private
        FController: TControllerMainForm;
      public
        constructor Create(Aowner: TComponent); override;
      end;
  strict private
    FView: TControllerMainForm.TViewMainForm;
    procedure Init;
    procedure UniFormDestroy(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  public
    constructor Create(Aview: TControllerMainForm.TViewMainForm); reintroduce;
  end;

implementation

constructor TControllerMainForm.TViewMainForm.Create(Aowner: TComponent);
begin
  inherited Create(Aowner);
  FController := TControllerMainForm.Create(Self);
end;

constructor TControllerMainForm.Create(Aview: TControllerMainForm.TViewMainForm);
begin
  inherited Create;
  FView := Aview;
  Init;
end;

procedure TControllerMainForm.Init;
begin
  FView.OnCreate := UniFormCreate;
  FView.UniButton1.OnClick := Self.UniButton1Click;
  FView.OnDestroy := Self.UniFormDestroy;
end;

procedure TControllerMainForm.UniButton1Click(Sender: TObject);
begin
  FView.ShowMessage(FView.UniEdit1.Text);
end;

procedure TControllerMainForm.UniFormCreate(Sender: TObject);
begin
  FView.UniEdit1.Text := 'Controller ' + UniSession.SessionId;
end;

procedure TControllerMainForm.UniFormDestroy(Sender: TObject);
begin
  Self.Free;
end;

initialization
  RegisterAppFormClass(TControllerMainForm.TViewMainForm);
end.
