import 'package:flutter/material.dart';
import '../Widgets/Meals.dart';
import '../data.dart';
import '../models/Meals.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    List<Meal> filteredData = meals.where((element) {
      return element.CategorieNum.contains(data["id"]);
    }).toList();
    String fullName = data["fullName"];

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/logo.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              iconTheme: const IconThemeData(color: Colors.white),
            ),
          drawer: Drawer(
            child: ListView(
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                      image: AssetImage("images/logo.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Text(
                    "MAXIM",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  iconColor: Colors.lightBlue,
                  title: const Text('Go back'),
                  leading: const Icon(Icons.assignment_return),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  iconColor: Colors.lightBlue,
                  title: const Text("Home Screen"),
                  leading: const Icon(Icons.home),
                  onTap: () {
                    Navigator.pushNamed(context, "categories",arguments: {
                      "fullName" : fullName
                    });
                  },
                ),
                ListTile(
                  iconColor: Colors.lightBlue,
                  title: const Text('Delivery'),
                  leading: const Icon(Icons.delivery_dining),
                  onTap: () {
                    Navigator.pushNamed(context, "deliveryScreen");
                  },
                ),
                ListTile(
                  iconColor: Colors.lightBlue,
                  title: Text(fullName),
                  leading: CircleAvatar(),
                ),
              ],
            ),
          ),
          body: Container(
              color: const Color(0xff201A30),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return MealItem(
                    key: UniqueKey(),
                    id: filteredData[index].id,
                    name: filteredData[index].name,
                    image: filteredData[index].image,
                    price: filteredData[index].salary,
                    description: filteredData[index].descripiton,
                    categoryNumber: filteredData[index].CategorieNum,
                    counter: index,
                  );
                },
                itemCount: filteredData.length,
              ),
            ),
            ),
        );
    }
}
