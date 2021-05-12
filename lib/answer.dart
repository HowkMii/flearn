import 'package:flutter/material.dart';
class Ansewr extends StatelessWidget {
  final String answer;
  final Function x; 
  Ansewr(this.x,this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:  RaisedButton(
              color: Colors.cyan,
              textColor: Colors.deepOrange,
              child: Text(answer,style: TextStyle(fontSize: 34 ),),
              onPressed:x,
            ),
      
    );
  }
}