import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int Donuts = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red,
              title: Text('Demo'),
            ),
            body: Center(
              child: Text(
                'Number of Donuts Eaten: ${Donuts}',
                style: TextStyle(
                  fontSize: 50.0,
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                SetState() {
                  Donuts++;
                }
              },
            )));
  }
}
