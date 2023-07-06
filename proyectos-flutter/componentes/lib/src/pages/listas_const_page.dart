import 'package:componentes/src/utils/response_user.dart';
import 'package:flutter/material.dart';

class ListaConstPage extends StatelessWidget {
  const ListaConstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de contactos'),
      ),
      body: ListView.builder(
        itemCount: responseUsers.length,
        itemBuilder: (BuildContext context, int index) {
          final user = responseUsers[index];

          return Column(
            children: [
              ListTile(
                title: Text(
                  '${user['name']}',
                  style: const TextStyle(
                      color: Colors.deepPurple, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('${user['phone']}'),
                leading: CircleAvatar(child: Text('${user['name'][0]}')),
                trailing: const Icon(Icons.phone),
                onTap: () {},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 0.5,
                  width: double.infinity,
                  color: Colors.deepPurple[300],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
