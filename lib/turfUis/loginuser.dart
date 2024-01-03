/*import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>MaterialApp(
      home: splash(),
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,

    ),
  ));
}

class splash extends StatefulWidget {
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:

        ListView(children: [


          ListTile(leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Icon(Icons.arrow_back_ios,color: Colors.black,),
          ),
          title: Center(child: Text("Sign In")),),

          ListTile(title: Center(child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text("Welcome Back",style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.bold),
            ),


          ),
          ),subtitle: Center(child: Text("                               Sign in with your                                                                                          email "
              "and password or"
              " continue with social media")),),

          SizedBox(height: 40),
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
          SizedBox(height: 30),
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
                hintText: " Enter your password",
                hintStyle: TextStyle(color: Colors.black),
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.black),
                suffixIcon: Icon(Icons.password),
                suffixIconColor: Colors.black,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide:
                  BorderSide(color: Colors.black), // Change this line
                ),

                // enabledBorder: OutlineInputBorder(
                //  borderSide: BorderSide(color: Colors.black)),
              ),
            ),
          ),


         SizedBox(height: 20,),
    ListTile(trailing: Text("ForgotPassword",style: TextStyle(color: Colors.black,fontSize: 15),),),



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
                          color: Colors.white, ),
                    )),
              ),
            ),
          ),SizedBox(height: 50,),
          Container(
            margin: const EdgeInsets.only(left: 70,right: 70,top: 25),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset("assets/Svg/fb.svg",height: 30,width: 30,),
                SvgPicture.asset("assets/Svg/googleplus.svg",height: 30,width: 30,),
                SvgPicture.asset("assets/Svg/twitter.svg",height: 30,width: 30,),

              ],
            ),
          ),
          SizedBox(height: 20,),
          TextButton(onPressed: (){}, child: Text("Don't have an account? Sign Up ",style: TextStyle(color: Colors.black,fontSize: 15),))


        ]));


  }
}

*/

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:turfproject/turfUis/registerusers.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            home: SignInScreen(),
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
          )));
}

class SignInScreen extends StatelessWidget {
 // static String routeName = "/sign_in";

  //const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("Sign In")),
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height:30),
                  const Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10,),
                  const Text(
                    "Sign in with your email and password  \nor continue with social media",
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 45),
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

                   SizedBox(height: 25),
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
                                color: Colors.white,fontSize: 20 ),
                            )),
                      ),
                    ),
                  ),SizedBox(height: 100,),
                  Container(
                    child:
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
                  ),),
                  const SizedBox(height: 20),
                     TextButton(onPressed: (){
                       Navigator.pushReplacement(context, MaterialPageRoute(builder:
                       (context)=>SignUpScreen()));
                     }, child: Text("Don't have an account? Sign Up ",style: TextStyle(color: Colors.black,fontSize: 15),))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
