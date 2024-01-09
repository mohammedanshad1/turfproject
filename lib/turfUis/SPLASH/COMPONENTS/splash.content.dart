import 'package:flutter/material.dart';

import '../constants.dart';
import '../sizeconfig.dart';


class SplashContent extends StatelessWidget {

  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        Text(
          "SAKKA",
          style: TextStyle(
            fontSize: getProportionateScreenHeight(36),
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        const Spacer(flex: 2),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        )
      ],
    );
  }
}
