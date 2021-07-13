import 'package:flearn/screen2.dart';
import 'package:flutter/material.dart';
class ScreenOne extends StatelessWidget {
  
   void selectScreen(BuildContext ctx){
    Navigator.of(ctx).pushNamed(
     '/x2',
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("screen one"),),
      body: Center(
        child:  Column(
          children: <Widget>[
            Text("",style: TextStyle(fontSize: 30)),
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