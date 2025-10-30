import 'package:flutter/material.dart';

class OrderProvider extends ChangeNotifier {
  String? orderId;
  String status = 'pending';

  void createOrder(String title) {
    orderId = DateTime.now().millisecondsSinceEpoch.toString();
    // Simple simulated bot matching
    status = 'searching_for_driver';
    notifyListeners();

    // simulate Auto Motion selecting driver
    Future.delayed(const Duration(seconds: 3), () {
      status = 'driver_assigned';
      notifyListeners();
    });
  }
}
