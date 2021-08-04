import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Happy Day'),
          backgroundColor: Colors.blueGrey[100],
        ),
        body: Center(
          child: Image(image: AssetImage('images/flower.jpg')),
        ),
      ),
    ),
  );
}
