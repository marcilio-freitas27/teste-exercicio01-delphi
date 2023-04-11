unit Unit2;

interface

// criando uma classe
type
  TExercicio01 = class
  //criando métodos
  public
    function Dobro(ANumero: Integer): Integer;
    function Area(ANumero, BNumero: Integer): Integer;
    function Desconto(Valor, Desconto: Integer): Single;
    function Maior(const Primeiro, Segundo, Terceiro: Integer): Integer;
  end;

implementation

//criando funcao Dobro
function TExercicio01.Area(ANumero, BNumero: Integer): Integer;
begin
  Result := ANumero * BNumero;
end;

function TExercicio01.Desconto(Valor, Desconto: Integer): Single;
begin

end;

function TExercicio01.Dobro(ANumero: Integer): Integer;
begin
  Result := ANumero * 2;
end;


function TExercicio01.Maior(const Primeiro, Segundo, Terceiro: Integer): Integer;
begin
  if(Primeiro > Segundo) and (Primeiro > Terceiro) then
  begin
    Result := Primeiro;
  end
  else
  begin
    if(Segundo > Primeiro) and (Segundo > Terceiro) then
    begin
      Result := Segundo;
    end
    else
    begin
      Result := Terceiro;
    end;
  end;
end;

end.
