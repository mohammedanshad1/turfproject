
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:turfproject/turfUis/SPLASH/COMPONENTS/body.dart';
import 'package:turfproject/turfUis/SPLASH/sizeconfig.dart';
import 'dart:html';

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
