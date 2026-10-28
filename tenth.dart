import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: Scaffold(
    body: Center(child: MyBox()),
  ),
));
class MyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.all(20),
    color: Colors.orange,
    child: Text('My Custom Widget'),
  );
}

