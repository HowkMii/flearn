import 'package:flutter/material.dart';
import 'main.dart';
class Question extends StatelessWidget {
  final String questionText;
 Question (this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
        
        margin: EdgeInsets.all(10.0),
        child: Text(questionText, style: TextStyle(fontSize:30, color: b ),textAlign: TextAlign.center,)


      );
  }
}