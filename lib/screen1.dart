import 'package:flearn/screen2.dart';
import 'package:flutter/material.dart';
class ScreenOne extends StatelessWidget {
  final String str;
  ScreenOne(this.str);
   void selectScreen(BuildContext ctx){
    Navigator.of(ctx).push( MaterialPageRoute(
      builder: (_){    
        return ScreenTwo();  
      }
      ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("screen one"),),
      body: Center(
        child:  InkWell(
              child: Text("Go to screen1",style: TextStyle(fontSize: 30)),
              onTap: (){
                selectScreen(context);
              },
              ),
      ),
    );
  }
}