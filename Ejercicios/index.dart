import 'dart:io';
import 'dart:math';

void potenciaPositiva() {
  print("Ingrese un numero:");
  String? input = stdin.readLineSync();
  int? num = int.tryParse(input ?? '');

  if (num == null) {
    print("Error: Debe ingresar un numero valido.");
    return;
  }

  if (num > 0) {
    print("Resultado: ${num * num}");
  } else if (num == 0) {
    print("Resultado: 0");
  } else {
    print("Resultado: Numero negativo.");
  }
}

void dobleOTriple() {
  print("Ingrese el primer numero:");
  int? num1 = int.tryParse(stdin.readLineSync() ?? '');
  print("Ingrese el segundo numero:");
  int? num2 = int.tryParse(stdin.readLineSync() ?? '');

  if (num1 == null || num2 == null) {
    print("Error: Debe ingresar numeros validos.");
    return;
  }

  if (num1 > num2) {
    print("Resultado: ${num1 * 2}");
  } else if (num2 > num1) {
    print("Resultado: ${num2 * 3}");
  } else {
    print("Resultado: ${num1 * 2}");
  }
}

void raizOCuadrado() {
  print("Ingrese un numero:");
  double? num = double.tryParse(stdin.readLineSync() ?? '');

  if (num == null) {
    print("Error: Debe ingresar un numero valido.");
    return;
  }

  if (num > 0) {
    print("Resultado: ${sqrt(num).toStringAsFixed(2)}");
  } else if (num == 0) {
    print("Resultado: 0");
  } else {
    print("Resultado: ${num * num}");
  }
}

void perimetroCirculo() {
  print("Ingrese el radio del circulo:");
  double? radio = double.tryParse(stdin.readLineSync() ?? '');

  if (radio == null) {
    print("Error: Debe ingresar un numero valido.");
    return;
  }

  double perimetro = 2 * pi * radio;
  print("Resultado: ${perimetro.toStringAsFixed(2)}");
}

void diaSemanaLaboral() {
  print("Ingrese un numero (1-7):");
  int? dia = int.tryParse(stdin.readLineSync() ?? '');

  if (dia == null) {
    print("Error: Debe ingresar un numero valido.");
    return;
  }

  switch (dia) {
    case 1:
      print("Resultado: Lunes");
      break;
    case 2:
      print("Resultado: Martes");
      break;
    case 3:
      print("Resultado: Miercoles");
      break;
    case 4:
      print("Resultado: Jueves");
      break;
    case 5:
      print("Resultado: Viernes");
      break;
    default:
      print("Resultado: Numero fuera del rango laboral.");
      break;
  }
}

void calculadoraImpuestos() {
  print("Ingrese su salario anual:");
  double? salario = double.tryParse(stdin.readLineSync() ?? '');

  if (salario == null) {
    print("Error: Debe ingresar un numero valido.");
    return;
  }

  if (salario > 12000) {
    double impuesto = (salario - 12000) * 0.15;
    print("Resultado: ${impuesto.toStringAsFixed(2)}");
  } else {
    print("Resultado: No debe impuestos.");
  }
}

void buscadorResiduo() {
  print("Ingrese el primer numero:");
  int? num1 = int.tryParse(stdin.readLineSync() ?? '');
  print("Ingrese el segundo numero:");
  int? num2 = int.tryParse(stdin.readLineSync() ?? '');

  if (num1 == null || num2 == null) {
    print("Error: Debe ingresar numeros validos.");
    return;
  }

  if (num2 == 0) {
    print("Error: No se puede dividir por cero.");
    return;
  }

  int residuo = num1 % num2;
  print("Resultado: $residuo");
}

void sumaPares() {
  int suma = 0;
  for (int i = 2; i <= 50; i += 2) {
    suma += i;
  }
  print("Resultado: $suma");
}

void diferenciaFracciones() {
  print("Ingrese el numerador de la primera fraccion:");
  int? num1 = int.tryParse(stdin.readLineSync() ?? '');
  print("Ingrese el denominador de la primera fraccion:");
  int? den1 = int.tryParse(stdin.readLineSync() ?? '');

  print("Ingrese el numerador de la segunda fraccion:");
  int? num2 = int.tryParse(stdin.readLineSync() ?? '');
  print("Ingrese el denominador de la segunda fraccion:");
  int? den2 = int.tryParse(stdin.readLineSync() ?? '');

  if (num1 == null || den1 == null || num2 == null || den2 == null) {
    print("Error: Debe ingresar numeros validos.");
    return;
  }

  if (den1 == 0 || den2 == 0) {
    print("Error: El denominador no puede ser cero.");
    return;
  }

  int numResultado = (num1 * den2) - (num2 * den1);
  int denResultado = den1 * den2;

  int mcd = calcularMCD(numResultado.abs(), denResultado.abs());
  numResultado ~/= mcd;
  denResultado ~/= mcd;

  print("Resultado: $numResultado/$denResultado");
}

int calcularMCD(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}

void longitudCadena() {
  print("Ingrese una palabra:");
  String? palabra = stdin.readLineSync();

  if (palabra == null) {
    print("Error: Debe ingresar una palabra.");
    return;
  }

  print("Resultado: ${palabra.length}");
}

void promedioCuatro() {
  print("Ingrese el primer numero:");
  double? num1 = double.tryParse(stdin.readLineSync() ?? '');
  print("Ingrese el segundo numero:");
  double? num2 = double.tryParse(stdin.readLineSync() ?? '');
  print("Ingrese el tercer numero:");
  double? num3 = double.tryParse(stdin.readLineSync() ?? '');
  print("Ingrese el cuarto numero:");
  double? num4 = double.tryParse(stdin.readLineSync() ?? '');

  if (num1 == null || num2 == null || num3 == null || num4 == null) {
    print("Error: Debe ingresar numeros validos.");
    return;
  }

  double promedio = (num1 + num2 + num3 + num4) / 4;
  print("Resultado: $promedio");
}

void menorCinco() {
  print("Ingrese el primer numero:");
  int? num1 = int.tryParse(stdin.readLineSync() ?? '');
  print("Ingrese el segundo numero:");
  int? num2 = int.tryParse(stdin.readLineSync() ?? '');
  print("Ingrese el tercer numero:");
  int? num3 = int.tryParse(stdin.readLineSync() ?? '');
  print("Ingrese el cuarto numero:");
  int? num4 = int.tryParse(stdin.readLineSync() ?? '');
  print("Ingrese el quinto numero:");
  int? num5 = int.tryParse(stdin.readLineSync() ?? '');

  if (num1 == null ||
      num2 == null ||
      num3 == null ||
      num4 == null ||
      num5 == null) {
    print("Error: Debe ingresar numeros validos.");
    return;
  }

  int menor = num1;
  if (num2 < menor) menor = num2;
  if (num3 < menor) menor = num3;
  if (num4 < menor) menor = num4;
  if (num5 < menor) menor = num5;

  print("Resultado: $menor");
}

void contadorVocales() {
  print("Ingrese una palabra:");
  String? palabra = stdin.readLineSync();

  if (palabra == null) {
    print("Error: Debe ingresar una palabra.");
    return;
  }

  palabra = palabra.toLowerCase();
  int contador = 0;

  for (int i = 0; i < palabra.length; i++) {
    String c = palabra[i];
    if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') {
      contador++;
    }
  }

  print("Resultado: $contador");
}

void buscadorFactorial() {
  print("Ingrese un numero:");
  int? num = int.tryParse(stdin.readLineSync() ?? '');

  if (num == null) {
    print("Error: Debe ingresar un numero valido.");
    return;
  }

  if (num < 0) {
    print("Error: No se puede calcular el factorial de un numero negativo.");
    return;
  }

  int factorial = 1;
  for (int i = 1; i <= num; i++) {
    factorial *= i;
  }

  print("Resultado: $factorial");
}

void validadorRango() {
  print("Ingrese un numero:");
  int? num = int.tryParse(stdin.readLineSync() ?? '');

  if (num == null) {
    print("Error: Debe ingresar un numero valido.");
    return;
  }

  if (num >= 10 && num <= 20) {
    print("Resultado: Esta en el rango.");
  } else {
    print("Resultado: Fuera del rango.");
  }
}
