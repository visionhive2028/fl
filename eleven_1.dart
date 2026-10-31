11th experiment
 import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        fontFamily: 'Roboto',

        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          headlineMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: TextStyle(fontSize: 16),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 18),
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),

        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.green,
            side: BorderSide(color: Colors.green, width: 2),
            padding: EdgeInsets.all(12),
          ),
        ),
      ),

      home: Scaffold(
        appBar: AppBar(
          title: Text('Themes and Custom Styling Example'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Default text style'),
              SizedBox(height: 20),

              Text(
                'Text style 1',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              SizedBox(height: 20),

              Text(
                'Text Style 2',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {},
                child: Text('Custom Elevated Button'),
              ),
              SizedBox(height: 20),

              OutlinedButton(
                onPressed: () {},
                child: Text('Custom Outlined Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
