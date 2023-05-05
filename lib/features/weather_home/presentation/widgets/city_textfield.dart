import 'package:flutter/material.dart';

class CityTextField extends StatelessWidget {
  const CityTextField({
    super.key,
    this.validator,
    this.hintText,
    this.onChanged,
  });

  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator ?? defaultValidator,
      decoration: InputDecoration(hintText: hintText),
      onChanged: onChanged,
    );
  }

  String? defaultValidator(String? value) {
    if ((value ?? "").trim().isEmpty) {
      return "Заполните поле";
    }
    if ((value ?? "").trim().length < 2) {
      return "Введите хотя бы 2 буквы";
    }
    return null;
  }
}
