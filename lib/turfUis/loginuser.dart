import 'dart:async';
import 'dart:ui';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turfproject/turfUis/turfhome.dart';

void main (){
  runApp(MaterialApp(home: userlogin(),));
}
class  userlogin extends StatefulWidget {
  @override
  State< userlogin> createState() => _userloginState();
}

class _userloginState extends State< userlogin> {
  final TextEditingController username_controller = TextEditingController();
  final TextEditingController password_controller = TextEditingController();



  @override
  Widget build(BuildContext context) {
    bool hidepass = true;
    return Scaffold(
        body: Stack(children: [
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/icons/WhatsApp Image 2024-01-01 at 13.34.08_b646c7af.jpg"),
                  fit: BoxFit.cover,
                )),
          ),
          SafeArea(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80, left: 10),
                    child: Text(
                      "Login your Account",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: 130),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      validator: (text) {
                        if (text!.isEmpty ||
                            !text.contains('@') ||
                            !text.contains('.com')) {
                          return " Enter valid Email Address !!!";
                        }
                      },
                      controller: username_controller,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white24,
                        hintText: " Enter your email id",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.white),
                        suffixIcon: Icon(Icons.email),
                        suffixIconColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                          BorderSide(color: Colors.white), // Change this line
                        ),

                        // enabledBorder: OutlineInputBorder(
                        //  borderSide: BorderSide(color: Colors.black)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      validator: (pass) {
                        if (pass!.isEmpty || pass.length < 6) {
                          return "Password length should be greater than 6 ";
                        }
                      },
                      textInputAction: TextInputAction.next,
                      obscuringCharacter: "*",
                      obscureText: hidepass,
                      // use @sufixicon,make sure call for a bool
                      controller: password_controller,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white24,
                        hintText: "Enter your password",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "password",
                        labelStyle: TextStyle(color: Colors.white),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                if (hidepass)
                                  hidepass = false;
                                else
                                  hidepass = true;
                              });
                            },
                            icon: Icon(
                                hidepass ? Icons.visibility : Icons.visibility_off)),
                        suffixIconColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                          BorderSide(color: Colors.white), // Change this line
                        ),

                        // enabledBorder: OutlineInputBorder(
                        //  borderSide: BorderSide(color: Colors.black)),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80),
                    child: MaterialButton(
                        color: Colors.pink,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => turfhome()));
                          //   final valid = formkey.currentState!.validate();
                          //   if (valid) {
                          //     Loginchecking(
                          //         username_controller.text, password_controller.text);
                          //   } else {}
                        },
                        child: Text("Login")),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: () {
                      },
                      child: Text(
                        "Create a new Account ?",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ))
                ],
              )),
        ]));
  }
}