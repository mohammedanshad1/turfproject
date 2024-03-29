// import 'package:flutter/material.dart';
// import 'package:flutter_credit_card/credit_card_form.dart';
// import 'package:flutter_credit_card/credit_card_model.dart';
// import 'package:flutter_credit_card/flutter_credit_card.dart';
// import 'package:turfproject/turfUis/payment/booked.dart';
//
//
// class CreditCardPage extends StatefulWidget {
//   const CreditCardPage({Key? key}) : super(key: key);
//
//   @override
//   _CreditCardPageState createState() => _CreditCardPageState();
// }
//
// class _CreditCardPageState extends State<CreditCardPage> {
//   String cardNumber = '';
//   String expiryDate= '';
//   String cardHolderName = '';
//   String cvvCode= '';
//   bool isCvvFocused = false;
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       // appBar: AppBar(
//       //   //automaticallyImplyLeading: false,
//       //   title: Text('Flutter Credit Card View'),
//       // ),
//       resizeToAvoidBottomInset: true,
//       body: SafeArea(
//         child: Column(
//           children: [
//             SizedBox(height: 20,),
//            Center(child: Text("Card Details",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
//            fontSize: 25),
//            )),
//
//
//             CreditCardWidget(
//               cardNumber: cardNumber,
//               expiryDate: expiryDate,
//               cardHolderName: cardHolderName,
//               cvvCode: cvvCode,
//               showBackView: isCvvFocused,
//               obscureCardNumber: true,
//               obscureCardCvv: true,),
//             Expanded(
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       CreditCardForm(cardNumber: cardNumber,
//                         expiryDate: expiryDate,
//                         cardHolderName: cardHolderName,
//                         cvvCode: cvvCode,
//                         onCreditCardModelChange: onCreditCardModelChange,
//                         themeColor: Colors.green,
//                         formKey: formKey,
//                         cardNumberDecoration: InputDecoration(
//                             border: OutlineInputBorder(),
//                             labelText: 'Number',
//                             hintText: 'xxxx xxxx xxxx xxxx'
//                         ),
//                         expiryDateDecoration: InputDecoration(
//                             border: OutlineInputBorder(),
//                             labelText: 'Expired Date',
//                             hintText: 'xx/xx'
//                         ),
//                         cvvCodeDecoration: InputDecoration(
//                             border: OutlineInputBorder(),
//                             labelText: 'CVV',
//                             hintText: 'xxx'
//                         ),
//                         cardHolderDecoration: InputDecoration(
//                           border: OutlineInputBorder(),
//                           labelText: 'Card Holder',
//                         ),
//                       ),
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8.0),
//                             ),
//                             primary: Colors.green
//
//                         ),
//                         child: Container(
//                           margin: EdgeInsets.all(8.0),
//                           child: Text(
//                             'validate',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontFamily: 'halter',
//                               fontSize: 14,
//                               package: 'flutter_credit_card',
//                             ),
//                           ),
//                         ),
//                         onPressed: (){
//                           if(formKey.currentState!.validate()){
//
//                             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BookingPage()));
//                             print('Pay');
//                           }
//                           else{
//                             print('inValid');
//                           }
//                         },)
//                     ],
//                   ),
//                 )),
//           ],
//         ),
//       ),
//     );
//   }
//
//   void onCreditCardModelChange(CreditCardModel creditCardModel){
//     setState(() {
//       cardNumber = creditCardModel.cardNumber;
//       expiryDate = creditCardModel.expiryDate;
//       cardHolderName = creditCardModel.cardHolderName;
//       cvvCode = creditCardModel.cvvCode;
//       isCvvFocused = creditCardModel.isCvvFocused;
//     });
//   }
// }
