import 'package:dart_app/dart_app.dart';
import 'package:dart_app/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });
}
void testCalcularIMC() {
  Pessoa pessoa1 = Pessoa(70.5, 1.75);
  assert(pessoa1.calcularIMC() == 22.98);

  try {
    Pessoa pessoa2 = Pessoa(-60, 1.65);
    pessoa2.calcularIMC();
    print("Erro: deveria ter lançado uma exceção para peso inválido.");
  } catch (e) {
    assert(e.toString() == "Exception: O peso e a altura devem ser valores positivos.");
    print("Teste de peso inválido passou.");
  }

  try {
    Pessoa pessoa3 = Pessoa(65, -1.7);
    pessoa3.calcularIMC();
    print("Erro: deveria ter lançado uma exceção para altura inválida.");
  } catch (e) {
    assert(e.toString() == "Exception: O peso e a altura devem ser valores positivos.");
    print("Teste de altura inválida passou.");
  }
}
