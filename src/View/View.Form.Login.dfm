object ViewFormLogin: TViewFormLogin
  Left = 0
  Top = 0
  ClientHeight = 299
  ClientWidth = 852
  Caption = 'ViewFormLogin'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object BtnLogin: TUniButton
    Left = 152
    Top = 224
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'BtnLogin'
    TabOrder = 2
  end
  object BtnCancelar: TUniButton
    Left = 280
    Top = 224
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'BtnCancelar'
    TabOrder = 3
  end
  object EdtLogin: TUniEdit
    Left = 248
    Top = 80
    Width = 121
    Hint = ''
    Text = 'EdtLogin'
    TabOrder = 0
  end
  object EdtSenha: TUniEdit
    Left = 248
    Top = 124
    Width = 121
    Hint = ''
    PasswordChar = '*'
    Text = 'EdtSenha'
    TabOrder = 1
  end
end
