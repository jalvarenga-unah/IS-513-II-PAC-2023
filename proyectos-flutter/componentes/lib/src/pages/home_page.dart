import 'package:componentes/src/shared/constantes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App de componentes'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                //Navegar a mi pagina de listas

                Navigator.pushNamed(context, Rutas.listas.name);
              },
              child: const Text('Listas'),
            ),
            FilledButton(
              onPressed: () {
                Navigator.pushNamed(context, Rutas.listasConstrucor.name);
              },
              child: const Text('Listas con constructor'),
            ),
            FilledButton.tonal(
              onPressed: () {
                Navigator.pushNamed(context, Rutas.imagenesPage.name);
              },
              child: const Text('Imagenes'),
            ),
            OutlinedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, Rutas.inputsPage.name),
              child: const Text('Inputs'),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, Rutas.peticionesPage.name);
              },
              child: const Text('Peticiones'),
            ),
            TextButton(
              onPressed: () =>
                  Navigator.pushNamed(context, Rutas.manejoEstado.name),
              child: const Text('Manejo de estado'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
