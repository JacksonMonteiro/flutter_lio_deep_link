import 'package:flutter/material.dart';
import 'package:deep_link/feature/payment_checkout/payment_checkout_screen.dart';
import 'package:deep_link/feature/products/product_list.dart';

const String rootRoute = "/";
const String checkout = "/checkout";

class CustomRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case rootRoute:
        return MaterialPageRoute(builder: (_) => ProductList());
      case checkout:
        return MaterialPageRoute(
            builder: (_) => PaymentCheckoutScreen(product: settings.arguments));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
