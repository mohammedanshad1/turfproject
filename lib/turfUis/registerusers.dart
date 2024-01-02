import 'dart:ui';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turfproject/turfUis/turfhome.dart';
import 'package:turfproject/turfUis/loginuser.dart';

void main(){

  runApp(DevicePreview(builder: (BuildContext context)
  => MaterialApp(home: Register3(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,)));
}
class Register3 extends StatefulWidget {
  @override
  State<Register3> createState() => _Register3State();
}

class _Register3State extends State<Register3> {
  // var formkey1 = GlobalKey<FormState>();
  var username2_controller = TextEditingController();
  var password2_controller = TextEditingController();
  var email_controller = TextEditingController();
  var password3_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // void AddNewUser123(String name, String email, String password) async {
    //   var id = await SQLHelper1.AddNewUser(name, email, password);
    //   if (id != null) {
    //     Navigator.pushReplacement(
    //         context, MaterialPageRoute(builder: (context) => Loginpage3()));
    //   } else {
    //     Navigator.pushReplacement(
    //         context, MaterialPageRoute(builder: (context) => Splashscreen3()));
    //   }
    // }

    return Scaffold(
        body:Stack(children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("asset/ImagesWhatsApp Image 2024-01-01 at 20.20.23_1c9df424.jpg"),
                  fit: BoxFit.cover,
                )),
           child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4), //blur intensity
              child: Container(
                color: Colors.black.withOpacity(0.5), //opacity
              ),
            ),
          ),
          SafeArea(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80, left: 10),
                    child: Text(
                      "Create your Account",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: 70),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      style: TextStyle(color: Colors.white),
                      controller: username2_controller,
                      validator: (name) {
                        if (name!.isEmpty) {
                          return "Add your name";
                        } else
                          return null;
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white24,
                        hintText: "Full name",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "Enter Your Name",
                        labelStyle: TextStyle(color: Colors.white),
                        suffixIcon: Icon(Icons.person),
                        suffixIconColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      style: TextStyle(color: Colors.white),
                      validator: (email1) {
                        if (email1!.isEmpty &&
                            !email1.contains("@") &&
                            !email1.contains(".")) {
                          return "Enter your Email id";
                        } else
                          return null;
                      },
                      controller: email_controller,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white24,
                        hintText: "Enter your Email",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "Email Address",
                        labelStyle: TextStyle(color: Colors.white),
                        suffixIcon: Icon(Icons.email),
                        suffixIconColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      style: TextStyle(color: Colors.white),
                      controller: password2_controller,
                      obscuringCharacter: '*',
                      obscureText: true,
                      validator: (pass) {
                        if (pass!.isEmpty || pass.length < 6) {
                          return "password must greater than 6";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white24,
                        hintText: "Create a password",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "password",
                        labelStyle: TextStyle(color: Colors.white),
                        suffixIcon: Icon(Icons.password),
                        suffixIconColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      style: TextStyle(color: Colors.white),
                      obscuringCharacter: '*',
                      obscureText: true,
                      controller: password3_controller,
                      validator: (pass) {
                        if (pass!.isEmpty || pass.length < 6) {
                          return "Password must should be greater than 6";
                        } else if (password2_controller.text !=
                            password3_controller.text) {
                          return "password not match";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white24,
                        labelText: "Confirm your password",
                        hintStyle: TextStyle(color: Colors.white),
                        labelStyle: TextStyle(color: Colors.white),
                        suffixIcon: Icon(Icons.email),
                        suffixIconColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80),
                    child: MaterialButton(
                        color: Colors.red,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        onPressed: () {
                          // final valid1 = formkey1.currentState!.validate();
                          //
                          // if (valid1) {
                          //   String uname = email_controller.text;
                          //   String name = username2_controller.text;
                          //
                          //   var data = await SQLHelper1.userFound(name, uname);
                          //   if (data.isNotEmpty) {
                          //     ScaffoldMessenger.of(context).showSnackBar(
                          //         const SnackBar(
                          //             content: Text('User already exit')));
                          //   } else {
                          //     AddNewUser123(username2_controller.text,
                          //         email_controller.text, password2_controller.text);
                          //   }
                          // } else {
                          //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          //     action:
                          //         SnackBarAction(label: 'UNDO', onPressed: () {}),
                          //     content: const Text('Invalid username / password'),
                          //   ));
                        },
                        child: Text("Register")),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  userlogin()));
                      },
                      child: Text(
                        "Already have an Account ?",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ],
              ))]));
  }
}