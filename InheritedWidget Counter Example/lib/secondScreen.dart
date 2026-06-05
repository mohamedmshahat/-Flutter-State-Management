import 'package:flutter/material.dart';
import 'counterProvider.dart';
class Secondscreen extends StatelessWidget {
  const Secondscreen({super.key});

  @override
  Widget build(BuildContext context) {
       var provider = CounterProvider.of(context);
    return StatefulBuilder(
      builder: (context, setState) => Scaffold(
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
              ElevatedButton(onPressed: ()=>Navigator.pop(context), child: Text('Back'))
            ],
          ),
        ),
      ),
    );
  }
}