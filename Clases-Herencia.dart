import 'dart:io';

void main() {
  print("=== Calculadora de Figuras Geométricas ===");
  print("1. Calcular Rectángulo");
  print("2. Calcular Cuadrado");
  print("Elige una opción (1 o 2):");

  String? opcion = stdin.readLineSync();

  if (opcion == "1") {
    print("\n--- Cálculo de Rectángulo ---");
    print("Ingresa la base:");
    String? inputBase = stdin.readLineSync();
    double? base = double.tryParse(inputBase ?? '');

    print("Ingresa la altura:");
    String? inputAltura = stdin.readLineSync();
    double? altura = double.tryParse(inputAltura ?? '');

    if (base != null && altura != null && base > 0 && altura > 0) {
      Rectangulo rect = Rectangulo();
      rect.base = base;
      rect.altura = altura;

      print("\n--- Resultados ---");
      print("Base: $base");
      print("Altura: $altura");
      print("Área: ${rect.area}");
      print("Perímetro: ${rect.perimetro}");
    } else {
      print("\nError: Debes ingresar valores numéricos positivos.");
    }
  } else if (opcion == "2") {
    print("\n--- Cálculo de Cuadrado ---");
    print("Ingresa el lado:");
    String? inputLado = stdin.readLineSync();
    double? lado = double.tryParse(inputLado ?? '');

    if (lado != null && lado > 0) {
      Cuadrado cuadr = Cuadrado();
      cuadr.lado = lado;

      print("\n--- Resultados ---");
      print("Lado: $lado");
      print("Área: ${cuadr.area}");
      print("Perímetro: ${cuadr.perimetro}");
    } else {
      print("\nError: Debes ingresar un valor numérico positivo.");
    }
  } else {
    print("\nError: Opción no válida. Debes elegir 1 o 2.");
  }
}

class Rectangulo {
  double? base;
  double? altura;

  double get area => base! * altura!;

  double get perimetro => 2 * base! + 2 * altura!;
}

class Cuadrado extends Rectangulo {
  set lado(double value) {
    base = value;
    altura = value;
  }

  double get lado => base!;
}
