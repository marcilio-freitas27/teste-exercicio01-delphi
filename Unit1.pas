unit Unit1;

interface

uses
//importando uma classe
  DUnitX.TestFramework, Unit2;

type
  [TestFixture]
  TTestExercicio01 = class
  //criar novo m�todo
  private
    // classe desconhecida: erro
    exercicio01: TExercicio01;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    // laterar nome do caso
    [TestCase('Caso 01 - Dobro','1,2')]
    [TestCase('Caso 02 - Dobro','2,4')]
    [TestCase('Caso 03 - Dobro','3,6')]
    [TestCase('Caso 04 - Dobro','-5,-10')]
    // renomear o teste
    procedure TestDobro1(const Entrada, Saida : Integer);

//    [Test]
//    [TestCase('Caso 02 - Dobro','2,4')]
//    [TestCase('Caso 03 - Dobro','3,6')]
//    [TestCase('Caso 04 - Dobro','-5,-10')]
//    procedure TestArea(const Base, Altura: Integer, cons Saida: Integer);
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

//m�todo de teste
// ctrl + shift + c - completar o que falta
// declara mais de um variavel e tipa uma �nica vez
//procedure TTestExercicio01.TestArea(const Base, Altura: Integer, const Saida: Integer);
//begin
//  Assert.AreEqual(exercicio01.Area(Base, Altura));
//end;

procedure TTestExercicio01.TestDobro1(const Entrada, Saida: Integer);
begin
  // inserir dados da fun��o
  // verificar, assert
  Assert.AreEqual(exercicio01.Dobro(Entrada), Saida);
end;

initialization
  TDUnitX.RegisterTestFixture(TTestExercicio01);

end.
