import 'package:flutter/material.dart';

import 'city_textfield.dart';

class CityForm extends StatefulWidget {
  final void Function(BuildContext context, GlobalKey<FormState> formKey) validateFields;
  final void Function(String str) onChanged;
  final void Function(BuildContext context,  GlobalKey<FormState> formKey) onPressedKnow;

  const CityForm({
    super.key,
    required this.validateFields,
    required this.onChanged,
    required this.onPressedKnow,
  });

  @override
  State<CityForm> createState() => _CityFormState();
}

class _CityFormState extends State<CityForm> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CityTextField(
            onChanged: (str) {
              widget.validateFields(context, formKey);
              widget.onChanged.call(str); 
            },
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () => widget.onPressedKnow.call(context, formKey),
            child: const Text("Узнать погоду"),
          )
        ],
      ),
    );
  }
}
