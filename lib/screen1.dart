import 'package:flearn/screen2.dart';
import 'package:flutter/material.dart';
class ScreenOne extends StatelessWidget {
  final String str1;
  ScreenOne(this.str1);
   void selectScreen(BuildContext ctx){
    Navigator.of(ctx).push( MaterialPageRoute(
      builder: (_){    
        return ScreenTwo("data passed from screen 1");  
      }
      ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("screen one"),),
      body: Center(
        child:  Column(
          children: <Widget>[
            Text(str1,style: TextStyle(fontSize: 30)),
            InkWell(
                  child: Text("Go to screen1",style: TextStyle(fontSize: 30)),
                  onTap: (){
                    selectScreen(context);
                  },
                  ),
          ],
        ),
      ),
    );
  }
}