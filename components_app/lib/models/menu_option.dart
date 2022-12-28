import 'package:flutter/material.dart';

class MenuOption {
  final String route; //ruta
  final IconData icon; //icono
  final String name; //nombre de la opcion
  final Widget screen;

  MenuOption({
    //obligo a quien use el modelo a pasar estos parametros
    required this.route,
    required this.icon,
    required this.name,
    required this.screen,
  });
}
