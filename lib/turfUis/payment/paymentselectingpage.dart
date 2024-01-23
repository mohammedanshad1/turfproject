// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:turfproject/turfUis/payment/creditcaed/card.dart';
// import 'package:turfproject/turfUis/payment/payment.dart';
//
// import '../../main.dart';
// import '../homepageturf.dart';
//
//
// void main() {
//   runApp(DevicePreview(
//       builder: (BuildContext context) => MaterialApp(
//             home: payment(),
//             useInheritedMediaQuery: true,
//             debugShowCheckedModeBanner: false,
//           )));
// }
//
// class payment extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: ListView(children: [
//       Center(
//         child: ListTile(
//           title: Center(
//             child: Text(
//               "Check Out",
//               style: TextStyle(
//                   color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
//             ),
//           ),
//           leading: GestureDetector(onTap: (){
//             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>hmeex()));
//           },
//               child: Icon(Icons.arrow_back_ios)),
//         ),
//       ),
//       Padding(
//         padding: const EdgeInsets.only(top: 50, left: 20),
//         child: Text(
//           "Enter Name",
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 25,
//           ),
//         ),
//       ),
//       Padding(
//         padding: const EdgeInsets.all(10),
//         child: Container(
//           decoration: BoxDecoration(
//
//             borderRadius: BorderRadius.all(Radius.circular(10),
//             ),
// border: Border.all()          ),
//           child: TextField(
//             decoration: InputDecoration(
//                 border: OutlineInputBorder(), labelText: "Name"),
//           ),
//         ),
//       ),
//       Padding(
//         padding: const EdgeInsets.only(top: 30, left: 20),
//         child: Text(
//           "Payment method",
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 25,
//           ),
//         ),
//       ),
//       Padding(
//         padding: const EdgeInsets.all(10),
//         child: SizedBox(
//           height: 60,
//           width: 60,
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.all(Radius.circular(10),
//               ),border: Border.all()
//             ),
//             child: ListTile(
//               leading: SvgPicture.asset(
//                 "assets/svg/40ad50a6-a04c-4cda-a200-d567ce1e6d92_pixelied-i-love-lucy.svg",
//                 height: 20,
//                 width: 20,
//
//               ),
//               title: Text("Googlepay"),
//
//             ),
//           ),
//         ),
//       ),
//           Padding(
//             padding: const EdgeInsets.all(10),
//             child: SizedBox(
//               height: 60,
//               width: 60,
//               child: Container(
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.all(Radius.circular(10),
//                     ),border: Border.all()
//                 ),
//                 child: GestureDetector(onTap: (){
//
//                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CreditCardPage()));
//                 },
//                   child: ListTile(
//                     leading: SvgPicture.asset(
//                       "assets/svg/69f4221b-ab05-4dd7-b8d3-c222233d1a62_pixelied-st-bernard.svg",
//                       height: 20,
//                       width: 20,
//
//                     ),title: Text("Mastercad"),
//                     trailing: Icon(Icons.do_not_disturb_on_total_silence,color: Colors.green,),
//
//
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(10),
//             child: SizedBox(
//               height: 60,
//               width: 60,
//               child: Container(
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.all(Radius.circular(10),
//                     ),border: Border.all()
//                 ),
//                 child: ListTile(
//                   leading: SvgPicture.asset(
//                     "assets/svg/944e6a44-20d3-4533-8bb5-37417a8ede5b_pixelied-w.svg",
//                     height: 25,
//                     width: 25,
//
//                   ),title: Text("Apple Pay"),
//                 ),
//               ),
//             ),
//           ),
//
//           SizedBox(height: 80,),
//
//           Row(children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 20),
//               child: Text("Total"),
//
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 250),
//               child: Text("RS:1400",style: TextStyle(color: Colors.green),),
//             )
//
//           ],),
//
//           Padding(
//             padding: const EdgeInsets.only(top: 10),
//             child: SizedBox(height: 70,width: 300,
//               child: Container(margin: EdgeInsets.all(10),
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
//                 child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green,
//                 ),
//                     onPressed: (){
//                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>paymentgateway()));
//                     }, child: Text("Pay Now",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
//               ),
//             ),
//           )
//     ]));
//   }
// }
