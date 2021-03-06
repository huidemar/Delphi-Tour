unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.StrUtils;

type
  TFMain = class(TForm)
    btForInString: TButton;
    btSoNumeros: TButton;
    btContarLetra: TButton;
    procedure btForInStringClick(Sender: TObject);
    procedure btSoNumerosClick(Sender: TObject);
    procedure btContarLetraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

{$R *.dfm}

procedure TFMain.btContarLetraClick(Sender: TObject);
const ComAcento = '����������������������������';
var
  Letra: char;
  Texto:string;
  QuantidadeLetra: integer;
begin
  Texto := UpperCase('Ol� 1 Mundo! 2');
  Texto := UpperCase(Texto);
  QuantidadeLetra := 0;
  for Letra in Texto do
  begin
    if (Letra in ['A'..'Z']) or (Pos(Letra, ComAcento)<>0) then
      Inc(QuantidadeLetra);
  end;
  ShowMessage('A quantidade de letras do alfabato '+ifThen(QuantidadeLetra>1,'s�o:', '�:')+IntToStr(QuantidadeLetra) );
end;

procedure TFMain.btForInStringClick(Sender: TObject);
var
  Texto,
  Letra: string;
begin
  Texto := 'Ol� Mundo!';
  for Letra in Texto do
  begin
    ShowMessage(Letra);
  end;
end;

procedure TFMain.btSoNumerosClick(Sender: TObject);
var
 Letra: Char;
 Texto,
 SoNumeros: String;
begin
  SoNumeros := '';
  Texto := 'Ola 123 Mundo!456';
  for Letra in Texto do
  begin
    if Letra in ['0'..'9'] then
      SoNumeros := SoNumeros + Letra;
  end;
  ShowMessage(SoNumeros);
end;

end.
