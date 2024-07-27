import 'package:flutter/material.dart';
import '../Widgets/CategoryItems.dart';
import '../data.dart';
class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    String fullName = data["fullName"];
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/logo.jpg"),
                    fit: BoxFit.fill
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
                  leading: CircleAvatar(
                    // Add your profile image here
                    // backgroundImage: AssetImage('path_to_image'),
                  ),
                ),
                ListTile(
                  iconColor: Colors.lightBlue,
                  title: const Text('Log Out'),
                  leading: const Icon(Icons.logout),
                  onTap: () {
                    _showLogoutDialog(context);
                  },
                ),
              ],
            ),
          ),
          body: Container(
            color: const Color(0xff201A30),
            child: GridView.count(crossAxisCount: 2,mainAxisSpacing: 5,crossAxisSpacing: 5,children: [
              ...categories.map((e) {
                return  CategoryItem(
                  id: e.id,
                  name: e.name,
                  image: e.image,
                  fullName: fullName,
                );
              })
            ],)
          )
      ),
    );
  }
}
void _showLogoutDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Log Out"),
        content: const Text("Are you sure you want to log out?"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "signIn"); // Close the dialog
            },
            child: const Text("Log Out"),
          ),
        ],
      );
    },
  );
}