import 'package:componentes/src/controllers/contador_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ManejoEstadoPage extends StatelessWidget {
  ManejoEstadoPage({super.key});
  final textStyle = const TextStyle(fontSize: 30);

  // final contadorController = ContadorController();
  //InheritedWidget
  final contadorController = Get.put(ContadorController());

  @override
  Widget build(BuildContext context) {
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
          },
          child: const Icon(Icons.add),
        ));
  }
}
