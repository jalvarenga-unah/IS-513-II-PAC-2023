void main() {
  //funciones

  saludo();
  int result = suma();
  print(sumar(3, 5));

  print(mascota('Apolo', raza: 'Terrier'));
  print(mascota(raza: 'Chihuaha', 'Coqui'));
  print(mascota('dolar'));
}

//funcion con argumentos posicionales
// String mascota(String nombre, String raza) {
//   return 'el nombre de la mascota es $nombre y es un $raza';
// }

//funcion con argumentos con nombre
String mascota(String nombre, {String? raza}) {
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
