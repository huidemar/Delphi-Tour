unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Notification, Vcl.StdCtrls;

type
  TFMain = class(TForm)
    NotificationCenter: TNotificationCenter;
    btNotificacao: TButton;
    procedure btNotificacaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

{$R *.dfm}

procedure TFMain.btNotificacaoClick(Sender: TObject);
var
  Notificacao: TNotification;
begin
  try
    Notificacao := NotificationCenter.CreateNotification;
    Notificacao.Name := 'Delphi Tour';
    Notificacao.Title := 'Delphi Tour';
    Notificacao.AlertBody := 'Oi, eu sou uma mensagem de alerta';
    NotificationCenter.ScheduleNotification(Notificacao);
    NotificationCenter.PresentNotification(Notificacao);
  finally
    Notificacao.Free;
  end;
end;

end.
