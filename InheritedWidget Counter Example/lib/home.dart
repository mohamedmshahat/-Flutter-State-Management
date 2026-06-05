import 'package:flutter/material.dart';
import 'package:inheritedwidget_counter/counterProvider.dart';
import 'package:inheritedwidget_counter/secondScreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var provider = CounterProvider.of(context);
    return StatefulBuilder(
      builder: (context, setState) => Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Secondscreen()),
                );
                setState(() {});
              },
              icon: Icon(Icons.forward),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${provider.counter}',
                style: const TextStyle(color: Colors.black),
              ),
              SizedBox(height: 10),
              IconButton(
                onPressed: () {
                  setState(() => provider.counter++);
                },
                icon: Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
