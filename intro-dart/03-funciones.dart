void main() {
  //funciones

  saludo();
  int result = suma();
  // print(sumar(3, 5));

  // print(mascota('Apolo', 'Apolito', raza: 'Terrier'));
  // print(mascota('Coqui', 'Super Coqui', raza: 'Chihuaha'));
  // print(mascota('dolar', 'Dolarsito'));
  print(areaTriangulo(base: 2, altura: 4));
}

//funcion con argumentos posicionales
// String mascota(String nombre, String raza) {
//   return 'el nombre de la mascota es $nombre y es un $raza';
// }

//funcion con argumentos con nombre
String mascota(
  String nombre,
  String apodo, {
  String? raza,
}) {
  return 'el nombre de la mascota es $nombre y es un $raza';
}

//sin retorno
void saludo() {
  print('Hola mundo');
}

// con retorno
int suma() {
  return 10;
}

//con argumentos
int sumar(int n1, int n2) {
  return n1 + n2;
}

// double areaTriangulo(double base, double altura) {
//   return (base * altura) / 2;
// }

double areaTriangulo({
  required double base,
  required double altura,
}) {
  return (base * altura) / 2;
}
