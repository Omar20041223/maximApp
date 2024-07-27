import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:maxim/data.dart';
import 'package:maxim/models/PurchasedMeals.dart';
class MealItem extends StatelessWidget {
  final String id ;
  final String name ;
  final String image ;
  final String price ;
  final String description ;
  final String categoryNumber ;
  final int counter;

  MealItem({Key? key, required this.id, required this.name, required this.image, required this.price, required this.description, required this.categoryNumber, required this.counter});
  @override
  Widget build(BuildContext context) {
    BorderRadius? borderRadius ;
    if(counter % 2 == 0){
      borderRadius = const BorderRadius.only(
        topRight: Radius.circular(50),
        bottomLeft: Radius.circular(50),
      );
    }else{
      borderRadius = const BorderRadius.only(
        topLeft: Radius.circular(50),
        bottomRight: Radius.circular(50),
      );
    }
    return FlipCard(front: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(image),fit: BoxFit.fill),
                    borderRadius: borderRadius,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: borderRadius,
                      color: Colors.black26
                  ),
                  width: double.infinity,
                  child: Center(child: Text(name,style: const TextStyle(color: Colors.white,fontSize: 30,),)),
                )
              ],
            ),
          ),
            back: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: borderRadius,
                    color: Colors.black,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("الاسم : $name", style: TextStyle(fontSize: 20,color: Colors.white)),
                      SizedBox(height: 10),
                      Text("السعر $price جنية ", style: TextStyle(fontSize: 20,color: Colors.white)),
                      SizedBox(height: 10),
                      Text("الوصف ( $description )", style: TextStyle(fontSize: 20,color: Colors.white)),
                      MaterialButton(onPressed: (){
                        PurchasedMeals newAddedMeal = PurchasedMeals(name: name, image: image, price: price);
                        purchasedMeal.add(newAddedMeal);
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Text("Added to the delivry screen",style: TextStyle(fontSize: 30),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("Close", style: TextStyle(fontSize: 20)),
                                ),
                              ],
                            );
                          },
                        );
                      },
                        color: Colors.lightBlue,
                        child: Column(
                          children: [
                            Icon(Icons.add_shopping_cart),
                            Text("BUY",style: TextStyle(color: Colors.black),)
                          ],
                        ),
                      )
                    ],
                  ),
                  ),
            ),
        );
    }
}
