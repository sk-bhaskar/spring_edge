import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  final bool value;
  final String label;
  final Function(bool) onChanged;

  const CustomCheckbox({
    super.key,
    required this.value,
    required this.label,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: value,
      onChanged: (val) => onChanged(val!),
      title: Text(label),
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
