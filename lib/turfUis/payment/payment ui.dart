// payment_page.dart

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:turfproject/turfUis/payment/payment.dart';


class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Consumer<OrderProvider>(
        builder: (context, orderProvider, _) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: orderProvider.orders.length,
                  itemBuilder: (context, index) {
                    OrderModel order = orderProvider.orders[index];
                    return ListTile(
                      title: Text(order.productName),
                      subtitle: Text('\$${order.price.toStringAsFixed(2)}'),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Total: \$${orderProvider.getTotalPrice().toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Fluttertoast.showToast(
                      msg: 'Payment successful!',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                    );
                    // Perform payment processing logic here
                  },
                  child: Text('Proceed to Payment'),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
