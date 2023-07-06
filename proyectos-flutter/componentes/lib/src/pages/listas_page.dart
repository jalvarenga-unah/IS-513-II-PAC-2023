import 'package:flutter/material.dart';

class ListasPage extends StatelessWidget {
  const ListasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manejo de listas'),
      ),
      body: ListView(
        children: listado(),
      ),
    );
  }

  List<Widget> listado() {
    final List<Widget> items = [];

    for (int i = 0; i < 20; i++) {
      items.add(
        ListTile(
          title: const Text(
            'Hola mundo',
            style: TextStyle(
                color: Colors.deepPurple, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text('este es un subtitulo'),
          leading: CircleAvatar(child: Text('$i')),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap: () {},
        ),
      );
    }
    return items;
  }
}
