import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  const NotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ruta no encontrada'),
      ),
      body: const Center(
        child: Text('Ruta no encontrada'),
      ),
    );
  }
}
