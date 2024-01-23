import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turfproject/turfUis/SPLASH/splashscreen.dart';
import 'package:turfproject/turfUis/homepageturf.dart';

import 'firebase.dart';
import 'loginturf.dart';

class settings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
body:Column(children: [

  AppBar(title: Center(child: Text("Settings",style: TextStyle(color: Colors.black,fontSize: 25,
      fontWeight: FontWeight.bold),
  ),),leading: GestureDetector(onTap: (){
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>hmeex()));
  },
      child: Icon(Icons.arrow_back_ios)),),

   SizedBox(height: 30,),
        ListTile(leading: Container(
            decoration: BoxDecoration(color: Colors.green,
                borderRadius: BorderRadius.circular(30)),
            child: Icon(Icons.person,size: 30,)),
        title: Text("Profile",style: TextStyle(color: Colors.black,fontSize: 20),),
        trailing: Icon(Icons.arrow_forward_ios),),
  Divider(color: Colors.grey,),
  SizedBox(height: 30,),
  ListTile(leading: Container(
      decoration: BoxDecoration(color: Colors.green,
          borderRadius: BorderRadius.circular(30)),
      child: Icon(Icons.privacy_tip,size: 30,)),
    title: Text("Privacy",style: TextStyle(color: Colors.black,fontSize: 20),),
    trailing: Icon(Icons.arrow_forward_ios),),
  Divider(color: Colors.grey,),

  SizedBox(height: 30,),
  ListTile(leading: Container(
      decoration: BoxDecoration(color: Colors.green,
          borderRadius: BorderRadius.circular(30)),
      child: Icon(Icons.share,size: 30,)),
    title: Text("Share",style: TextStyle(color: Colors.black,fontSize: 20),),
    trailing: Icon(Icons.arrow_forward_ios),),
  Divider(color: Colors.grey,),

  SizedBox(height: 30,),
  ListTile(leading: Container(
      decoration: BoxDecoration(color: Colors.green,
          borderRadius: BorderRadius.circular(30)),
      child: Icon(Icons.help,size: 30,)),
    title: Text("About",style: TextStyle(color: Colors.black,fontSize: 20),),
    trailing: Icon(Icons.arrow_forward_ios),),
  Divider(color: Colors.grey,),
  SizedBox(height: 30,),
  ListTile(leading: Container(
      decoration: BoxDecoration(color: Colors.green,
          borderRadius: BorderRadius.circular(30)),
      child: Icon(Icons.terminal_sharp,size: 30,)),
    title: Text("Terms & Conditions",style: TextStyle(color: Colors.black,fontSize: 20),),
    trailing: Icon(Icons.arrow_forward_ios),),
  Divider(color: Colors.grey,),
  SizedBox(height: 30,),
  GestureDetector(onTap: (){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
  },
    child: ListTile(leading: Container(
        decoration: BoxDecoration(color: Colors.green,
            borderRadius: BorderRadius.circular(30)),
        child: Icon(Icons.logout,size: 30,)),
      title: Text("Logout",style: TextStyle(color: Colors.black,fontSize: 20),),
      trailing: Icon(Icons.arrow_forward_ios),),
  ),
  Divider(color: Colors.grey,),







])
   );
  }



}