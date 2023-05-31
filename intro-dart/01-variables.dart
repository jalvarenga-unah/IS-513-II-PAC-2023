void main() {
  //Declarción

  int numero = 10;
  double doble = 3.09;
  String nombre = 'Juan';
  //var apellido;
  final String apellido = 'Alvarenga';
  bool esMayor = true;
  //List comidas = [];

  // print(numero);
  // print(doble);

  nombre = 'Enrique';

  //apellido = 100;
  // apellido = 'Alvarenga';

  // print(nombre);
  // print(apellido);

  //condicionales

  int edad = 2;

  if (edad > 18)
    print('es mayor de edad');
  else
    print('es menor de edad');

  //operador ternario

  final String resultado =
      (edad > 18) ? 'es mayor de edad' : 'es menor de edad';

  // print(
  //     'el valor de edad: es: ' + edad.toString() + ' por lo que ' + resultado);

  // print('el valor de edad: es: $edad  por lo que $resultado ');
  print('el valor de edad: es: $edad  por lo que ${2 + 4} ');

  String? comidaFavorita = null;

  if (edad > 18) comidaFavorita = 'Pizza';

  // print('Mi comida favorita es: ${comidaFavorita == null ? 'No ha asignado una comida': comidaFavorita}');
  print(
      'Mi comida favorita es: ${comidaFavorita ?? 'No ha seleccionado una comdia'}');
}
