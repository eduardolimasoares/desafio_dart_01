class Pessoa {
  double peso;
  double altura;

  Pessoa(this.peso, this.altura);

  double calcularIMC() {
    if (peso <= 0 || altura <= 0) {
      throw Exception("O peso e a altura devem ser valores positivos.");
    }

    double imc = peso / (altura * altura);
    return imc;
  }
}

