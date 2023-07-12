import 'package:flutter/material.dart';

import '../widgets/input_form.dart';

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
              InputForm(
                label: 'Ingrese su nombre',
                icon: Icons.person,
                controller: nombreController,
              ),
              const SizedBox(
                height: 10,
              ),
              InputForm(
                label: 'Ingrese su telefono',
                icon: Icons.phone,
                type: TextInputType.phone,
                controller: TextEditingController(),
              ),
              const SizedBox(
                height: 10,
              ),
              InputForm(
                label: 'Ingrese una contraseña',
                icon: Icons.password,
                obscureText: true,
                mostrarBoton: true,
                controller: TextEditingController(),
              ),
              const SizedBox(
                height: 10,
              ),
              InputForm(
                label: 'Ingrese su correo',
                icon: Icons.email,
                type: TextInputType.emailAddress,
                controller: correoController,
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
