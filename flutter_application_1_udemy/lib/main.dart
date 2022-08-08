// ignore_for_file: unused_local_variable, sort_child_properties_last, deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp());
// short hand notation ( only for functions with one line of expressio )
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // adding functions:
  void answerQues() {
    print('Answer chosen-> ');
  }

  @override
  // adding a method not properties
  // in flutter whole app is a widget!
  Widget build(BuildContext context) {
    var questions = [
      "What's your favourite color?",
      'What\'s your favourite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(children: const [
          Text('The Questions!'),
          RaisedButton(
            child: Text('Answer-1'),
            onPressed: null,
          ),
          RaisedButton(
            child: Text('Answer-2'),
            onPressed: null,
          ),
          RaisedButton(
            child: Text('Answer-3'),
            onPressed: null,
          ),
          // raised button is depracated!!!
          // ElevatedButton(onPressed: onPressed, child: child)
        ]),
      ),
    ); // named arguments in materialApp()
  }
}
