import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
  
}


class _MyAppState extends State<MyApp>{
  int cntr = 0;
  void _incrementConter(){
    setState(() {
      cntr+=3;
    });
    
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(title: Text("appbar title"),) ,
        body: Container(
          child: Column(children: <Widget>[
            Text("hi ")
          ],)
            
          
        
         
        
        
        ),
       
        ),  
      );
 


}
  
  
  
  
  
 
  

}