import 'package:flutter/material.dart';

import '../widgets/input.dart';

class InputsPage extends StatelessWidget {
  InputsPage({super.key});

  final nombreController = TextEditingController();
  final correoController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextFormField(
                controller: nombreController,
                style: const TextStyle(color: Colors.blue),
                // keyboardType: TextInputType.number,
                // maxLines: 2,
                maxLength: 15,
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
                validator: (valor) {
                  //esto es un "error"
                  if (valor!.isEmpty) return 'Ingrese su nombre';

                  return null;
                },
                onChanged: (value) {
                  //
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const InputForm(
                label: 'Ingrese su telefono',
                icon: Icons.phone,
              ),
              const InputForm(
                label: 'Ingrese una contraseña',
                icon: Icons.password,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: correoController,
                decoration: const InputDecoration(
                  label: Text('Ingrese su correo'),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.deepPurple,
                  ),
                  // suffixIcon: Icon(Icons.accessibility),

                  border: OutlineInputBorder(),
                ),
                validator: (valor) {
                  if (valor!.isEmpty) return 'Ingrese su nombre';

                  if (valor.length <= 10) {
                    return 'debe tener mas de 10 caracteres';
                  }

                  return null;
                },
              ),
              const Spacer(),
              // const ElevatedButton(onPressed: null, child: Text('holi'))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getInputValue();
        },
        child: const Icon(Icons.edit),
      ),
    );
  }

  getInputValue() {
    // if (nombreController.text.isEmpty) {
    //   //codigo para pedir el nombre
    // }
    // nombreController.text = 'Nuevo valor';

    print(formKey.currentState?.validate());
  }
}
