

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turfproject/turfUis/SPLASH/COMPONENTS/splash.content.dart';

import '../../loginturf.dart';
import '../constants.dart';
import '../sizeconfig.dart';
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Sakka, Let's Enjoy!",
      "image": "assets/icons/2171.jpg"
    },
    {
      "text":
      "We help people conect with App \naround all ",
      "image": "assets/icons/—Pngtree—green grass soccer field football_4451686.png"
    },
    {
      "text": "We show the easy way to book turf. \nJust stay at home with us",
      "image": "assets/icons/man-kicking-ball-on-field-concept-free-vector.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]["text"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(56),
                ),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                            (index) => buildDot(index: index),
                      ),
                    ),

                    Spacer(flex: 3), SizedBox(
                      width: double.infinity,
                      height: getProportionateScreenHeight(56),
                     // child: GestureDetector(onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignInScreen()));},
                        child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                          onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
                        }, child: Text("Continue",style: TextStyle(color: Colors.white,fontSize: 20),),
                        ),
                      ),

                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
