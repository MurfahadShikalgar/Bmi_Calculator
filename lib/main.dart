 // ignore_for_file: prefer_const_constructors

 import 'package:bmi_calculator/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BmiCalculatorApp());
}
class BmiCalculatorApp extends StatelessWidget {
  const BmiCalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}