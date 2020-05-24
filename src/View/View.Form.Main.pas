unit View.Form.Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniButton, uniGUIBaseClasses,
  uniEdit;

type
  TViewFormMain = class(TUniForm)
    UniEdit1: TUniEdit;
    UniButton1: TUniButton;
  end;

implementation

{$R *.dfm}

end.
