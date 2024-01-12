// main.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turfproject/turfUis/payment/payment%20ui.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
    create: (context) => OrderProvider(),
      child: MaterialApp(
        title: 'Payment Page',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PaymentPage(),
      ),
    );
  }
}

// order_model.dart

class OrderModel {
  final String productName;
  final double price;

  OrderModel({required this.productName, required this.price});
}


// order_provider.dart


class OrderProvider extends ChangeNotifier {
  List<OrderModel> _orders = [];

  List<OrderModel> get orders => _orders;

  void addOrder(OrderModel order) {
    _orders.add(order);
    notifyListeners();
  }

  double getTotalPrice() {
    return _orders.fold(0.0, (sum, order) => sum + order.price);
  }
}
