import 'package:componentes/src/controllers/contador_controller.dart';
import 'package:componentes/src/models/producto.dart';
import 'package:componentes/src/providers/peticiones_provider.dart';
import 'package:componentes/src/shared/constantes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          builder:
              (BuildContext context, AsyncSnapshot<List<Producto>> snapshot) {
            if (snapshot.connectionState == ConnectionState.none) {
              return const Center(child: Text('No hay conexion'));
            }

            if (snapshot.hasError) {
              return Center(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.cloud_off, size: 100),
                  Text(
                    '${snapshot.error}',
                    style: const TextStyle(fontSize: 30),
                  ),
                ],
              ));
            }

            if (!snapshot.hasData) {
              return const CircularProgressIndicator();
            }

            if (snapshot.data!.isEmpty) {
              return const Center(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.cloud_off, size: 100),
                  Text(
                    'No hay datos',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ));
            }

            return ListaProductos(productos: snapshot.data ?? []);
          },
        )));
  }
}

class ListaProductos extends StatelessWidget {
  const ListaProductos({super.key, required this.productos});

  final List<Producto> productos;

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

  final Producto product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              Rutas.detalleProductoPage.name,
              arguments: product,
            );
          },
          child: Card(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                  product.image,
                  width: 120,
                  fit: BoxFit.cover,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(product.title),
                      Text(
                        '${product.description.length < 100 ? product.description : product.description.substring(0, 100)}...',
                      ),
                      Text('${product.price}'),
                    ],
                  ),
                ),
                //   IconButton(onPressed: () {}, icon: Icon(Icons.add_shopping_cart))
              ],
            ),
          ),
        ));
  }
}
