import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(title: Text("appbar title"),) ,
        body: Center(
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("app bar"),
            Text("app bar"),
            Text("app bar"),
            Text("app bar"),
            Text("app bar"),
            Text("app bar"),
          ],
         
          ),
         
        
        
        ),
          
      ),
    );
  }
  
  
  
 
  

}