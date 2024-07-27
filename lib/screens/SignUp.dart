import 'package:flutter/material.dart';
import 'package:maxim/data.dart';
import 'package:maxim/models/CreatedEmails.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController fullName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmedPassword = TextEditingController();
  bool x = true;
  bool y = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Signing up"),
        ),
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: const Color(0xff201A30),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Create Account",
                        style: TextStyle(color: Colors.white, fontSize: 35),
                      ),
                      Text(
                        "please fill the below data",
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: fullName,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: "your name",
                          labelText: "Full Name",
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
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: email,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: "exapmle@gmail.com",
                          labelText: "Email",
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
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: password,
                        obscureText: x,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          labelText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  x = !x;
                                });
                              },
                              icon: Icon(x ? Icons.visibility_off : Icons.visibility)),
                          filled: true,
                          fillColor: Colors.grey,
                        ),
                        style: const TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: confirmedPassword,
                        obscureText: y,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          labelText: "Confirm your password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  y = !y;
                                });
                              },
                              icon: Icon(
                                  y ? Icons.visibility_off : Icons.visibility)),
                          filled: true,
                          fillColor: Colors.grey,
                        ),
                        style: const TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      MaterialButton(
                        onPressed: () {
                          if (fullName.text.isEmpty || email.text.isEmpty || password.text.isEmpty || confirmedPassword.text.isEmpty) {
                            _messageAlret("error", "There is an empty data");
                            return;
                          } else if (password.text != confirmedPassword.text) {
                            _messageAlret("error", "Passwords don't match");
                            return;
                          } else if (accounts.where((acc) => acc.email == email.text).isEmpty) {
                            CreatedEmails newAccount = CreatedEmails(fullName: fullName.text, email: email.text, password: password.text);
                            accounts.add(newAccount);
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return  AlertDialog(
                                  title: Text("Success",style: TextStyle(fontSize: 30),),
                                  content: Text("Account has been created",style: TextStyle(fontSize: 20),),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Close'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, "signIn");
                                      },
                                      child: Text('Go to login'),
                                    ),
                                  ],
                                );
                              },
                            );
                          } else {
                            _messageAlret("error", "The email is already exist");
                          }
                        },
                        child: Center(
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              color: Color(0xff0DF5E3),
                            ),
                            width: 230,
                            height: 60,
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: const Center(
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 25),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have account?",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          MaterialButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "signIn");
                            },
                            child: const Text(
                              "Sign in",
                              style: TextStyle(
                                  color: Color(0xff0DF5E3), fontSize: 20),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
  void _messageAlret(String title,String text){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return  AlertDialog(
          title: Text(title,style: TextStyle(fontSize: 30),),
          content: Text(text,style: TextStyle(fontSize: 20),),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
