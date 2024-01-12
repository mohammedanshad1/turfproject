



import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:turfproject/turfUis/SPLASH/COMPONENTS/body.dart';
import 'package:turfproject/turfUis/SPLASH/sizeconfig.dart';



import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'package:turfproject/turfUis/homepageturf.dart';
import 'package:turfproject/turfUis/register.dart';
import 'package:turfproject/turfUis/turfhomepage.dart';

Future<void> main() async{


  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(GetMaterialApp(debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}
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
