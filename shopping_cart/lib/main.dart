import 'package:flutter/material.dart';
import 'package:shopping_cart/shopping_cart.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShoppingCart(child: MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
  }
}
