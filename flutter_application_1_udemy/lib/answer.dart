// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //const Answer({Key? key, required this.selectHandler}) : super(key: key);
  final Function selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // ignore: prefer_const_constructors
      child: RaisedButton(
        color: Colors.blue,
        child: Text("Answer 1"),
        onPressed: selectHandler(),
      ),
    );
  }
}
