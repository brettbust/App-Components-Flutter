import 'package:components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);
  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Screen'),
      ),
      body: Column(children: [
        Slider.adaptive(
          value: _sliderValue,
          min: 50,
          max: 400,
          divisions: 5,
          activeColor: AppTheme.primary,
          onChanged: _sliderEnable
              ? (value) {
                  _sliderValue = value;
                  setState(() {});
                }
              : null,
        ),
        /* Checkbox(
            value: _sliderEnable,
            onChanged: (value) {
              //si lo quiero desactivar envio null
              _sliderEnable = value ?? true;
              setState(() {});
            }), */
        /*   CheckboxListTile(
          title: const Text('Activar Slider'),
          value: _sliderEnable,
          activeColor: AppTheme.primary,
          onChanged: (value) {
            //si lo quiero desactivar envio null
            _sliderEnable = value ?? true;
            setState(() {});
          },
        ),
         */

        /*    Switch(
            value: _sliderEnable,
            activeColor: AppTheme.primary,
            onChanged: (value) {
              //si lo quiero desactivar envio null
              _sliderEnable = value ?? true;
              setState(() {});
            }), */

        SwitchListTile(
          title: const Text('Activar Slider'),
          value: _sliderEnable,
          activeColor: AppTheme.primary,
          onChanged: (value) {
            //si lo quiero desactivar envio null
            _sliderEnable = value;
            setState(() {});
          },
        ),
        const AboutListTile(
          applicationName: 'Slider Screen',
          applicationVersion: '1.0.0',
          applicationIcon: Icon(Icons.adb),
          aboutBoxChildren: [
            Text('Este es un ejemplo de un slider'),
          ],
        ),
        Expanded(
          //sirve para que el contenedor se adapte al tamaño de la imagen
          child: SingleChildScrollView(
            child: Image(
              image: const NetworkImage(
                'https://cdn.pixabay.com/photo/2020/07/06/17/51/batman-5377804_1280.png',
              ),
              fit: BoxFit
                  .contain, //sirve para que la imagen se adapte al tamaño del contenedor
              width: _sliderValue,
            ),
          ),
        ),
      ]),
    );
  }
}
