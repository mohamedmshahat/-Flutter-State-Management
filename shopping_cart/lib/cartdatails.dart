import 'package:flutter/material.dart';
import 'package:shopping_cart/shopping_cart.dart';

class CartDatails extends StatelessWidget {
  const CartDatails({super.key});

  @override
  Widget build(BuildContext context) {
    ShoppingCart cart = ShoppingCart.of(context);
    return Scaffold(
      appBar: AppBar(title: Text('Cart Datails')),
      body: Center(
        child: Text(
          '${cart.products.length}',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
