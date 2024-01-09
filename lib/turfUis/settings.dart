import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turfproject/turfUis/homepageturf.dart';

import 'firebase.dart';

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


       Padding(
         padding: const EdgeInsets.only(top: 20),
         child: SizedBox(
           width: 250,
           child: Container(
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(500),
                   color: Colors.grey),
               child: ListTile(
                 title: Text("Privacy",style: TextStyle(color: Colors.black,),),
                 leading:Icon(Icons.privacy_tip,color: Colors.black,) ,
                 trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,),)
           ),
         ),
       ),

       Padding(
         padding: const EdgeInsets.only(top: 20),
         child: SizedBox(
           width: 250,
           child: Container(
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(500),
                   color: Colors.grey),
               child: ListTile(
                 title: Text("Booking History",style: TextStyle(color: Colors.black,),),
                 leading:Icon(Icons.history,color: Colors.black,) ,
                 trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,),)
           ),
         ),
       ),

       Padding(
         padding: const EdgeInsets.only(top: 20),
         child: SizedBox(
           width: 250,
           child: Container(
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(500),
                   color: Colors.grey),
               child: ListTile(
                 title: Text("Help&Support",style: TextStyle(color: Colors.black,),),
                 leading:Icon(Icons.help,color: Colors.black,) ,
                 trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,),)
           ),
         ),
       ),

       Padding(
         padding: const EdgeInsets.only(top: 20),
         child: SizedBox(
           width: 250,
           child: Container(
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(500),
                   color: Colors.grey),
               child: ListTile(
                 title: Text("Email",style: TextStyle(color: Colors.black,),),
                 leading:Icon(Icons.settings,color: Colors.black,) ,
                 trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,),)
           ),
         ),
       ),

       Padding(
         padding: const EdgeInsets.only(top: 20),
         child: SizedBox(
           width: 250,
           child: Container(
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(400),
                   color: Colors.grey),
               child: ListTile(
                 title: Text("Invite Friend",style: TextStyle(color: Colors.black,),),
                 leading:Icon(Icons.insert_invitation,color: Colors.black,) ,
                 trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,),
               )
           ),
         ),
       ),



  Padding(
    padding: const EdgeInsets.only(top: 20),
    child: SizedBox(
      width: 250,
      child: GestureDetector(onTap: (){
        FireHelper1().signOut().then((v) {
          //  Get.to(//Login());
        });
      },
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(400),
                color: Colors.grey),
            child: ListTile(
              title: Text("Log out",style: TextStyle(color: Colors.black,),),
              leading:Icon(Icons.insert_invitation,color: Colors.black,) ,
              trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,),
            )
        ),
      ),
    ),
  )])
   );
  }



}