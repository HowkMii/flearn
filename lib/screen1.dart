
import 'package:flutter/material.dart';
class ScreenOne extends StatelessWidget {
  
   void selectScreen(BuildContext ctx){
    Navigator.of(ctx).pushReplacementNamed(
     '/x2',
    );
  }
  @override
  Widget build(BuildContext context) {
    final routeArg = ModalRoute.of(context).settings.arguments as Map<String, Object>;
    
    return Scaffold(
      appBar: AppBar(title: Text("screen one"),),
      body: Center(
        child:  Column(
          children: <Widget>[
            Text("$routeArg['id']",style: TextStyle(fontSize: 30)),
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