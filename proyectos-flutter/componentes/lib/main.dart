import 'package:componentes/src/shared/constantes.dart';
import 'package:componentes/src/shared/not_found.dart';
import 'package:componentes/src/shared/rutas.dart';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      title: 'Material App',
      initialRoute: Rutas.inicio.name, // '/home'
      routes: rutas,
      onGenerateRoute: (settings) {
        // print(settings.name);
        return MaterialPageRoute(builder: (context) {
          return const NotFound();
        });
      },
    );
  }
}
