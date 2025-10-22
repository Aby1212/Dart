import 'dart:io';

void main() {
  print("Vamos a calcular tu edad");
  print("Escribe tu nombre: ");
  String? nombre = stdin.readLineSync();

  print(
    "\nHola $nombre, escribe tu fecha de nacimiento en formato dd/mm/yyyy:",
  );
  print("Ejemplo: 15/03/2000");
  String? fechaNacimiento = stdin.readLineSync();

  if (fechaNacimiento != null && fechaNacimiento.isNotEmpty) {
    List<String> partes = fechaNacimiento.split('/');

    if (partes.length == 3) {
      int? dia = int.tryParse(partes[0]);
      int? mes = int.tryParse(partes[1]);
      int? anio = int.tryParse(partes[2]);

      if (dia != null && mes != null && anio != null) {
        DateTime fechaActual = DateTime.now();
        DateTime fechaNac = DateTime(anio, mes, dia);

        int edad = fechaActual.year - fechaNac.year;

        if (fechaActual.month < fechaNac.month) {
          edad = edad - 1;
        } else if (fechaActual.month == fechaNac.month &&
            fechaActual.day < fechaNac.day) {
          edad = edad - 1;
        }

        print("\n--- Resultado ---");
        print("Nombre: $nombre");
        print("Fecha de nacimiento: $fechaNacimiento");
        print("Edad: $edad años");
      } else {
        print("\nError: La fecha ingresada no es válida.");
      }
    } else {
      print("\nError: El formato de fecha debe ser dd/mm/yyyy");
    }
  } else {
    print("\nError: Debes ingresar una fecha de nacimiento.");
  }
}
