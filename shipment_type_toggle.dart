import 'package:flutter/material.dart';

class ShipmentTypeToggle extends StatefulWidget {
  const ShipmentTypeToggle({super.key});

  @override
  State<ShipmentTypeToggle> createState() => _ShipmentTypeToggleState();
}

class _ShipmentTypeToggleState extends State<ShipmentTypeToggle> {
  bool isFCL = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isFCL,
          onChanged: (val) {
            setState(() => isFCL = true);
          },
        ),
        const Text("FCL"),
        const SizedBox(width: 20),
        Checkbox(
          value: !isFCL,
          onChanged: (val) {
            setState(() => isFCL = false);
          },
        ),
        const Text("LCL"),
      ],
    );
  }
}
