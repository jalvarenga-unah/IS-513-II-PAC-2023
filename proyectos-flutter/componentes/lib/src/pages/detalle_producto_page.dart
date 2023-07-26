import 'package:componentes/src/models/producto.dart';
import 'package:flutter/material.dart';

class DetalleProductoPage extends StatelessWidget {
  const DetalleProductoPage({super.key});

  // final int id;
  @override
  Widget build(BuildContext context) {
    final argumeto = ModalRoute.of(context)!.settings.arguments as Producto;

    return Scaffold(
        appBar: AppBar(
          title: Text(argumeto.title),
        ),
        body: Center(
          child: Text('producto ${argumeto.title}'),
        ));
  }
}
