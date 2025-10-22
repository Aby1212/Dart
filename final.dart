import 'dart:io';
import 'Ejercicios/index.dart';
import 'menu/index.dart';
import 'ejercicios/index.dart';

void main() {
  print("=== BIENVENIDO ===");
  print("Por favor, ingresa tu nombre :");
  String? nombre = stdin.readLineSync();

  if (nombre == null || nombre.isEmpty) {
    nombre = "Usuario";
  }

  print("\n¡Hola $nombre! Vamos a comenzar.\n");

  bool continuar = true;

  while (continuar) {
    try {
      mostrarMenu();

      print("\nSeleccione una opcion: ");
      String? input = stdin.readLineSync();
      int? opcion = int.tryParse(input ?? '');

      if (opcion == null) {
        print("\nError: Debe ingresar un numero valido.");
        _pausar();
        continue;
      }

      print("");

      switch (opcion) {
        case 1:
          potenciaPositiva();
          break;
        case 2:
          dobleOTriple();
          break;
        case 3:
          raizOCuadrado();
          break;
        case 4:
          perimetroCirculo();
          break;
        case 5:
          diaSemanaLaboral();
          break;
        case 6:
          calculadoraImpuestos();
          break;
        case 7:
          buscadorResiduo();
          break;
        case 8:
          sumaPares();
          break;
        case 9:
          diferenciaFracciones();
          break;
        case 10:
          longitudCadena();
          break;
        case 11:
          promedioCuatro();
          break;
        case 12:
          menorCinco();
          break;
        case 13:
          contadorVocales();
          break;
        case 14:
          buscadorFactorial();
          break;
        case 15:
          validadorRango();
          break;
        case 0:
          continuar = false;
          print("¡Adios $nombre!");
          break;
        default:
          print("Opcion invalida");
          break;
      }

      if (continuar && opcion != 0) {
        _pausar();
      }
    } catch (e) {
      print("\nError: $e");
      _pausar();
    }
  }
}

void _pausar() {
  print("\nPresione Enter para continuar...");
  stdin.readLineSync();
}
