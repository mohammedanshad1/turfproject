
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../turfUis/firebase.dart';
import 'firehelper.dart';


class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Home Page"),),

      body: ListView(children: [

        Text("Welcome"),
        ElevatedButton(onPressed: () {
          FireHelper1().signOut().then((v) {
            //  Get.to(//Login());
          });
        }, child: Text("SignOut"))
      ],),
    );
  }

}

