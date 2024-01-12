import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  late Razorpay _razorpay;

  @override
  void initState() {
    super.initState();

    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    print("Payment Success: ${response.paymentId}");
    // Implement your success logic here
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    print("Payment Error: ${response.message}");
    // Implement your error handling logic here
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    print("External Wallet: ${response.walletName}");
    // Implement external wallet handling logic here
  }

  @override
  void dispose() {
    _razorpay.clear();
    super.dispose();
  }

  // Add your UI and payment button here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Gateway Example"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _startPayment();
          },
          child: Text("Make Payment"),
        ),
      ),
    );
  }

  void _startPayment() {
    var options = {
      'key': 'YOUR_RAZORPAY_KEY', // Replace with your Razorpay key
      'amount': 100, // Amount in currency subunits (e.g., 100 for 1 INR)
      'name': 'Your App Name',
      'description': 'Payment for your product',
      'prefill': {'contact': '1234567890', 'email': 'test@example.com'},
      'external': {
        'wallets': ['paytm'] // Supported wallets
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      print("Error starting Razorpay payment: $e");
    }
  }
}
