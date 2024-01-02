import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turfproject/turfUis/registerusers.dart';
import 'package:turfproject/turfUis/turf1booking.dart';
import 'package:turfproject/turfUis/turf6booking.dart';
import 'package:turfproject/turfUis/loginuser.dart';
//import 'package:newflutterproject/sqflite1/registrationpage.dart';

//import 'login.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>MaterialApp(
      home: splash(),
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (

         /* Center(
              child: Text(
                "Hello There!",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 35),
              )),
          SizedBox(
            height: 20,
          ),
          ListTile(
            subtitle: Text(
              " Automatic identify verifivation which enable you to verify your identify",
              style: TextStyle(fontSize: 18),
            ),
          ),*/
         /*SizedBox(
            height: 30,
          ),
        Image(
          image: AssetImage(
              "assets/icons/IMG-20240102-WA0006.png"),fit: BoxFit.cover,),
          SizedBox(
            height: 100,
          ),*/
         /* GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Register3()


                  ));

            },
            child: Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.deepPurpleAccent),
              child: ListTile(
                title: Center(
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.red),
            child: GestureDetector(onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> userlogin() ));},
              child: ListTile(
                title: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.black),
                    )),

              ),
            ),
          ),*/
          //TextButton(onPressed: (){}, child: Text("Already have an Account ?",style: TextStyle(fontSize: 18,color: Colors.black),))


          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(0),
          image: DecorationImage(image: AssetImage("assets/icons/IMG-20240102-WA0006.png",),fit: BoxFit.fill)),
          )

      ),
    );
  }
}
