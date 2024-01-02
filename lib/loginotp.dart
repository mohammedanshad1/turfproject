import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

void main() {
  runApp(DevicePreview(builder: (BuildContext context) =>
      MaterialApp(home: loginotp(),
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,)));
}

class loginotp extends StatefulWidget {
  @override
  State<loginotp> createState() => _loginotpState();
}

class _loginotpState extends State<loginotp> {
  // OtpFieldController otpController = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* floatingActionButton: FloatingActionButton(
            child: Icon(Icons.cleaning_services),
            onPressed: () {
              print("Floating button was pressed.");
              otpController.clear();
            }
        ),*/
        body: Container(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Image(image: AssetImage(
                    "assets/icons/man-kicking-ball-on-field-concept-free-vector.png")),
              ),
              /* Padding(
                padding: const EdgeInsets.only(right: 130, top: 10),
                child: Text("Login to MYTURF", style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),),
              ),
               */
              SizedBox(height: 10,),

              /* Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0)),
                child: TextField(decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter Phone Number"),),),*/
              /* OTPTextField(
                  controller: otpController,
                  length: 5,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldWidth: 45,
                  fieldStyle: FieldStyle.box,
                  outlineBorderRadius: 15,
                  style: TextStyle(fontSize: 17),
                  onChanged: (pin) {
                    print("Changed: " + pin);
                  },
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  }),*/
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    color: Colors.green),
                child: //
                // GestureDetector(onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> userlogin() ));},
                //child:
                ListTile(
                  title: Center(
                      child: Text(
                        "Register",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),


                ),

              ),
              TextButton(onPressed: () {},
                  child: Text("Already have an Account ?",
                    style: TextStyle(fontSize: 18, color: Colors.black),))
            ],

            )

        )

    );
  }
}