import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//Hay 2 tipos de Widgets
// 1: Widgest con estado: StatefulWidget
// 2: Widgets sin estado: StatelessWidget

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final estilo = const TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w800,
  );

  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        // floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
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

    // notificar que hubo un cambio en el estado y
    //se debe redibujar
    setState(() {});
  }
}
