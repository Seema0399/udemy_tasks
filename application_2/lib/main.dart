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
          child: Image(
            image: NetworkImage(
                'https://th.bing.com/th/id/OIP.whYid2jKN-8c3BUhtIoSTgHaEK?w=313&h=180&c=7&o=5&pid=1.7'),
          ),
        ),
      ),
    ),
  );
}
