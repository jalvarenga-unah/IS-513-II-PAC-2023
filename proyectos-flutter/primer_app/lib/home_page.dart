import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  final estilo = const TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w800,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi primer App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Veces que hizo clic', style: estilo),
            const SizedBox(height: 25),
            Text('$contador', style: estilo),
            // Padding(
            //   padding: const EdgeInsets.all(10),
            //   child: Text(
            //     '0',
            //     style: estilo,
            //   ),
            // ),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.purple[600],
            onPressed: incrementar,
            child: const Icon(Icons.plus_one),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            backgroundColor: Colors.purple[600],
            onPressed: decrementar,
            child: const Icon(Icons.exposure_minus_1),
          ),
        ],
      ),
    );
  }

  void incrementar() {
    setState(() {});

    contador++;

    // notificar que hubo un cambio en el estado y
    //se debe redibujar
  }

  void decrementar() {
    contador--;
    setState(() {});
  }
}
