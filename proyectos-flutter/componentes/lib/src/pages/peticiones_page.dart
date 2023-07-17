import 'package:componentes/src/providers/peticionesProvider.dart';
import 'package:flutter/material.dart';

class PeticionesPage extends StatelessWidget {
  const PeticionesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final peticionesProvider = PeticionesProvider();
    peticionesProvider.getProductos();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Peticiones'),
        ),
        body: const Center(
          child: Text('Peticiones Page'),
        ));
  }
}
