import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(DevicePreview(builder: (BuildContext context) => MaterialApp(home: splashscreen(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,)));
}
class splashscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(decoration: BoxDecoration(image: DecorationImage(image:
    AssetImage("assets/icons/photo_2023-12-19_19-46-30.jpg"),fit: BoxFit.fill)),),
    );
  }



}