import"package:flutter/material.dart";
import "package:maxim/screens/Categories.dart";
import "package:maxim/screens/LogInScreen.dart";
import "package:maxim/screens/SignUp.dart";
import "package:maxim/screens/deliveryScreen.dart";
import "package:maxim/screens/mealsScreen.dart";
void main(){
  runApp(Maxim());
}
class Maxim extends StatelessWidget {
  const Maxim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        "categories":(context)=>Category(),
        "signUp":(context)=>SignUp(),
        "signIn":(context)=>LogInScreen(),
        "meals":(context)=>MealScreen(),
        "deliveryScreen":(context)=>DilevryScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: LogInScreen(),
    );
  }
}
