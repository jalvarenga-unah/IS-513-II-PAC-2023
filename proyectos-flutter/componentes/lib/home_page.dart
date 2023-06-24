import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Componentes'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Listas'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Listas'),
            ),
            FilledButton(
              onPressed: () {},
              child: Text('Listas'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('Listas'),
            ),
            FilledButton.tonal(
              onPressed: () {},
              child: Text('Listas'),
            ),
          ],
        ),
      ),
    );
  }
}
