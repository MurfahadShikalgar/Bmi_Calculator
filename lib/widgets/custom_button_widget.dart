import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  
  CustomButtonWidget({Key? key, required this.height, required this.width, required this.color, required this.method}) : super(key: key);
  final double height;
  final double width;
  final Widget method;
  final Color color;
  

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: height,
        width: width,
        child: method,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(8))
        ),
      ),
      
    );
  }
}