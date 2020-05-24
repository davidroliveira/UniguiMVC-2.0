unit Controller.Form.Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIApplication,
  uniGUIBaseClasses, uniGUIVars,

  View.Form.Main;

type
  TControllerFormMain = class
  private
    type
      TViewFormMain = class(View.Form.Main.TViewFormMain)
      strict private
        FController: TControllerFormMain;
      public
        constructor Create(Aowner: TComponent); override;
      end;
  strict private
    FView: TControllerFormMain.TViewFormMain;
    procedure Init;
    procedure UniFormDestroy(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  public
    constructor Create(Aview: TControllerFormMain.TViewFormMain); reintroduce;
  end;

implementation

constructor TControllerFormMain.TViewFormMain.Create(Aowner: TComponent);
begin
  inherited Create(Aowner);
  FController := TControllerFormMain.Create(Self);
end;

constructor TControllerFormMain.Create(Aview: TControllerFormMain.TViewFormMain);
begin
  inherited Create;
  FView := Aview;
  Init;
end;

procedure TControllerFormMain.Init;
begin
  FView.OnCreate := UniFormCreate;
  FView.UniButton1.OnClick := Self.UniButton1Click;
  FView.OnDestroy := Self.UniFormDestroy;
end;

procedure TControllerFormMain.UniButton1Click(Sender: TObject);
begin
  FView.ShowMessage(FView.UniEdit1.Text);
end;

procedure TControllerFormMain.UniFormCreate(Sender: TObject);
begin
  FView.UniEdit1.Text := 'Controller ' + UniSession.SessionId;
end;

procedure TControllerFormMain.UniFormDestroy(Sender: TObject);
begin
  Self.Free;
end;

initialization
  RegisterAppFormClass(TControllerFormMain.TViewFormMain);
end.
