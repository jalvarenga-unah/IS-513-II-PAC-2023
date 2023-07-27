import 'package:componentes/src/controllers/contador_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ManejoEstadoPage extends StatelessWidget {
  ManejoEstadoPage({super.key});

  final ContadorController contadorController = ContadorController();

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(fontSize: 30);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Manejo de estado'),
        ),
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Manejo de estado',
              style: textStyle,
            ),
            Obx(
              () => Text(
                '${contadorController.contador}',
                style: textStyle,
              ),
            )
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            contadorController.contador++;
            print(contadorController.contador);
          },
          child: const Icon(Icons.add),
        ));
  }
}
