import 'package:flutter/material.dart';
import 'package:inheritedwidget_counter/home.dart';
import 'package:inheritedwidget_counter/counterProvider.dart';
void main() {
  runApp(
    CounterProvider(
      counter: 0,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}
