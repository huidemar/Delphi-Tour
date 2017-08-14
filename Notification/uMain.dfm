object FMain: TFMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 230
  ClientWidth = 567
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btNotificacao: TButton
    Left = 176
    Top = 80
    Width = 169
    Height = 25
    Caption = 'Exiba a notifica'#231#227'o'
    TabOrder = 0
    OnClick = btNotificacaoClick
  end
  object NotificationCenter: TNotificationCenter
    Left = 368
    Top = 16
  end
end
