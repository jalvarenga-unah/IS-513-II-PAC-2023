import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // int currentIndex = 0;
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
          // appBar: AppBar(
          //   title: const Text('App de Menú'),
          // ),
          body: const SafeArea(
            child: Column(
              children: [
                Center(
                  child: Text('Hola Mundo'),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Obx(
            () => BottomNavigationBar(
              currentIndex: homeController.currentIndex,
              onTap: (index) {
                homeController.currentIndex = index;
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Inicio',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Confirguración',
                ),
              ],
            ),
          )),
    );
  }
}
