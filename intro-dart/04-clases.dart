void main() {
  //clases
  // final heroe1 = Heroe(
  //   nombre: 'Batman',
  //   poder: 'ninguno',
  // ); //instacia de mi clase

  final heroe2 = Heroe.fromJson({
    'nombre': 'Super Man',
    'poder': 'Volar',
    'debilidad': 'Kriptonita',
  });

  // heroe1.nombre = 'Superman';

  // print(heroe1.nombre);
  // print(heroe1.poder);
  // print(heroe1.debilidad);

  print(heroe2.nombre);
  print(heroe2.poder);
  print(heroe2.debilidad);
}

class Heroe {
  //propiedades

  //publico

  // "late", especifica a la clase, que las propiedes obtendran un valor luego de instanciarse
  late final String nombre;
  late final String poder;
  String? debilidad;

  //Constructor
  //tratando de instaciar la clase
  // Heroe({required String param1, required String param2}) {
  //   this.nombre = param1;
  //   this.poder = param2;
  // }

  // Heroe({
  //   required this.nombre,
  //   required this.poder,
  //   this.debilidad,
  // });

/*
 
{
  "nombre": "Batman",
  "poder": "ninguno",
  "edad":29
}
 */

  //constructores con nombre
  // factory Heroe.fromJson(Map<String, dynamic> json) {
  //   return Heroe(
  //     nombre: json['nombre'],
  //     poder: json['poder'],
  //     debilidad: json['debilidad'],
  //   );
  // }

  Heroe.fromJson(Map<String, dynamic> json) {
    this.nombre = json['nombre'];
    this.poder = json['poder'];
    this.debilidad = json['debilidad'];
  }

  // comportamientos
}
