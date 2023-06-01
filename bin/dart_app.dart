import 'dart:convert';
import 'dart:io';

import 'package:dart_app/dart_app.dart' as dart_app;
import 'package:dart_app/pessoa.dart';

import '../test/dart_app_test.dart';

void main() {
  try {
    Pessoa pessoa = Pessoa(70.5, 1.75);
    double imc = pessoa.calcularIMC();
    print("IMC: $imc");

  } catch (e) {
    print("Ocorreu um erro: $e");
  }
}
