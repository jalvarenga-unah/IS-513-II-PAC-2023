import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  const InputForm({super.key, required this.label, required this.icon});

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller: nombreController,
      style: const TextStyle(color: Colors.blue),
      // keyboardType: TextInputType.number,
      // maxLines: 2,
      maxLength: 15,
      obscureText: false,
      decoration: InputDecoration(
        label: Text(label),
        prefixIcon: Icon(
          icon,
          color: Colors.deepPurple,
        ),
        // suffixIcon: Icon(Icons.accessibility),
        border: OutlineInputBorder(),
      ),
      validator: (valor) {
        //esto es un "error"
        if (valor!.isEmpty) return 'Ingrese su nombre';

        return null;
      },
      onChanged: (value) {
        //
      },
    );
  }
}
