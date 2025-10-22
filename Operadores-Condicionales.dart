import 'dart:io';

void main() {
  print("Ingrese el primer número: ");
  String? input1 = stdin.readLineSync();
  double? a = double.tryParse(input1 ?? '');

  print("Ingrese el segundo número: ");
  String? input2 = stdin.readLineSync();
  double? b = double.tryParse(input2 ?? '');

  if (a != null && b != null) {
    double suma = a + b;
    double resta = a - b;
    double multiplicacion = a * b;

    print("\n--- Resultados ---");
    print("Suma: $suma");
    print("Resta: $resta");
    print("Multiplicación: $multiplicacion");

    if (b != 0) {
      double division = a / b;
      print("División: $division");
    } else {
      print("División: No se puede dividir entre cero");
    }
  } else {
    print("\nError: Por favor, ingrese valores numéricos válidos.");
  }
}
