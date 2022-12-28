import 'package:flutter/material.dart';

import 'package:components_app/widgets/widgets.dart';

import 'package:components_app/widgets/text_form_field_widget.dart';

class InputsScreen extends StatelessWidget {
  InputsScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> myKey = GlobalKey<FormState>();

  final Map<String, String> datosFormulario = <String, String>{
    'nombre': 'Brett',
    'apellido': 'Bustamante',
    'email': 'bsbustamantez@gmail.com',
    'contraseña': '1234567',
    'role': 'admin'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs Screen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            key: myKey,
            child: Column(
              children: [
                TextFromFieldInput(
                  helperText: 'Solo texto',
                  hintText: 'Escribe tu nombre',
                  icon: null,
                  labelText: 'Nombre',
                  formData: datosFormulario,
                  formProperty: 'nombre',
                ),
                const SizedBox(height: 20),
                TextFromFieldInput(
                  helperText: 'Solo texto',
                  hintText: 'Escribe tu apellido',
                  icon: null,
                  labelText: 'Apellido',
                  formData: datosFormulario,
                  formProperty: 'apellido',
                ),
                const SizedBox(height: 20),
                TextFromFieldInput(
                  helperText: '',
                  hintText: 'Escribe tu email',
                  icon: null,
                  labelText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  formData: datosFormulario,
                  formProperty: 'email',
                ),
                const SizedBox(height: 20),
                TextFromFieldInput(
                  helperText: 'minimo 3 caracteres',
                  hintText: 'Escribe tu contraseña',
                  icon: null,
                  labelText: 'Contraseña',
                  obscureText: true,
                  formData: datosFormulario,
                  formProperty: 'contraseña',
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(
                      value: 'admin',
                      child: Text('Admin'),
                    ),
                    DropdownMenuItem(
                      value: 'usuario',
                      child: Text('Usuario'),
                    ),
                    DropdownMenuItem(
                      value: 'Superusuario',
                      child: Text('Superusuario'),
                    ),
                  ],
                  onChanged: (String? value) {
                    datosFormulario['role'] = value!;
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context)
                        .unfocus(); //quita el foco del teclado

                    if (myKey.currentState!.validate()) {
                      myKey.currentState!.save();
                      print(datosFormulario);
                    } else {
                      print('formulario no valido');
                    }
                  },
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Enviar'))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
