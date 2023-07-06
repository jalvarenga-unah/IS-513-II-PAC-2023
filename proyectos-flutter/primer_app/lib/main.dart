import 'package:flutter/material.dart';
import 'package:primer_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

//Hay 2 tipos de Widgets
// 1: Widgest con estado: StatefulWidget
// 2: Widgets sin estado: StatelessWidget

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
