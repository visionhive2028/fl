4th experiment:
-------------------------
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) => MaterialApp(home: Counter());
}

class Counter extends StatefulWidget {
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter Value:"),
            Text("$counter", style: TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: () => setState(() => counter++),
              child: Text("Increment Counter"),
            )
          ],
        ),
      ),
    );
  }
}
