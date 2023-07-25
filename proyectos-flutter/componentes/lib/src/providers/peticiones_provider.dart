import 'package:componentes/src/models/producto.dart';
import 'package:http/http.dart' as http;

class PeticionesProvider {
  Future<List<Producto>> getProductos() async {
    List<Producto> responseProducts = [];

    // final url = Uri.parse('https://fakestoreapi.com/products');
    try {
      final url = Uri.https('fakestoreapi.com', 'products');

      final response = await http.get(url);
      responseProducts.addAll(productoFromJson(response.body));
    } catch (error) {
      //generando una nueva excepcion
      print('entró a ala excepcion');
      throw Exception('${error}');
    }
    return responseProducts;
  }
}
