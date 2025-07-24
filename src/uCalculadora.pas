unit uCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtEntrada: TEdit;
    btnSuma: TButton;
    btnResta: TButton;
    btnMulti: TButton;
    btnDiv: TButton;
    btnIgual: TButton;
    lblResultado: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnSumaClick(Sender: TObject);
    procedure btnRestaClick(Sender: TObject);
    procedure btnMultiClick(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);
  private
    operacion: Char;
    valor1: Double;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  edtEntrada.Text := '';
  lblResultado.Caption := 'Resultado:';
  operacion := #0;
  valor1 := 0;
end;

procedure TForm1.btnSumaClick(Sender: TObject);
begin
  valor1 := StrToFloatDef(edtEntrada.Text, 0);
  operacion := '+';
  edtEntrada.Clear;
end;

procedure TForm1.btnRestaClick(Sender: TObject);
begin
  valor1 := StrToFloatDef(edtEntrada.Text, 0);
  operacion := '-';
  edtEntrada.Clear;
end;

procedure TForm1.btnMultiClick(Sender: TObject);
begin
  valor1 := StrToFloatDef(edtEntrada.Text, 0);
  operacion := '*';
  edtEntrada.Clear;
end;

procedure TForm1.btnDivClick(Sender: TObject);
begin
  valor1 := StrToFloatDef(edtEntrada.Text, 0);
  operacion := '/';
  edtEntrada.Clear;
end;

procedure TForm1.btnIgualClick(Sender: TObject);
var
  valor2, resultado: Double;
begin
  valor2 := StrToFloatDef(edtEntrada.Text, 0);
  resultado := 0;

  case operacion of
    '+': resultado := valor1 + valor2;
    '-': resultado := valor1 - valor2;
    '*': resultado := valor1 * valor2;
    '/':
      if valor2 <> 0 then
        resultado := valor1 / valor2
      else begin
        ShowMessage('Error: División por cero');
        Exit;
      end;
  else
    ShowMessage('Debe seleccionar una operación');
    Exit;
  end;

  lblResultado.Caption := 'Resultado: ' + FloatToStr(resultado);
  edtEntrada.Clear;
end;

end.

