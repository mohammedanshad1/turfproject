 /*import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>MaterialApp(
      home: splash(),
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,

    ),
  ));
}

class splash extends StatefulWidget {
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  var imgList = [
    "https://static.vecteezy.com/system/resources/previews/007/695/289/original/flat-modern-of-e-learning-vector.jpg",
    "https://th.bing.com/th/id/OIP.SngTqrYacjp6SgbDMOWSOwHaE8?w=600&h=400&rs=1&pid=ImgDetMain"
    "https://static.vecteezy.com/system/resources/previews/007/695/376/non_2x/an-editable-flat-illustration-of-portfolio-vector.jpg"

  ];

  final themeMode = ValueNotifier(2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

        ListView(children: [
          ListTile(title: Center(child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text("MY TURF",style: TextStyle(color: Colors.green,fontSize: 35),
            ),


          ),
          ),subtitle: Center(child: Text("Welcome to My Turf,Let's Enjoy!")),),
          Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                ),
                items:
    imgList
        .map((item) => Container(
    child: Center(
    child: Padding(
      padding: const EdgeInsets.only(top: 80),
        child: Image.network(
        item,
        fit: BoxFit.fitWidth,
          height: double.infinity,
          width: double.infinity,

        ),

    )),
    ))
        .toList()
    )
                 ),

            SizedBox(height: 350,),
         
           SizedBox(height: 70,width: 300,
              child: Container(margin: EdgeInsets.all(10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              child: ElevatedButton(style:ElevatedButton.styleFrom(
                backgroundColor: Colors.green
              ), onPressed: () {  }, child: Text('Continue',style: TextStyle(color: Colors.white),) ,),),
            ),
          

        ]));


  }
}
*/

 import 'package:flutter/material.dart';

import 'loginuser.dart';

 class SplashScreen extends StatefulWidget {
   static String routeName = "/splash";

   const SplashScreen({super.key});

   @override
   State<SplashScreen> createState() => _SplashScreenState();
 }

 class _SplashScreenState extends State<SplashScreen> {
   int currentPage = 0;
   List<Map<String, String>> splashData = [
     {
       "text": "Welcome to Tokoto, Let’s shop!",
       "image": "assets/images/splash_1.png"
     },
     {
       "text":
       "We help people conect with store \naround United State of America",
       "image": "assets/images/splash_2.png"
     },
     {
       "text": "We show the easy way to shop. \nJust stay at home with us",
       "image": "assets/images/splash_3.png"
     },
   ];
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: SafeArea(
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
                     text: splashData[index]['text'],
                   ),
                 ),
               ),
               Expanded(
                 flex: 2,
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: Column(
                     children: <Widget>[
                       const Spacer(),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: List.generate(
                           splashData.length,
                               (index) => AnimatedContainer(
                             duration: kAnimationDuration,
                             margin: const EdgeInsets.only(right: 5),
                             height: 6,
                             width: currentPage == index ? 20 : 6,
                             decoration: BoxDecoration(
                               color: currentPage == index
                                   ? kPrimaryColor
                                   : const Color(0xFFD8D8D8),
                               borderRadius: BorderRadius.circular(3),
                             ),
                           ),
                         ),
                       ),
                       const Spacer(flex: 3),
                       ElevatedButton(
                         onPressed: () {
                           Navigator.pushNamed(context, SignInScreen.routeName);
                         },
                         child: const Text("Continue"),
                       ),
                       const Spacer(),
                     ],
                   ),
                 ),
               ),
             ],
           ),
         ),
       ),
     );
   }
 }