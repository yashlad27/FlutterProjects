import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // adding a method not properties
  // in flutter whole app is a widget!
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Hello!'),
    ); // named arguments in materialApp()
  }
}
