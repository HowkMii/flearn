import 'package:flutter/material.dart';
class Question extends StatelessWidget {
  final questionText;
 Question (this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10.0),
        child: Text(questionText[0], style: TextStyle(fontSize:30 ),textAlign: TextAlign.center,)


      );
  }
}