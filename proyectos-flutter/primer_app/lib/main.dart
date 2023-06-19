import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//Hay 2 tipos de Widgets
// 1: Widgest con estado
// 2: Widgets sin estado

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text('Hola Mundo'),
        ),
      ),
    );
  }
}
