import 'package:flutter/material.dart';
import 'package:shopping_cart/product.dart';
import 'package:collection/collection.dart';

class ShoppingCart extends InheritedWidget {
  List<Product> products = [];
  Widget child;
  ShoppingCart({required this.child}) : super(child: child);
  @override
  bool updateShouldNotify(ShoppingCart oldWidget) {
    return !IterableEquality().equals(products, oldWidget.products);
  }

  static ShoppingCart of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType()!;
  }
}
