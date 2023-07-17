import 'package:http/http.dart' as http;

class PeticionesProvider {
  getProductos() {
    // final url = Uri.parse('https://fakestoreapi.com/products');
    final url = Uri.https('fakestoreapi.com', 'products');

    http.get(url).then((resp) {
      print(resp.body);
    }).catchError((error) {
      print(error.getMessage());
    });

    // print(respuesta);
  }
}
