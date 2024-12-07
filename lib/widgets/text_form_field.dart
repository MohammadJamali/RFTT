import 'package:flutter/material.dart';

Widget StyledTextField(
  String label, {
  void Function(String)? onChanged,
  TextEditingController? controller,
  String? defaultValue,
  String? Function(String?)? validator,
  Function(String?)? onSaved,
}) =>
    TextFormField(
      controller: controller,
      initialValue: defaultValue,
      validator: validator,
      onSaved: onSaved,
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        fillColor: Colors.grey.shade100,
        focusColor: Colors.black,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
      ),
      onChanged: onChanged,
    );
