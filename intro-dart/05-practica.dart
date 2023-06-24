void main() {
  final galleta1 = Galleta.simple(
    sabor: 'Chocolate',
    ingredientes: ['Harina', 'Chocolate', 'Azucar', 'Leche'],
    tieneChispas: false,
  );

  final galleta2 = Galleta.conChispas(
    sabor: 'Chocolate',
    ingredientes: ['Harina', 'Chocolate', 'Azucar', 'Leche'],
  );
}

class Galleta {
  late String sabor;
  late List<String> ingredientes;
  late bool tieneChispas;

  // Galleta({
  //   required this.sabor,
  //   required this.ingredientes, // TODO: investigar porque debe ser const al ser por defecto
  //   this.tieneChispas = false,
  // });

  Galleta.simple({
    required String sabor,
    required List<String> ingredientes,
    required bool tieneChispas,
  })  : this.sabor = sabor,
        this.ingredientes = ingredientes,
        this.tieneChispas = tieneChispas;

  Galleta.conChispas({
    required String sabor,
    required List<String> ingredientes,
  })  : this.sabor = sabor,
        this.ingredientes = ingredientes,
        this.tieneChispas = true;

//constructor que require "late" en las propiedades
  Galleta.chocolate({
    required String sabor,
    required List<String> ingredientes,
    required bool tieneChispas,
  }) {
    this.sabor = sabor;
    this.ingredientes = ingredientes;
    this.tieneChispas = tieneChispas;
  }
}
