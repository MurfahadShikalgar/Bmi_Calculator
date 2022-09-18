import 'package:flutter/cupertino.dart';

class HomeScreenProvider with ChangeNotifier {
  double sliderValue = 181;
  int weight = 60;
  int age = 24;
  bool genderMale = false;
  bool genderFemale = true;

  updateBool(){
    if(genderMale == false && genderFemale == true){
      genderMale = true;
      genderFemale = false;
      notifyListeners();
    } else {
      genderMale = false;
      genderFemale = true;
      notifyListeners();
    }
  }

  void increaseWeight(){
    if(weight > 0){
    weight = weight + 1;
    notifyListeners();
    }
  }

  void decreaseWeight(){
    if(weight > 0){
    weight = weight - 1;
    notifyListeners();
    }
  }

  void increaseAge(){
    if(age > 0){
    age = age + 1;
    notifyListeners();
    }
  }

  void decreaseAge(){
    if(age > 0){
    age = age - 1;
    notifyListeners();
    }
  }

  void getSliderValue(double value){
    sliderValue = value;
    notifyListeners();
  }

  double calculateBMI(int weight, double height){
    double BMI = ((weight/height/height)*10000);
    return BMI;
  }

}