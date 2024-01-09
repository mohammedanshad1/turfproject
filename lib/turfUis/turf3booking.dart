import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class turf3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
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
                    padding: const EdgeInsets.only(top: 320, right: 140),
                    child: ListTile(
                      title: Text(
                        "Zeta Sports Arena",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 10),
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
                      )),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 280,top: 10),
                      child: Text(
                        "Facilities",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(children: [
                        Row(
                          children: [
                            Icon(
                              Icons.park,
                              color: Colors.green,
                            ),
                            Text("Parking")
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Row(
                            children: [
                              Icon(
                                Icons.bathroom,
                                color: Colors.green,
                              ),
                              Text("Washroom")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Row(
                            children: [
                              Icon(
                                Icons.restaurant,
                                color: Colors.green,
                              ),
                              Text("Restuarant")
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
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
                            child: Text(
                                "Football is a grueling sport, and the gridiron takes a beating. "
                                    "Your field should stand up to the pressure as well as your players do. "
                                    "Football presents a unique set of challenges for turf manufacturers — we need to protect players’ lower ligaments during play, "
                                    "attenuate shock to reduce the chances of concussions, "
                                    "all while providing the speed and agility players need to perform. "
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 70,
                      width: 300,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Book Now",
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                  )
                ],
              ),
            )
          ]),
        ]));
  }
}
