import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turfproject/turfUis/SPLASH/splashscreen.dart';
import 'package:turfproject/turfUis/firebase.dart';
import 'package:turfproject/turfUis/homepageturf.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: CheckLogin(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CheckLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FireHelper1().isUserLoggedIn(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.data == true) {
          return hmeex();
        } else {
          return SplashScreen();
        }
      },
    );
  }
}
