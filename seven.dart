import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Details"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Details(data: "Hello Flutter"),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Details extends StatelessWidget {
  final String data;

  Details({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data),
            ElevatedButton(
              child: Text("Back"),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}