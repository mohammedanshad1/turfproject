import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'homepageturf.dart';

class userprofile extends StatelessWidget{
  late final String email;
  @override
  Widget build(BuildContext context) {
  return Scaffold(


    body: ListView(children: [

        AppBar(title: Center(child: Text("My Profile",style: TextStyle(color: Colors.black,fontSize: 25,
        fontWeight: FontWeight.bold),
        ),),leading: GestureDetector(onTap: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>hmeex()));
        },
            child: Icon(Icons.arrow_back_ios)),),




      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListTile(
          title: Center(
              child: Text(
                "Anshad",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
          subtitle: Center(
              child: Text(
                "@anshads",
                style: TextStyle(fontSize: 15),
              )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 30, top: 20),
        child: Text(
          "Mobile App Developer and Open Source enthusiastic",
          style: TextStyle(fontSize: 18),
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
                title: Text("Purchase History",style: TextStyle(color: Colors.black,),),
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
                title: Text("Settings",style: TextStyle(color: Colors.black,),),
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
                trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,),)
          ),
        ),
      )
    ],
    ),
  );
  }




}