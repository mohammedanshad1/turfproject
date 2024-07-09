



import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:turfproject/turfUis/SPLASH/COMPONENTS/body.dart';
import 'package:turfproject/turfUis/SPLASH/sizeconfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';



class SplashScreen extends StatelessWidget {
 // static String routeName = "/splash";
 //   static String routeName1 = "/SignInScreen";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
