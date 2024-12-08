import 'package:flutter/material.dart';

Widget StyledTextField(
  String label, {
  void Function(String)? onChanged,
  TextEditingController? controller,
  String? defaultValue,
  String? Function(String?)? validator,
  Function(String?)? onSaved,
  TextInputType? keyboardType,
}) =>
    TextFormField(
      controller: controller,
      initialValue: defaultValue,
      validator: validator,
      onSaved: onSaved,
      keyboardType: keyboardType,
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

Widget StyledDateSelector(
  String label, {
  required BuildContext context,
  TextEditingController? controller,
  DateTime? initialDate,
  DateTime? firstDate,
  DateTime? lastDate,
  String? Function(String?)? validator,
  void Function(DateTime?)? onDateSelected,
}) {
  return TextFormField(
    controller: controller,
    readOnly: true, // Makes the field non-editable
    validator: validator,
    decoration: InputDecoration(
      labelText: label,
      filled: true,
      fillColor: Colors.grey.shade100,
      focusColor: Colors.black,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    onTap: () async {
      final selectedDate = await showDatePicker(
        context: context,
        initialDate: initialDate ?? DateTime.now(),
        firstDate: firstDate ?? DateTime(2000),
        lastDate: lastDate ?? DateTime(2100),
      );
      if (selectedDate != null) {
        controller?.text = selectedDate
            .toLocal()
            .toString()
            .split(' ')[0]; // Format as yyyy-MM-dd
        onDateSelected?.call(selectedDate);
      }
    },
  );
}
