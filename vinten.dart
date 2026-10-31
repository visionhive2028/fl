10th experiment:
---------------------------
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Custom Widget Example")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField("Enter your name"),
          CustomTextField("Enter Email"),
          CustomButton()
        ],
      ),
    ),
  );
}

class CustomTextField extends StatelessWidget {
  final String hint;
  CustomTextField(this.hint);

  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.all(8),
    child: TextField(
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(),
      ),
    ),
  );
}

class CustomButton extends StatelessWidget {
  Widget build(BuildContext context) => ElevatedButton(
    onPressed: () {},
    child: Text("Press Me"),
  );
}
