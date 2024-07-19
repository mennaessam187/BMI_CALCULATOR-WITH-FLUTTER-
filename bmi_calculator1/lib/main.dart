import 'package:bmi_calculator1/screans/firstScrean.dart';
import 'package:flutter/material.dart';
import './screans/firstScrean.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMICalculator(),
    );
  }
}
