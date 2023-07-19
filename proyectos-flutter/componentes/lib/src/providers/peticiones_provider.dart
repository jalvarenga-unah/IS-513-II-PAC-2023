import 'dart:convert';

import 'package:http/http.dart' as http;

class PeticionesProvider {
  Future<List> getProductos() async {
    // final url = Uri.parse('https://fakestoreapi.com/products');
    final url = Uri.https('fakestoreapi.com', 'products');
    List<dynamic> responseProducts = [];

    final response = await http.get(url);

    responseProducts.addAll(jsonDecode(response.body));

    return responseProducts;
    // print(respuesta);
  }
}
