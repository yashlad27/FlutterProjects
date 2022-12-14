<<<<<<< HEAD
// ignore_for_file: unused_local_variable, sort_child_properties_last, deprecated_member_use, avoid_print, unused_import
=======
// ignore_for_file: unused_local_variable, sort_child_properties_last, deprecated_member_use, avoid_print, prefer_const_constructors
>>>>>>> c1c1bd5125f7798b2ed8494922f14f27fc305cea

import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}
zx
// void main() => runApp(MyApp());
// short hand notation ( only for functions with one line of expression )
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  //const MyApp({Key? key}) : super(key: key);
  var questionIndex = 0;
  // adding functions:
  void _answerQues() {
    setState(() {
      // () -> anonymous function
      questionIndex = questionIndex + 1;
    });
    //print('Answer chosen!');
    print(questionIndex);
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
        body: Column(
          children: [
            //const Text('The Questions!'),
            //Text(questions[0]),
            Question(questions[
                questionIndex]), // stateless widget here { only output is given }
            RaisedButton(
              child: const Text('Answer-1'),
              onPressed: _answerQues,
              // method-01: named function
              // only give name of function when passing it as an argument no paraenthesis required
              // works like a pointer!
            ),
            RaisedButton(
              child: const Text('Answer-2'),
              onPressed: () => print('Answer2 is chosen!'),
              // method-02: no name function!
            ),
            RaisedButton(
              child: const Text('Answer-3'),
              onPressed: () {
<<<<<<< HEAD
                print('Answer-4 is chosen!');
              }), // raised button is depracated!!!
          // ElevatedButton(onPressed: onPressed, child: child)
          Answer(_answerQues),
          Answer(_answerQues),
          Answer(_answerQues),
          // raised button is depracated!!!
          // ElevatedButton(onPressed: onPressed, child: child)
        ]),
=======
                print('Answer-3 is chosen!');
              },
              // method-03: {} -> curly braces
              // curly braces for longer function body!
            ),
            RaisedButton(
                // child: const Tab(text: 'Answer-4'),
                child: const Text('Answer-4'),
                onPressed: () {
                  print('Answer-4 is chosen!');
                }),
            // raised button is depracated!!!
            // ElevatedButton(onPressed: onPressed, child: child)
            Answer(_answerQues),
            Answer(_answerQues),
            Answer(_answerQues),
          ],
        ),
>>>>>>> c1c1bd5125f7798b2ed8494922f14f27fc305cea
      ),
    ); // named arguments in materialApp()
  }
}
