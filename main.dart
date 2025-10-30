import 'package:flutter/material.dart';
import 'screens/home_feed.dart';
import 'screens/order_flow.dart';
import 'screens/restaurant_panel.dart';
import 'screens/driver_panel.dart';
import 'providers/order_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const BiteGoApp());
}

class BiteGoApp extends StatelessWidget {
  const BiteGoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => OrderProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BiteGo MVP',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (_) => const HomeFeed(),
          '/order': (_) => const OrderFlowScreen(),
          '/restaurant': (_) => const RestaurantPanel(),
          '/driver': (_) => const DriverPanel(),
        },
      ),
    );
  }
}
