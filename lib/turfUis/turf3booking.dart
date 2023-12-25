import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        home: turf3(),
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
      )));
}

class turf3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage("assets/icons/cricket-pitch-astro-turf-500x500.webp"),
                      fit: BoxFit.cover)),
              height: 350,
              width: 400,
            ),
          ),
          ListView(children: [
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 350, right: 140),
                    child: ListTile(
                      title: Text(
                        "Estadio sports turf",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black),
                      ),
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
                      )),SizedBox(height: 20,),
                  Container(
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "Description",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text("Football is a grueling sport, and the gridiron takes a beating. Your field should stand up to the pressure as well as your players do. Football presents a unique set of challenges for turf manufacturers — we need to protect players’ lower ligaments during play, attenuate shock to reduce the chances of concussions, all while providing the speed and agility players need to perform. "
                                "To deliver these benefits at the same time, AstroTurf incorporates distinct technological innovations."),
                          ),
                        )
                      ],
                    ),
                  ),Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SizedBox(height: 70,width: 300,
                      child: Container(margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                        child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,
                        ),
                            onPressed: (){}, child: Text("Book Now",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]),

        ],
      ),
    );
  }
}
