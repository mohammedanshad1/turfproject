import 'dart:ui';

import 'package:date_field/date_field.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../paymentgateway.dart';

void main(){


  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(home: bookingpage1(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,)));


}
class bookingpage1 extends StatefulWidget{
  @override
  State<bookingpage1> createState() => _bookingpage1State();
}

class _bookingpage1State extends State<bookingpage1> {
  DateTime? selectedDate;

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
                        image: AssetImage("assets/icons/OIP (5).jpeg"),
                        fit: BoxFit.fitWidth),),height: 200,width: 400,
                  // child: new BackdropFilter(filter: new ImageFilter.blur(sigmaX:10.0,sigmaY:10.0),
                  child: new Container(decoration :new BoxDecoration(color: Colors.white30.withOpacity(0.0)),),
                  // height: 200,
                  // width: 400,
                ),
              ),
              ListView(children: [
                SizedBox(height: 100,),
                Container(
                    child: Column(
                        children: [

                          /*  DateTimeField(
                     decoration: const InputDecoration(
                         hintText: 'Please select your Slot Date and Time'),


                     selectedDate: selectedDate,
                     onDateSelected: (DateTime value) {
                       setState(() {
                         selectedDate = value;
                       });
                     }),
*/

                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 20.0),
                            child: Text(''),
                          ),
                          Form(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 40,),
                                //DateTimeFormField(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: DateTimeFormField(
                                    decoration: const InputDecoration(
                                      hintStyle: TextStyle(color: Colors.black),
                                      errorStyle: TextStyle(color: Colors.redAccent),
                                      border: OutlineInputBorder(),
                                      suffixIcon: Icon(Icons.event_note,color: Colors.black,),
                                      labelText: 'Booking Date ',
                                    ),
                                    mode: DateTimeFieldPickerMode.date,
                                    firstDate: DateTime.now().add(const Duration(days: 10)),
                                    lastDate: DateTime.now().add(const Duration(days: 40)),
                                    initialDate: DateTime.now().add(const Duration(days: 20)),
                                    autovalidateMode: AutovalidateMode.always,
                                    validator: (DateTime? e) =>
                                    (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                                    onDateSelected: (DateTime value) {
                                      print(value);
                                    },
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: DateTimeFormField(
                                    decoration: const InputDecoration(
                                      hintStyle: TextStyle(color: Colors.black),
                                      errorStyle: TextStyle(color: Colors.redAccent),
                                      border: OutlineInputBorder(),
                                      suffixIcon: Icon(Icons.timer,color: Colors.black,),
                                      labelText: 'Booking time',
                                    ),
                                    mode: DateTimeFieldPickerMode.time,
                                    autovalidateMode: AutovalidateMode.always,
                                    validator: (DateTime? e) {
                                      return (e?.day ?? 0) == 1
                                          ? 'Please not the first day'
                                          : null;
                                    },
                                    onDateSelected: (DateTime value) {
                                      print(value);
                                    },
                                  ),
                                ),
                              ],

                            ),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:   Container(decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(10)),

                                child: TextField(decoration: InputDecoration(
                                    border: OutlineInputBorder(),labelText: "Hours",
                                    suffixIcon: Icon(Icons.hourglass_bottom,color: Colors.black,)),)),

                          ),


                          Container(child: Column(
                            children: [
                              SizedBox(height: 150,),
                              ListTile(title: Center(child: Text("Grand Total",
                                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),)),


                                subtitle: Center(child:
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("Rs:1400",style: TextStyle(color: Colors.black,fontSize: 20),),
                                )),),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: SizedBox(height: 70,width: 300,
                                  child: Container(margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                                    child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green,
                                    ),
                                        onPressed: (){

                                        }, child: Text("Proceed",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                                  ),
                                ),
                              )

                            ],
                          ),)
                        ])
                ) ])
            ] )   );
  }
}