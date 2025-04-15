import 'package:flutter/material.dart';
import '../widgets/custom_input.dart';
import '../widgets/custom_checkbox.dart';
import '../widgets/custom_dropdown.dart';
import '../widgets/shipment_type_toggle.dart';

class FreightFormScreen extends StatefulWidget {
  const FreightFormScreen({super.key});

  @override
  State<FreightFormScreen> createState() => _FreightFormScreenState();
}

class _FreightFormScreenState extends State<FreightFormScreen> {
  bool includeOriginNearby = false;
  bool includeDestinationNearby = false;

  Widget rectangularWrapper({required Widget child}) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth >= 600;

    return Scaffold(
      backgroundColor: const Color(0xFFEFF6FB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(32),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Search the best Freight Rates",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text("History"),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          spacing: 40,
                          runSpacing: 24,
                          children: [
                            SizedBox(
                              width: screenWidth * 0.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  rectangularWrapper(child: const CustomInput(label: "Origin")),
                                  CustomCheckbox(
                                    value: includeOriginNearby,
                                    label: "Include nearby origin ports",
                                    onChanged: (val) => setState(() => includeOriginNearby = val),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  rectangularWrapper(child: const CustomInput(label: "Destination")),
                                  CustomCheckbox(
                                    value: includeDestinationNearby,
                                    label: "Include nearby destination ports",
                                    onChanged: (val) => setState(() => includeDestinationNearby = val),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 32),
                        Wrap(
                          spacing: 40,
                          runSpacing: 24,
                          children: [
                            SizedBox(
                              width: screenWidth * 0.4,
                              child: rectangularWrapper(child: const CustomDropdown(label: "Commodity")),
                            ),
                            SizedBox(
                              width: screenWidth * 0.4,
                              child: rectangularWrapper(child: const CustomInput(label: "Cut Off Date", isDate: true)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 32),
                        const Text("Shipment Type:", style: TextStyle(fontWeight: FontWeight.bold)),
                        const ShipmentTypeToggle(),
                        const SizedBox(height: 24),
                        Wrap(
                          spacing: 40,
                          runSpacing: 24,
                          children: [
                            SizedBox(
                              width: screenWidth * 0.26,
                              child: rectangularWrapper(child: const CustomDropdown(label: "Container Size")),
                            ),
                            SizedBox(
                              width: screenWidth * 0.26,
                              child: rectangularWrapper(child: const CustomInput(label: "No of Boxes")),
                            ),
                            SizedBox(
                              width: screenWidth * 0.26,
                              child: rectangularWrapper(child: const CustomInput(label: "Weight (Kg)")),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          "To obtain accurate rate for spot rate with guaranteed space and booking, please ensure your container count and weight per container is accurate.",
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                        const SizedBox(height: 32),
                        const Text("Container Internal Dimensions:", style: TextStyle(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                        const Text("Length: 39.46 ft\nWidth: 7.70 ft\nHeight: 7.84 ft"),
                        const SizedBox(height: 12),
                        Center(child: Image.asset("assets/images/container.png", height: 200)),
                        const SizedBox(height: 32),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: OutlinedButton.icon(
                              icon: const Icon(Icons.search, color: Colors.purple),
                              label: const Text("Search", style: TextStyle(color: Colors.purple)),
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
