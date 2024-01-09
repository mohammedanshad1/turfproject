/*import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_slider/widget_slider.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DevicePreview(builder: (BuildContext context)
    => const MaterialApp(home: Home(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,));
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = SliderController(
    duration: const Duration(milliseconds: 600),
  );

  final images = const [
    "assets/icons/2_2.jpg",
    "assets/icons/artificial-football-ground-turf-500x500.webp",

    "assets/icons/OIP (5).jpeg",
    "assets/icons/football-turf-maintenance-service-500x500.webp"

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [Center(child: Text("Kozhikode Turfs",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black))),
      SizedBox(height: 180,),
      Center(
        child: WidgetSlider(
          fixedSize: 350,


          controller: controller,
          itemCount: images.length,
          itemBuilder: (context, index, activeIndex) {
            return CupertinoButton(
              onPressed: () async => await controller.moveTo?.call(index),
              child: SizedBox(width: 800,
                child: Container(
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(images[index]),

                    ),


                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade100,
                        offset: const Offset(10, 8),
                        spreadRadius: 20,
                        blurRadius: 20,
                      ),
                    /*  BoxShadow(
                        color: Colors.grey.shade100,
                        offset: const Offset(10,18),
                        spreadRadius: 20,
                        blurRadius: 20,
                      ),
                      BoxShadow(
                        color: Colors.grey.shade100,
                        offset: const Offset(10, 18),
                        spreadRadius: 20,
                        blurRadius: 20,
                      ),
                      BoxShadow(
                        color: Colors.grey.shade100,
                        offset: const Offset(10, 18),
                        spreadRadius: 20,
                        blurRadius: 20,
                      ),*/
                    ],
                  ),
                //  child: Text(text[index]),
                ),
              ),
            );
          },
        ),
      ),
          ]
      )
    );
  }
}
*/
/*
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:turfproject/turfUis/turf1booking.dart';
import 'package:turfproject/turfUis/turf2booking.dart';
import 'package:turfproject/turfUis/turf3booking.dart';
import 'package:turfproject/turfUis/turf4booking.dart';
import 'package:turfproject/turfUis/turf5booking.dart';
import 'package:turfproject/turfUis/turf6booking.dart';


class turfhome extends StatefulWidget {
  @override
  State<turfhome> createState() => _turfhomeState();
}

class _turfhomeState extends State<turfhome> {
  var page = [
    TabBarView(children: [turf1()]),
    TabBarView(children: [turf2()]),
    TabBarView(children: [turf3()]),
    TabBarView(children: [turf4()]),
    TabBarView(children: [turf5()]),
    TabBarView(children: [turf6()])
  ];
  var image = [
    "assets/icons/2_2.jpg",
    "assets/icons/Ken-Sports-Football-Turf-123-q2sflm30jtw5j1p91aswn4gzfuokmkn15sjalowxgw.jpeg",
    "assets/icons/cricket-pitch-astro-turf-500x500.webp",
    "assets/icons/football-turf-maintenance-service-500x500.webp",
    "assets/icons/OIP (5).jpeg",
    "assets/icons/final-ground-agra-500x500.webp"
  ];
  var text = [
    "Zeta Sports Arena",
    "Cuju Sports Football Turf",
    "Estadio sports turf",
    "Forza Turf Football",
    "Soccer City",
    "Kalista Football Turf"
  ];

  var sub = [
    "Eramjikkal,Kozhikkode",
    "Malaparamba,Kozhikkode",
    "Mayanad,Kozhikkode",
    "Poovangal,Kozhikkode",
    "Kattooli,Kozhikkode",
    "Est Hill,Kozhikkode",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
          body: CustomScrollView(slivers: [
        SliverAppBar(
            backgroundColor: Colors.green,
            floating: true,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.only(bottom: 70),
              child: Icon(Icons.menu),
            ),
            title: Center(
                child: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Text("Kozhikkode Turfs"),
            )),
            // actions: [
            // Padding(
            // padding: const EdgeInsets.only(bottom: 70),
            //child: Icon(Icons.favorite),
            //),
            //],
            bottom: AppBar(
                backgroundColor: Colors.green,
                elevation: 0,
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search By Names",
                        prefixIcon: Icon(Icons.search)),
                  ),
                ))),
        /*SliverGrid(
      delegate: SliverChildBuilderDelegate((context, index) {
      return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(decoration: BoxDecoration(color: color[index],
      borderRadius: BorderRadius.circular(20)),
      child: Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
      children: [
      Icon(
      icon[index],
      color: Colors.white,
      ),
      Text(
      name[index],
      style: TextStyle(color: Colors.white),
      ),
      ],
      ),
      ),
      ),
      );
      }, childCount: name.length),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3, mainAxisSpacing: 80, crossAxisSpacing: 20)),*/

        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Image(
                            image: AssetImage(image[index]),
                            height: 130,
                            width: double.infinity,
                            fit: BoxFit.fitWidth,
                          ),
                        ],
                      ),
                      ListTile(
                        title: Text(
                          text[index],
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          sub[index],
                          style: TextStyle(color: Colors.black),
                        ),
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
                      ))
                    ],
                  )),
            ),
          );
        }, childCount: image.length)),
      ])),
    );
  }
}
*/