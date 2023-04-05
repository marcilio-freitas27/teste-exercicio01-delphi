unit Unit2;

interface

// criando uma classe
type
  TExercicio01 = class
  //criando métodos
  public
    function Dobro(ANumero: Integer): Integer;
    function Area(ANumero, BNumero: Integer): Integer;
    function Desconto(Valor, Desconto: Integer): Integer;
    function Maior(Primeiro, Segundo, Terceiro: Integer): Integer;
  end;

implementation

//criando funcao Dobro
function TExercicio01.Area(ANumero, BNumero: Integer): Integer;
begin
  Result := ANumero * BNumero;
end;

function TExercicio01.Desconto(Valor, Desconto: Integer): Integer;
begin

end;

function TExercicio01.Dobro(ANumero: Integer): Integer;
begin
  Result := ANumero * 2;
end;


function TExercicio01.Maior(Primeiro, Segundo, Terceiro: Integer): Integer;
begin

end;

end.
