import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:maxim/data.dart';

class PurchasedItems extends StatefulWidget {
  final String name;
  final String image;
  final String price;
  final int counter;

  const PurchasedItems({Key? key, required this.name, required this.image, required this.price, required this.counter})
      : super(key: key);

  @override
  State<PurchasedItems> createState() => _PurchasedItemsState();
}

class _PurchasedItemsState extends State<PurchasedItems> {
  @override
  Widget build(BuildContext context) {
    BorderRadius? borderRadius;
    if (widget.counter % 2 == 0) {
      borderRadius = const BorderRadius.only(
        topRight: Radius.circular(50),
        bottomLeft: Radius.circular(50),
      );
    } else {
      borderRadius = const BorderRadius.only(
        topLeft: Radius.circular(50),
        bottomRight: Radius.circular(50),
      );
    }
    return FlipCard(
      front: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(widget.image), fit: BoxFit.fill),
                borderRadius: borderRadius,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: borderRadius,
                color: Colors.black26,
              ),
              width: double.infinity,
              child: Center(
                child: Text(
                  widget.name,
                  style: const TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
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
              Text(
                "السعر ${widget.price} جنية",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              SizedBox(height: 20,),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    purchasedMeal.removeAt(widget.counter);
                  });
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Text("Removed from the delivry screen",style: TextStyle(fontSize: 30),
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
                    Icon(Icons.remove_shopping_cart),
                    Text("Remove", style: TextStyle(color: Colors.black),)
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
