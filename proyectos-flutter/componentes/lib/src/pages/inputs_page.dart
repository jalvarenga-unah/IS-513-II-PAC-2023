import 'package:flutter/material.dart';

import '../widgets/input_form.dart';

class InputsPage extends StatelessWidget {
  InputsPage({super.key});

  final nombreController = TextEditingController();
  final correoController = TextEditingController();
  final telefonoController = TextEditingController();
  final contraseniaController = TextEditingController();
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Ingrese un nombre';
                  }

                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              InputForm(
                label: 'Ingrese su telefono',
                icon: Icons.phone,
                type: TextInputType.phone,
                controller: telefonoController,
                validator: (value) {
                  if (value!.length != 8) {
                    return 'Ingrese un telefono valido';
                  }

                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              InputForm(
                label: 'Ingrese una contraseña',
                icon: Icons.password,
                obscureText: true,
                mostrarBoton: true,
                controller: contraseniaController,
                validator: (value) {
                  if (value!.length < 6) {
                    return 'Ingrese una contraseña valida';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              InputForm(
                label: 'Ingrese su correo',
                icon: Icons.email,
                type: TextInputType.emailAddress,
                controller: correoController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Ingrese un correo';
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

    if (formKey.currentState!.validate()) {
      final data = {
        'nombre': nombreController.text,
        'correo': correoController.text,
        'telefono': telefonoController.text,
        'contrasenia': contraseniaController.text,
      };

      //mandar a guardar al servidor
      print(data);
    }
  }
}
