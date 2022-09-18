// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/helpers/constants.dart';
import 'package:bmi_calculator/helpers/helper_functions.dart';
import 'package:bmi_calculator/providers/home_screen_provider.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:bmi_calculator/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  var Help = HelperFunctions();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColour,
      appBar: AppBar(
        title: Text("BMI CALCULATOR", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),),
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: backgroundColour,
      ),
      body: SafeArea(
        child: Container(
          child: ChangeNotifierProvider<HomeScreenProvider>(
            create: (context) => HomeScreenProvider(),
            child: Consumer<HomeScreenProvider>(
              builder: (context, provider, child){
              return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),  
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      child: CustomButtonWidget(
                        height: Help.getHeight(context)*0.25,
                        width: Help.getWidth(context)*0.45,
                        color: provider.genderMale == true ? backgroundColour : tabColour,
                        method: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(Icons.male, size: 70, color: provider.genderMale == true ? Colors.white38 : Colors.white,),
                            Text("MALE", style: TextStyle( color: provider.genderMale == true ? Colors.white38 : Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      onTap: (){
                        provider.updateBool();
                      },
                    ),
                    
                    InkWell(
                      child: CustomButtonWidget(
                         height: Help.getHeight(context)*0.25,
                         width: Help.getWidth(context)*0.45, 
                         color: provider.genderFemale == true ? backgroundColour : tabColour, 
                         method: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(Icons.female, size: 70, color: provider.genderFemale == true ? Colors.white38 : Colors.white,),
                            Text("FEMALE", style: TextStyle( color: provider.genderFemale == true ? Colors.white38 : Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      onTap: (){
                        provider.updateBool();
                      },
                    ),
                  ],
                ),
              ),
      
              CustomButtonWidget(
                height: Help.getHeight(context) * 0.25,
                width: Help.getWidth(context) * 0.93, 
                color: tabColour, 
                method: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("HEIGHT", style: TextStyle(fontSize: 18, color: Colors.white38, fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(provider.sliderValue.round().toString(), style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),),
                        Text("cm", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Slider(  
                      min: 20,  
                      max: 500,  
                      value: provider.sliderValue,  
                      onChanged: (value) {  
                        provider.getSliderValue(value);

                     },  
                    ),
                  ],
                )
              ),
      
            Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButtonWidget(
                      height: Help.getHeight(context)*0.25,
                      width: Help.getWidth(context)*0.45,
                      color: tabColour,
                      method: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text("WEIGHT", style: TextStyle( color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                          Text(provider.weight.toString(), style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                child: Container(
                                  height: Help.getHeight(context)*0.07,
                                  width: Help.getHeight(context)*0.07,
                                  child: Icon(Icons.add, color: Colors.white,),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: buttonBgColour
                                  ),
                                ),
                                onTap: (){
                                  provider.increaseWeight();
                                },
                              ),
                              InkWell(
                                child: Container(
                                  height: Help.getHeight(context)*0.07,
                                  width: Help.getHeight(context)*0.07,
                                  child: Icon(Icons.horizontal_rule, color: Colors.white,),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: buttonBgColour
                                  ),
                                ),
                                onTap: (){
                                  provider.decreaseWeight();
                                },
                              ),                          
                            ],
                            )                         
                        ],
                      ),
                    ),
                    
                    CustomButtonWidget(
                       height: Help.getHeight(context)*0.25,
                       width: Help.getWidth(context)*0.45, 
                       color: tabColour, 
                       method: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text("AGE", style: TextStyle( color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                          Text(provider.age.toString(), style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                child: Container(
                                  height: Help.getHeight(context)*0.07,
                                  width: Help.getHeight(context)*0.07,
                                  child: Icon(Icons.add, color: Colors.white,),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: buttonBgColour
                                  ),
                                ),
                                onTap: (){
                                  provider.increaseAge();
                                },
                              ),
                              InkWell(
                                child: Container(
                                  height: Help.getHeight(context)*0.07,
                                  width: Help.getHeight(context)*0.07,
                                  child: Icon(Icons.horizontal_rule, color: Colors.white,),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: buttonBgColour
                                  ),
                                ),
                                onTap: (){
                                  provider.decreaseAge();
                                },
                              ),                          
                            ],
                            )             
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                child: CustomButtonWidget(
                   height: Help.getHeight(context)*0.1,
                   width: Help.getWidth(context)*0.93, 
                   color: Colors.red, 
                   method: Center(child: Text("CALCULATE YOUR BMI", style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),))
                ),
                onTap: (){
                  double bmiValue = provider.calculateBMI(provider.weight, provider.sliderValue);
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => ResultScreen(bmi: bmiValue)));
                },
              )
            ],
          );
       }
              )
        ),
        ),
      ),
    );
  }
}