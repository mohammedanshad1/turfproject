/*
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:turfproject/firebase/reg.dart';


import 'firehelper.dart';
import 'home.dart';

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

    appBar: AppBar(title: Text("Login Page"),),

    body: Form(
    key: formkey,
    child:Column(children: [

      SizedBox(height: 20,),
      TextFormField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "email",),
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

      SizedBox(height: 20,),
      TextFormField(obscureText: showpass,obscuringCharacter: "*",
        decoration: InputDecoration(
          border: OutlineInputBorder(),labelText: "password"),
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
      SizedBox(height: 20,),
      ElevatedButton(
          onPressed: () {
            if (formkey.currentState!.validate()) ;{



    formkey.currentState!.save();
    FireHelper1().signIn(mail: email!, pasword: password!).then((value){
    if(value == null){
    Get.to(home());
    }else{
    Get.snackbar("Error", "User not found $value");
    }
    });

            }

          },
          child: const Text("Login")),
      SizedBox(height: 20,),
      TextButton(onPressed: (){
        Get.to(registration());
      }, child: Text("Create New Account"))

    ],),
  )
  );
  }
}

*/