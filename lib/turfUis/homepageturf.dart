import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:turfproject/turfUis/settings.dart';
import 'package:turfproject/turfUis/turf1booking.dart';
import 'package:turfproject/turfUis/turf2booking.dart';
import 'package:turfproject/turfUis/turf3booking.dart';
import 'package:turfproject/turfUis/turf4booking.dart';
import 'package:turfproject/turfUis/turf5booking.dart';
import 'package:turfproject/turfUis/turf6booking.dart';
import 'package:turfproject/turfUis/userprofile.dart';
/*
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            home: hmeex(),
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
          )));
}
*/
class hmeex extends StatefulWidget {
  @override
  State<hmeex> createState() => _hmeexState();
}

class _hmeexState extends State<hmeex> {






  int index=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(child: Text("Kozhikkode Turfs")),
        leading: Icon(Icons.menu),
      ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.green,
          onTap: (tapindex){
            setState(() {
              index=tapindex;
            });
          },
          selectedItemColor: Colors.black,unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon:IconButton(onPressed: (){
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>userprofile()));
    },icon:Icon( Icons.person),),label: "profile"),
            BottomNavigationBarItem(icon:Icon( Icons.search),label: "Search"),
            BottomNavigationBarItem(icon:IconButton(onPressed: (){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>settings()));

    },icon: Icon( Icons.settings)),label: "Settings"),
           // BottomNavigationBarItem(icon:Icon( Icons.),label: "Favorites"),


          ],),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => turf1()));
                    },
                    child: Card(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("assets/icons/2_2.jpg"),
                            height: 130,
                            width: double.infinity,
                            fit: BoxFit.fitWidth,
                          ),
                          ListTile(
                            title: Text(
                              "Zeta Sports Arena",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("Eramjikkal,Kozhikkode"),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Text(
                                    "  (220 reviews) ",
                                    style: TextStyle(color: Colors.black87),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => turf2()));
                    },
                    child: Card(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(
                                "assets/icons/Ken-Sports-Football-Turf-123-q2sflm30jtw5j1p91aswn4gzfuokmkn15sjalowxgw.jpeg"),
                            height: 130,
                            width: double.infinity,
                            fit: BoxFit.fitWidth,
                          ),
                          ListTile(
                            title: Text(
                              "Cuju Sports Football Turf",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("Malaparamba,Kozhikkode"),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Text(
                                    "  (220 reviews) ",
                                    style: TextStyle(color: Colors.black87),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => turf3()));
                    },
                    child: Card(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(
                                "assets/icons/cricket-pitch-astro-turf-500x500.webp"),
                            height: 130,
                            width: double.infinity,
                            fit: BoxFit.fitWidth,
                          ),
                          ListTile(
                            title: Text(
                              "Estadio sports turf",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("Mayanad,Kozhikkode"),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Text(
                                    "  (220 reviews) ",
                                    style: TextStyle(color: Colors.black87),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => turf4()));
                    },
                    child: Card(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(
                                "assets/icons/football-turf-maintenance-service-500x500.webp"),
                            height: 130,
                            width: double.infinity,
                            fit: BoxFit.fitWidth,
                          ),
                          ListTile(
                            title: Text(
                              "Forza Turf Football",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("Poovangal,Kozhikkode"),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Text(
                                    "  (220 reviews) ",
                                    style: TextStyle(color: Colors.black87),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => turf5()));
                    },
                    child: Card(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("assets/icons/OIP (5).jpeg"),
                            height: 130,
                            width: double.infinity,
                            fit: BoxFit.fitWidth,
                          ),
                          ListTile(
                            title: Text(
                              "Soccer City",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("Kattooli,Kozhikkode"),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Text(
                                    "  (220 reviews) ",
                                    style: TextStyle(color: Colors.black87),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => turf6()));
                    },
                    child: Card(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(
                                "assets/icons/final-ground-agra-500x500.webp"),
                            height: 130,
                            width: double.infinity,
                            fit: BoxFit.fitWidth,
                          ),
                          ListTile(
                            title: Text(
                              "Kalista Football Turf",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("Est Hill,Kozhikkode"),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                  ),
                                  Text(
                                    "  (220 reviews) ",
                                    style: TextStyle(color: Colors.black87),
                                  )
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
