
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:turfproject/turfUis/homepageturf.dart';

import 'common/common.dart';
import 'fadeanimation.dart';



class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8ECF4),
      body: SafeArea(
        child: Column(
          children: [
            LottieBuilder.asset("assets/icons/ticker.json"),
            FadeInAnimation(
              delay: 1,
              child: Text(
                "Your Slot is Booked!",
                style: Common().titelTheme,
              ),
            ),
            FadeInAnimation(
              delay: 1.5,
              child: Text(
                "Your Slot has been booked successfully",
                style: Common().mediumThemeblack,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            FadeInAnimation(
              delay: 2,
              child: CustomElevatedButton(
                message: "Back to Homepage",
                function: () {
                  //GoRouter.of(context).pushReplacement(Routers.loginpage.name);
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>hmeex()));
                },
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class CustomElevatedButton extends StatefulWidget {
  final String message;
  final FutureOr<void> Function() function;
  final Color? color;
  const CustomElevatedButton({
    Key? key,
    required this.message,
    required this.function,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        setState(() {
          loading = true;
        });
        if (widget.function != null) {
          await widget.function!();
        }

        setState(() {
          loading = false;
        });
      },
      style: ButtonStyle(
          side: MaterialStatePropertyAll(BorderSide(color: Colors.black)),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          fixedSize: const MaterialStatePropertyAll(Size.fromWidth(370)),
          padding: MaterialStatePropertyAll(
            EdgeInsets.symmetric(vertical: 20),
          ),
          backgroundColor: MaterialStatePropertyAll(widget.color)),
      child: loading
          ? const CupertinoActivityIndicator()
          : FittedBox(
          child: Text(
            widget.message,
            style: Common().semiboldwhite,
          )),
    );
  }
}