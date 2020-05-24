unit View.Form.Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniButton,
  uniGUIVars, uniEdit;

type
  TViewFormLogin = class(TUniLoginForm)
    BtnLogin: TUniButton;
    BtnCancelar: TUniButton;
    EdtLogin: TUniEdit;
    EdtSenha: TUniEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
