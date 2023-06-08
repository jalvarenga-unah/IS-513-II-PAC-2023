void main() {
  //clases
  final heroe1 = Heroe(
    nombre: 'Batman',
    poder: 'ninguno',
  ); //instacia de mi clase

  // heroe1.nombre = 'Superman';

  print(heroe1.nombre);
  print(heroe1.poder);
}

class Heroe {
  //propiedades

  //publico

  // "late", especifica a la clase, que las propiedes obtendran un valor luego de instanciarse
  late final String nombre;
  late final String poder;

  //Constructor
  //tratando de instaciar la clase
  // Heroe({required String param1, required String param2}) {
  //   this.nombre = param1;
  //   this.poder = param2;
  // }

  Heroe({required this.nombre, required this.poder});

  // comportamientos
}
