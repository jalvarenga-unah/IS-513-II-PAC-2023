void main() {
  final numeros = [1, 2, 3, 4, 5, "hola"];
  //spread
  final copia = [...numeros]; // nueva lista

  //for
  // for (int a = 0; a < numeros.length; a++) {
  //   print(numeros[a]);
  // }

  //while
  // while (true) {
  // print('hola');
  // }

  //do while
  // do {
  //   print('hola');
  // } while (false);

  //forEach
  numeros.forEach((valor) {
    print(valor);
  });

  //map, me sirve para copiar elementos
  final numeros2 = numeros.map((item) {
    // print(item);
    return item;
  }).toList();

  numeros.removeAt(0);

  print('original: $numeros');
  print('copia: $copia');
  print('numeros2: $numeros2');
}
