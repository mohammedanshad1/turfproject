
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:turfproject/firebase/reg.dart';
import 'package:turfproject/turfUis/homepageturf.dart';
import 'package:turfproject/turfUis/register.dart';
import 'package:turfproject/turfUis/turfhomepage.dart';

import 'SPLASH/COMPONENTS/splash.content.dart';
import 'firebase.dart';



Future<void> main() async{


  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(GetMaterialApp(
    home: Login(),
  ));
}

class Login extends StatefulWidget{
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? email;
 String? password;
  bool showpass=true;

  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(title: Center(child: Text("Sign In")),
        leading:GestureDetector(onTap: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SplashContent(),));
        },
            child: Icon(Icons.arrow_back_ios)) ,),

        body: Form(
          key: formkey,
          child:SafeArea(child:
            SizedBox(
          width: double.infinity,
          child:Padding(padding:
    EdgeInsets.symmetric(horizontal: 20),
          child:SingleChildScrollView(
          child:Column(children: [
    const SizedBox(height: 30),
    const Text(
    "Welcome Back",
    style: TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    ),
    ), SizedBox(
    height: 10,
    ),
    const Text(
    "Sign in with your email and password  \nor continue with social media",
    textAlign: TextAlign.center,
    ),
            SizedBox(height: 45,),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: TextFormField(textInputAction: TextInputAction.next,
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
                  borderSide: BorderSide(
                      color: Colors.white),
                ),),
                  validator: (email) {
                    if (email!.isEmpty) {
                      return "Enter Some value";
                    } else {
                      return null;
                    }
                  },onSaved: (eemail){
                    email=eemail;


                  }

              ),
            ),

            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: TextFormField( textInputAction: TextInputAction.next,
                  obscureText: showpass,obscuringCharacter: "*",
                  decoration: InputDecoration( filled: true,
                      fillColor: Colors.white24,
                      hintText: " Enter your Password",
                      hintStyle: TextStyle(color: Colors.black),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.black),
                      suffixIcon: Icon(Icons.email),
                      suffixIconColor: Colors.black,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                            color: Colors.white), //
                      ),),
                  validator: (password) {
                    if (password!.isEmpty) {
                      return "Password cannot be empty";
                    } else {
                      return null;
                    }

                  },
                  onSaved: (epass){
                    password=epass;

                  }),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(height: 70,width: 300,
                child: Container( decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50)),
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                      onPressed: () {
                        if (formkey.currentState!.validate()) ;{



                          formkey.currentState!.save();
                          FireHelper1().signIn(mail: email!, pasword: password!).then((value){
                            if(value == null){
                              Get.to(hmeex());
                            }else{
                              Get.snackbar("Error", "User not found $value");
                            }
                          });

                        }

                      },
                      child: const Text("Login",
                        style: TextStyle(
                            color: Colors.white, fontSize: 20),
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: SvgPicture.asset(
                      "assets/svg/7ce3c2fa-94f7-4795-8f80-759630311ac1_pixelied-i-love-lucy.svg",
                      height: 30,
                      width: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SvgPicture.asset(
                      "assets/svg/fb.svg",
                      height: 30,
                      width: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: SvgPicture.asset(
                      "assets/svg/twitter.svg",
                      height: 30,
                      width: 30,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
                onPressed: () {
                  Get.to(registration());
                },
                child: Text(
                  "Don't have an account? Sign Up ",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ))

          ],),
        )
    )))));
  }
}

