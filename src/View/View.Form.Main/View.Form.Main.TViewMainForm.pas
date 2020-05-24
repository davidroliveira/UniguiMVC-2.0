unit View.Form.Main.TViewMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniButton, uniGUIBaseClasses,
  uniEdit;

type
  TViewMainForm = class(TUniForm)
    UniEdit1: TUniEdit;
    UniButton1: TUniButton;
  end;

implementation

{$R *.dfm}

end.
