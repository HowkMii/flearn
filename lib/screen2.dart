import 'package:flearn/screen1.dart';
import 'package:flutter/material.dart';
class ScreenTwo extends StatelessWidget {
  void selectScreen(BuildContext ctx){
    Navigator.of(ctx).push( MaterialPageRoute(
      builder: (_){    
        return ScreenOne();  
      }
      ));
  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(title: Text("screen two"),),
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