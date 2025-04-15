import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String label;

  const CustomDropdown({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(labelText: label),
      items: const [
        DropdownMenuItem(value: "Option 1", child: Text("Option 1")),
        DropdownMenuItem(value: "Option 2", child: Text("Option 2")),
      ],
      onChanged: (value) {},
    );
  }
}
