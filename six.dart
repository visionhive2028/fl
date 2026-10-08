import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: Responsive()));
class Responsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    var o = MediaQuery.of(context).orientation;
    int columns = w < 600 ? 1 : w <= 900 ? 2 : 3;
    return Scaffold(
      appBar: AppBar(title: Text("Responsive")),
      body: Column(
        children: [
          Text("Width: ${w.toStringAsFixed(0)}"),
          Text("Orientation: $o"),
          Expanded(
            child: GridView.count(
              crossAxisCount: columns,
              children: List.generate(
                9,
                (i) => Card(
                  child: Center(child: Text("Item ${i + 1}")),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}