import 'package:flutter/material.dart';

class TextFromFieldInput extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final String formProperty;
  final Map<String, String> formData;

  const TextFromFieldInput({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.helperText,
    required this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText,
    required this.formProperty,
    required this.formData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      /* initialValue: 'Brett Bustamante', */
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      onChanged: (value) => formData[formProperty] = value,
      validator: (value) {
        //Podemos hacer cualquier validacion que queramos con esta propiedad para el input
        if (value == null) {
          return 'Please enter some text';
        } else if (value.length < 3) {
          return 'Please enter at least 3 characters';
        }
        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        helperText: helperText,
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
        /* border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ), */
      ),
    );
  }
}
