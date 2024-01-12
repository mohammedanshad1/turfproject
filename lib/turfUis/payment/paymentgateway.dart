import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pay/pay.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:turfproject/turfUis/payment/paymentconfiguration.dart';


void main() => runApp(const MaterialApp(home: MyHome()));

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  var applePayButton=ApplePayButton(
    paymentConfiguration:PaymentConfiguration.fromJsonString(defaultApplePay),
    paymentItems:const[

      PaymentItem(amount: "0.01",
      label: "Item A",
      status: PaymentItemStatus.final_price),

      PaymentItem(amount: "0.02",
          label: "Item A",
          status: PaymentItemStatus.final_price)
    ],
    style:ApplePayButtonStyle.black,
    width:double.infinity,
    height:50,
    type: ApplePayButtonType.buy,
    margin:const EdgeInsets.only(top: 15.0),
    onPaymentResult:(result)=>debugPrint("Payment Result $result"),
    loadingIndicator:const Center(child:CircularProgressIndicator())
  );
  var googlePayButton=GooglePayButton(
    paymentConfiguration:PaymentConfiguration.fromJsonString(defaultGooglePay),
    paymentItems:const[

      PaymentItem(amount: "0.01",
          label: "Item A",
          status: PaymentItemStatus.final_price),],

      width:double.infinity,
      height:50,
      type: GooglePayButtonType.pay,
      margin:const EdgeInsets.only(top: 15.0),
      onPaymentResult:(result)=>debugPrint("Payment Result $result"),
      loadingIndicator:const Center(child:CircularProgressIndicator())



  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Padding(padding: const EdgeInsets.all(10),
      child:Center(
        child: Platform.isIOS ? applePayButton:googlePayButton),
      ),


 );
  }
}