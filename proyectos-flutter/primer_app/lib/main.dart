import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//Hay 2 tipos de Widgets
// 1: Widgest con estado
// 2: Widgets sin estado

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final estilo = const TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w800,
  );

  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple[600],
          onPressed: incrementar,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  void incrementar() {
    contador++;
  }
}
