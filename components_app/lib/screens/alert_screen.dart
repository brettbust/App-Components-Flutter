import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

import 'dart:io';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: true,
      //funcion que muestra un dialogo en pantalla y recibe como parámetro el BuildContext
      context: context,
      builder: (context) {
        //el builder es un codigo que se ejecuta cuando se muestra el dialogo y construye un widget
        return CupertinoAlertDialog(
          title: const Text('Alert'),
          content: const Text('This is an alert'),
          actions: [
            CupertinoDialogAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
            CupertinoDialogAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      //funcion que muestra un dialogo en pantalla y recibe como parámetro el BuildContext
      context: context,
      builder: (context) {
        //el builder es un codigo que se ejecuta cuando se muestra el dialogo y construye un widget
        return AlertDialog(
          title: const Text('Alert'),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  20)), //para cambiar el borde del dialogo
          content: const Text('This is an alert'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          /* style: ElevatedButton.styleFrom( //para cambiar el estilo del botón y no usar el default del tema
            shape: const StadiumBorder(),
          ) */
          onPressed: () {
            Platform.isIOS
                ? displayDialogIOS(context)
                : displayDialogAndroid(context);
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text('Show alert', style: TextStyle(fontSize: 16)),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.close),
      ),
    );
  }
}
