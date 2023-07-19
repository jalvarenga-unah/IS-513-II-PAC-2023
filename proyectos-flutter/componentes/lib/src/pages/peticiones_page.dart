import 'package:componentes/src/providers/peticiones_provider.dart';
import 'package:flutter/material.dart';

class PeticionesPage extends StatelessWidget {
  const PeticionesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final peticionesProvider = PeticionesProvider();
    // final datos = peticionesProvider.getProductos();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Peticiones'),
        ),
        body: Center(
            child: FutureBuilder(
          future: peticionesProvider.getProductos(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.none) {
              return const Center(child: Text('No hay conexion'));
            }

            if (!snapshot.hasData) {
              return const CircularProgressIndicator();
            }

            return ListaProductos(productos: snapshot.data ?? []);
          },
        )));
  }
}

class ListaProductos extends StatelessWidget {
  const ListaProductos({super.key, required this.productos});

  final List<dynamic> productos;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productos.length,
      itemBuilder: ((context, index) {
        //información de un producto
        final product = productos[index];

        return ItemProduct(
          product: product,
        );
        // ListTile(
        //   title: Text(product['title']),
        //   subtitle: Text(product['description']),
        //   leading: Image.network(product['image']),
        // );
      }),
    );
  }
}

class ItemProduct extends StatelessWidget {
  const ItemProduct({super.key, required this.product});

  final Map<String, dynamic> product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Card(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              product['image'],
              width: 120,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Column(
                children: [
                  Text(product['title']),
                  Text(
                    '${product['description'].length < 100 ? product['description'] : product['description'].substring(0, 100)}...',
                  ),
                  Text('${product['price']}'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
