unit Unit1;

interface

uses
//importando uma classe
  DUnitX.TestFramework, Unit2;

type
  [TestFixture]
  TTestExercicio01 = class
  //criar novo método
  private
    // classe desconhecida: erro
    exercicio01: TExercicio01;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    // alterar nome do caso
    [TestCase('Caso 01 - Dobro','1,2')]
    [TestCase('Caso 02 - Dobro','2,4')]
    [TestCase('Caso 03 - Dobro','3,6')]
    [TestCase('Caso 04 - Dobro','-5,-10')]
    // renomear o teste
    procedure TestDobro1(const Entrada, Saida : Integer);

    [Test]
    [TestCase('Caso 02 - Area','2,4,8')]
    [TestCase('Caso 03 - Area','3,6,18')]
    [TestCase('Caso 04 - Area','-5,-10, 50')]
    procedure TestArea(const Base, Altura, Saida : Integer);

    [Test]
    procedure TestDesconto(const Valor, Desconto, Saida : Integer);

    [Test]
    procedure TestMaior(const Primeiro, Segundo, Terceiro, Saida: Integer);
  end;

implementation

procedure TTestExercicio01.Setup;
begin
  // instancia da classe
  exercicio01 := TExercicio01.Create;
end;

procedure TTestExercicio01.TearDown;
begin
  exercicio01.Free;
end;

//método de teste
 //ctrl + shift + c - completar o que falta
 //declara mais de um variavel e tipa uma única vez
procedure TTestExercicio01.TestArea(const Base, Altura, Saida: Integer);
begin
  Assert.AreEqual(exercicio01.Area(Base, Altura), Saida);
end;

procedure TTestExercicio01.TestDesconto(const Valor, Desconto, Saida: Integer);
begin

end;

procedure TTestExercicio01.TestDobro1(const Entrada, Saida: Integer);
begin
  // inserir dados da função
  // verificar, assert
  Assert.AreEqual(exercicio01.Dobro(Entrada), Saida);
end;

procedure TTestExercicio01.TestMaior(const Primeiro, Segundo, Terceiro,
  Saida: Integer);
begin

end;

initialization
  TDUnitX.RegisterTestFixture(TTestExercicio01);
end.
