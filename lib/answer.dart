import 'package:flutter/material.dart';
class Ansewr extends StatelessWidget {
  final String answerQ;
  final Function x; 
  Ansewr(this.x,this.answerQ);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:  RaisedButton(
              color: Colors.cyan,
              textColor: Colors.deepOrange,
              child: Text(answerQ,style: TextStyle(fontSize: 34 ),),
              onPressed:x,
            ),
      
    );
  }
}