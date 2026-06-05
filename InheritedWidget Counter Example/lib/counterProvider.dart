import 'package:flutter/material.dart';

class CounterProvider extends InheritedWidget {
   int counter=0;

   CounterProvider({
   
    required this.counter,
    required Widget child,
  }) : super(child: child);

  static CounterProvider of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType()!;
  }

  @override
  bool updateShouldNotify(covariant CounterProvider oldWidget) {
    return oldWidget.counter != counter;
  }
}