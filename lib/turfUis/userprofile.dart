import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'homepageturf.dart';

class userprofile extends StatelessWidget {
  late final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBar(
            title: Center(
              child: Text(
                "My Profile",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            leading: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => hmeex()));
                },
                child: Icon(Icons.arrow_back_ios)),
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.person,
                  size: 30,
                )),
            title: Text(
              "User details",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            color: Colors.grey,
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.password,
                  size: 30,
                )),
            title: Text(
              "Change Password",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            color: Colors.grey,
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.paid,
                  size: 30,
                )),
            title: Text(
              "booking details",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            color: Colors.grey,
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.email,
                  size: 30,
                )),
            title: Text(
              "Add Alternative Email",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            color: Colors.grey,
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.terminal_sharp,
                  size: 30,
                )),
            title: Text(
              "Terms & Conditions",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            color: Colors.grey,
          ),
          SizedBox(
            height: 30,
          ),
         ListTile(
              leading: Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(
                    Icons.wallet,
                    size: 30,
                  )),
              title: Text(
                "Wallet",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),

          Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
