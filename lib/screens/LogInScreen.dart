import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:maxim/data.dart';
import 'package:maxim/models/CreatedEmails.dart';

class LogInScreen extends StatefulWidget {

  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool x = true;
  bool flag = true;
  List<String> images = ["images/photo1.jpg","images/photo2.jpg","images/photo3.jpg","images/photo4.jpg","images/photo5.jpg","images/photo6.jpg","images/photo7.jpg"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body:ListView(
            children: [
              Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      color: const Color(0xff201A30),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CarouselSlider(
                            items: images.map((item) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(item),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              );
                            }).toList(),
                            options: CarouselOptions(
                              height: 200.0,
                              enlargeCenterPage: true,
                              autoPlay: true,
                              aspectRatio: 16 / 9,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enableInfiniteScroll: true,
                              autoPlayAnimationDuration: Duration(milliseconds: 800),
                              viewportFraction: 0.8,
                            ),
                          ),
                          SizedBox(height: 30,),
                          const Text("Login",style: TextStyle(color: Colors.white,fontSize: 30),),
                          const Text("...Login to continue",style: TextStyle(color: Colors.white,fontSize: 15),),
                          Column(
                            children: [
                              const SizedBox(height: 20,),
                              TextFormField(
                                controller: email,
                                keyboardType: TextInputType.emailAddress,
                                decoration:  const InputDecoration(
                                  prefixIcon: Icon(Icons.email),
                                  hintText: "exapmle@gmail.com",
                                  labelText: "Email",
                                  labelStyle: TextStyle(
                                    color: Colors.white,fontSize: 20
                                  ),

                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                  ),
                                  filled: true,
                                  fillColor: Colors.grey,
                                ),
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 20,),
                              TextFormField(
                                controller: password,
                                obscureText: x,
                                keyboardType: TextInputType.visiblePassword,
                                decoration:  InputDecoration(
                                  prefixIcon: Icon(Icons.lock),
                                  labelText: "Password",
                                  labelStyle: TextStyle(
                                      color: Colors.white,fontSize: 20
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                  ),
                                  suffixIcon: IconButton(onPressed: (){
                                    setState(() {
                                      x = !x;
                                    });
                                  }, icon: Icon(x ? Icons.visibility_off : Icons.visibility)),
                                  filled: true,
                                  fillColor: Colors.grey,
                                ),
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 20,),
                              MaterialButton(onPressed: (){
                                String enteredEmail = email.text;
                                String enteredPassword = password.text;
                                for (CreatedEmails account in accounts) {
                                  if (account.email == enteredEmail && account.password == enteredPassword) {
                                    String name = account.fullName;
                                    Navigator.pushNamed(context, "categories",arguments: {
                                      "fullName" : name,
                                    });
                                    flag = false;
                                    return;
                                  }
                                }
                                if(flag){
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text('Error'),
                                        content: Text("Password or Email is wrong"),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              // Close the dialog
                                              Navigator.of(context).pop();
                                            },
                                            child: Text('Close'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                              },
                                child:Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                    color: Color(0xff0DF5E3),
                                  ),
                                  width: 230,
                                  height: 60,
                                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                  child: const Center(
                                    child: Text(
                                      "Login",
                                      style: TextStyle(color: Colors.black, fontSize: 25),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 100,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("Don't have an account?",style: TextStyle(fontSize:20,color: Colors.white),),
                                  MaterialButton(onPressed: (){
                                    Navigator.pushNamed(context, "signUp");
                                  },
                                    child:  const Text("Sign up",style: TextStyle(color: Color(0xff0DF5E3),fontSize: 20),) ,
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ]
              )
            ],
          )
      ),
    );
  }
}