import 'package:flutter/material.dart';

class InputsPage extends StatelessWidget {
  const InputsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              //TODO: inicializar y manejar con un " controller: ",
              // * algo importante
              // controller: ,
              style: const TextStyle(color: Colors.blue),
              // keyboardType: TextInputType.multiline,
              // maxLines: 2,
              maxLength: 10,
              obscureText: false,
              decoration: const InputDecoration(
                label: Text('Ingrese su nombre'),
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.deepPurple,
                ),
                // suffixIcon: Icon(Icons.accessibility),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                //
              },
            ),
          ],
        ),
      ),
    );
  }
}
