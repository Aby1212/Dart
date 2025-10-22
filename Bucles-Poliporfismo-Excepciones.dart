import 'dart:io';
import 'dart:math';

void main() {
  print("=== Programa de Cálculos ===");
  print("1. Calcular área y perímetro de un círculo");
  print("2. Mostrar secuencia de Fibonacci");
  print("3. Realizar una división");
  print("Elige una opción (1, 2 o 3):");

  String? opcion = stdin.readLineSync();

  if (opcion == "1") {
    calcularCirculo();
  } else if (opcion == "2") {
    mostrarFibonacci();
  } else if (opcion == "3") {
    realizarDivision();
  } else {
    print("\nError: Opción no válida.");
  }
}

void calcularCirculo() {
  print("\n--- Cálculo de Círculo ---");
  print("Ingresa el radio del círculo:");
  String? inputRadio = stdin.readLineSync();
  double? radio = double.tryParse(inputRadio ?? '');

  if (radio != null && radio > 0) {
    Circulo circ = Circulo();
    circ.radio = radio;

    double resultArea = circ.area();
    double resultPerim = circ.perimetro();
    double nuevoRadio = circ.add10();

    print("\n--- Resultados ---");
    print("Radio: $radio");
    print("Área: ${resultArea.toStringAsFixed(2)}");
    print("Perímetro: ${resultPerim.toStringAsFixed(2)}");
    print("Radio + 10: $nuevoRadio");
  } else {
    print("\nError: Debes ingresar un valor numérico positivo.");
  }
}

void mostrarFibonacci() {
  print("\n--- Secuencia de Fibonacci ---");
  print("¿Cuántos números de Fibonacci deseas ver?");
  String? inputCantidad = stdin.readLineSync();
  int? cantidad = int.tryParse(inputCantidad ?? '');

  if (cantidad != null && cantidad > 0) {
    print("\nPrimeros $cantidad números de Fibonacci:");

    int anterior = 0;
    int siguiente = 1;
    int suma;

    for (int i = 0; i < cantidad; i++) {
      print("Posición $i: $anterior");
      suma = anterior + siguiente;
      anterior = siguiente;
      siguiente = suma;
    }
  } else {
    print("\nError: Debes ingresar un número positivo.");
  }
}

// Función para realizar división
void realizarDivision() {
  print("\n--- Calculadora de División ---");

  try {
    print("Ingresa el número a dividir:");
    String? inputNumero = stdin.readLineSync();
    double numero = double.parse(inputNumero!);

    print("Ingresa el divisor:");
    String? inputDivisor = stdin.readLineSync();
    double divisor = double.parse(inputDivisor!);

    if (divisor == 0) {
      throw ArgumentError("No se puede dividir por cero!");
    }

    double resultado = numero / divisor;
    print("\n--- Resultado ---");
    print("$numero ÷ $divisor = ${resultado.toStringAsFixed(2)}");
  } on ArgumentError catch (e) {
    print("\nError: ${e.message}");
  } on FormatException {
    print("\nError: Debes ingresar valores numéricos válidos.");
  } catch (e) {
    print("\nError desconocido: $e");
  }
}

abstract class ExtraCalculations {
  double add10();
}

abstract class Figura {
  double area();
  double perimetro();
}

class Circulo implements Figura, ExtraCalculations {
  double? radio;

  @override
  double area() => pi * radio! * radio!;

  @override
  double perimetro() => 2 * pi * radio!;

  @override
  double add10() {
    return radio! + 10;
  }
}
