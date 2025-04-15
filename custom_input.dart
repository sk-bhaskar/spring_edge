import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String label;
  final bool isDate;

  const CustomInput({super.key, required this.label, this.isDate = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: isDate,
      decoration: InputDecoration(
        labelText: label,
        suffixIcon: isDate ? const Icon(Icons.calendar_today) : null,
      ),
    );
  }
}
