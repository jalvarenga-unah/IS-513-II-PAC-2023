import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // int currentIndex = 0;
  final homeController = Get.put(HomeController());
  final pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Instagram'),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.send),
              ),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text('Inicio'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Configuración'),
                  onTap: () {},
                ),
              ],
            ),
          ),
          body: PageView(
            controller: pageController,
            onPageChanged: (index) {
              homeController.currentIndex = index;
            },
            // scrollDirection: Axis.vertical,
            // physics:
            //     const NeverScrollableScrollPhysics(), // evita el swipe manual
            children: const [
              HomePage(),
              ConfiguracionPage(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: Obx(
            () => BottomNavigationBar(
              currentIndex: homeController.currentIndex,
              onTap: (index) {
                homeController.currentIndex = index;
                pageController.animateToPage(index,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut);
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

class ConfiguracionPage extends StatelessWidget {
  const ConfiguracionPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      child: const Center(
        child: Text(
          'Página de configuración',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[100],
      child: const Center(
        child: Text(
          'Pagina de inicio',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
