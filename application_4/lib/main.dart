import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Happy Day'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(child: Image(image: AssetImage('images/download.jpg'))),
    ),
  ));
}
