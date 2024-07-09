import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'firebase.dart';
import 'loginturf.dart';



class registration extends StatefulWidget{
  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
String? name;
  String? email;
  String? password;
  bool showpass=true;

  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(title: Center(child: Text("Sign Up"),
        ),leading: GestureDetector(onTap: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
        },
            child: Icon(Icons.arrow_back_ios)),),

        body: Form(
          key: formkey,
          child:SizedBox(width: double.infinity,
          child:Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
          child:SingleChildScrollView(
          child:Column(children: [
            const SizedBox(height: 16),
            const Text("Register Account", style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,fontSize: 24)),
            SizedBox(height: 10,),
            const Text(
              "Complete your details or continue \nwith social media",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(filled: true,
                fillColor: Colors.white24,
                hintText: "Enter your Name",
                hintStyle: TextStyle(color: Colors.black),
                labelStyle: TextStyle(color: Colors.black),
                suffixIcon: Icon(Icons.person),
                suffixIconColor: Colors.black,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide:
                  BorderSide(color: Colors.white),
                ),labelText: "name",),
                  validator: (name) {
                    if (name!.isEmpty) {
                      return "Enter Some value";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (ename){
                    name=ename;

                  }
              ),
            ),

            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: TextFormField(textInputAction: TextInputAction.next,
                  decoration: InputDecoration(filled: true,
                fillColor: Colors.white24,
                hintText: "Enter Your Email id",
                hintStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide:
                  BorderSide(color: Colors.white),
                ),labelText: "email",
                labelStyle: TextStyle(color: Colors.black),
                suffixIcon: Icon(Icons.email),
                suffixIconColor: Colors.black,),
                  validator: (email) {
                    if (email!.isEmpty) {
                      return "Enter Some value";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (eemail){
                    email=eemail;

                  }
              ),
            ),

            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: TextFormField(textInputAction: TextInputAction.next,
                  obscureText: showpass,obscuringCharacter: "*",
                  decoration: InputDecoration(fillColor: Colors.white24,
                      filled: true,
                      hintText: "Enter Your Password",
                      hintStyle: TextStyle(color: Colors.black),
                      labelStyle: TextStyle(color: Colors.black),
                      suffixIcon: Icon(Icons.email),
                      suffixIconColor: Colors.black,

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                        BorderSide(color: Colors.white),
                      ),labelText: "password"),
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
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: TextFormField(textInputAction: TextInputAction.next,
                  obscureText: showpass,obscuringCharacter: "*",
                  decoration: InputDecoration(fillColor: Colors.white24,
                      filled: true,
                      hintText: "Confirm Your Password",
                      hintStyle: TextStyle(color: Colors.black),
                      labelStyle: TextStyle(color: Colors.black),
                      suffixIcon: Icon(Icons.email),
                      suffixIconColor: Colors.black,

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                        BorderSide(color: Colors.white),
                      ),labelText: "Confirm password"),
                  validator: (password) {
                    if (password!.isEmpty) {
                      return "Password cannot be empty";
                    } else {
                      return null;
                    }

                  },
                 /* onSaved: (epass){
                    password=epass;

                  }*/
                  ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(height: 70,width: 300,
                child: Container(margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),

                  child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                      onPressed: () {
                        if (formkey.currentState!.validate()) ;{
                          formkey.currentState!.save();
                          FireHelper1().signUp(mail: email!, password: password!).then((value){
                            if(value == null){
                              Get.to(Login());
                            }else{
                              Get.snackbar("Error", "User not found $value");
                            }
                          });

                        }


                      },
                      child: const Text("Register",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20),)),
                ),
              ),
            ),
            Container(
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: SvgPicture.asset(
                      "assets/svg/7ce3c2fa-94f7-4795-8f80-759630311ac1_pixelied-i-love-lucy.svg",height: 30,width: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SvgPicture.asset(
                      "assets/svg/fb.svg",height: 30,width: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: SvgPicture.asset(
                      "assets/svg/twitter.svg",height: 30,width: 30,
                    ),
                  ),
                ],
              ),),
            const SizedBox(height: 16),
            Text(
              'By continuing your confirm that you agree \nwith our Term and Condition',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            )


          ],),
        )
    ))));
  }
}

