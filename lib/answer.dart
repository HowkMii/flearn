import 'package:flutter/material.dart';
class Ansewr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  RaisedButton(
              color: Colors.cyan,
              textColor: Colors.deepOrange,
              child: Text("Ansewr 1",style: TextStyle(fontSize: 34 ),),
              onPressed: (){

              },
            ),
      
    );
  }
}