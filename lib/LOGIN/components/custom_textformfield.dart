import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  String label;
  TextInputType keyboardType;

  TextEditingController controller;
  String? Function(String?) validator;
  bool isPassword;

  CustomTextFormField(
      {required this.label,
      this.keyboardType = TextInputType.text,
      required this.controller,
      required this.validator,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          label: Text(label),
          enabledBorder: const UnderlineInputBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            borderSide: BorderSide(color: Colors.deepPurple),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            borderSide: BorderSide(color: Colors.deepPurple),
          ),
        ),
        keyboardType: keyboardType,
        controller: controller,
        validator: validator,
        obscureText: isPassword,
      ),
    );
  }
}
