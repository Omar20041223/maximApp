import 'package:flutter/material.dart';
import 'package:maxim/Widgets/PurchasedMeals.dart';
import 'package:maxim/data.dart';
class DilevryScreen extends StatelessWidget {
  const DilevryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delivery Screen"),
      ),
      body: Container(
        color: const Color(0xff201A30),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return PurchasedItems(name: purchasedMeal[index].name, image: purchasedMeal[index].image,counter: index,price: purchasedMeal[index].price,);
          },
          itemCount: purchasedMeal.length,
        ),
      ),
    );
  }
}
