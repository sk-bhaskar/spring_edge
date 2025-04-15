import 'package:flutter/material.dart';
import 'package:spring_edge_intern/screens/freight_from_screen.dart';
// Make sure this matches your structure

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Freight Rate Search',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Helvetica',
        useMaterial3: true,
      ),
      home: const FreightFormScreen(),
    );
  }
}
