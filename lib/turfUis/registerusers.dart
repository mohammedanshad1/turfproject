import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'loginuser.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";

  const SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("Sign Up")),
        leading:    GestureDetector(onTap: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder:
              (context)=>SignInScreen()));
        },
            child: Icon(Icons.arrow_back_ios)),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  const Text("Register Account", style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold,fontSize: 24)),
                  SizedBox(height: 10,),
                  const Text(
                    "Complete your details or continue \nwith social media",
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 25),
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

                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white24,
                        hintText: " Enter Your Nmae",
                        hintStyle: TextStyle(color: Colors.black),
                        labelText: "Name",
                        labelStyle: TextStyle(color: Colors.black),
                        suffixIcon: Icon(Icons.email),
                        suffixIconColor: Colors.black,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                          BorderSide(color: Colors.white), // Change this line
                        ),

                        // enabledBorder: OutlineInputBorder(
                        //  borderSide: BorderSide(color: Colors.black)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      validator: (text) {
                        if (text!.isEmpty ||
                            !text.contains('@') ||
                            !text.contains('.com')) {
                          return " Enter valid Username !!!";
                        }
                      },

                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white24,
                        hintText: " Enter your email id",
                        hintStyle: TextStyle(color: Colors.black),
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.black),
                        suffixIcon: Icon(Icons.email),
                        suffixIconColor: Colors.black,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                          BorderSide(color: Colors.white), // Change this line
                        ),

                        // enabledBorder: OutlineInputBorder(
                        //  borderSide: BorderSide(color: Colors.black)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
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

                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white24,
                        hintText: " Enter your Password",
                        hintStyle: TextStyle(color: Colors.black),
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.black),
                        suffixIcon: Icon(Icons.email),
                        suffixIconColor: Colors.black,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                          BorderSide(color: Colors.white), // Change this line
                        ),

                        // enabledBorder: OutlineInputBorder(
                        //  borderSide: BorderSide(color: Colors.black)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      validator: (text) {
                        if (text!.isEmpty ||
                            !text.contains('@') ||
                            !text.contains('.com')) {
                          return " Enter valid Password !!!";
                        }
                      },

                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white24,
                        hintText: " Confirm your Password",
                        hintStyle: TextStyle(color: Colors.black),
                        labelText: " Confirm Password",
                        labelStyle: TextStyle(color: Colors.black),
                        suffixIcon: Icon(Icons.email),
                        suffixIconColor: Colors.black,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                          BorderSide(color: Colors.white), // Change this line
                        ),

                        // enabledBorder: OutlineInputBorder(
                        //  borderSide: BorderSide(color: Colors.black)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SizedBox(
                      height: 70,
                      width: 300,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Continue",
                              style: TextStyle(
                                color: Colors.white,
                              fontSize: 20),
                            )),
                      ),
                    ),
                  ),


                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/svg/googleplus.svg",height: 30,width: 30,

                      ),
                      SvgPicture.asset(
                        "assets/svg/fb.svg",height: 30,width: 30,

                      ),
                      SvgPicture.asset(
                        "assets/svg/twitter.svg",height: 30,width: 30,

                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'By continuing your confirm that you agree \nwith our Term and Condition',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}