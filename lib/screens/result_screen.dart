// ignore_for_file: sort_child_properties_last

import 'package:bmi_calculator/helpers/constants.dart';
import 'package:bmi_calculator/helpers/helper_functions.dart';
import 'package:bmi_calculator/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key, required this.bmi}) : super(key: key);
  final double bmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColour,
        elevation: 0,
        title: const Text("RESULT"),
      ),
      backgroundColor: backgroundColour,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children:[
            const SizedBox(height: 20,),
            Container(
            height: HelperFunctions().getHeight(context) * 0.7,
            width: HelperFunctions().getWidth(context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                bmi < 18.5 ? Image.asset("images/UN.png") : bmi > 18.5 && bmi < 25 ? Image.asset("images/F.png") : bmi >25 && bmi < 30 ? Image.asset("images/OW.png") : bmi > 30 && bmi < 35 ? Image.asset("images/OB.png") : Image.asset("images/E.png"),
                Text("Your BMI is ${bmi.round()}", textAlign: TextAlign.center,style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w400, color: Colors.white),),           
                bmi < 18.5 ? const Text("You are underweight. You need to eat.", style: const TextStyle(color: Colors.white),) :
                bmi > 18.5 && bmi < 25 ? const Text("You are Fit.", style: TextStyle(color: Colors.white),) : 
                bmi >25 && bmi < 30 ? const Text("You are Overweight. You need to control.", style: TextStyle(color: Colors.white),) : 
                bmi > 30 && bmi < 35 ? const Text("You are in Obese. You need to lose weight.", style: TextStyle(color: Colors.white),) : 
                const Text("You are in Extreme Obese. You need work hard, exercise & lose weight.", style: const TextStyle(color: Colors.white),),      
              ],
            ),
            decoration: const BoxDecoration(
              color: tabColour,
              borderRadius: BorderRadius.all(Radius.circular(10),
            ),
          ),
        ),
        const SizedBox(height: 10,),
        GestureDetector(
          child: CustomButtonWidget(
            height: HelperFunctions().getHeight(context)*0.1,
            width: HelperFunctions().getWidth(context)*0.93, 
            color: Colors.red, 
            method: const Center(child: Text("CALCULATE Again", style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),))          
          ),
          onTap: () => Navigator.of(context).pop(),
        ),
       ]
      ),
      ),
    );
  }
}