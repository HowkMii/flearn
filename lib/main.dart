import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  int cntr = 0;
  void incrementConter(){
    cntr+=3;
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(title: Text("appbar title"),) ,
        body: Center(
         
          child: Column(
            
             mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("have you pushed the button this many times"),
            Text('$cntr')
            
          ],
         
          ),
         
        
        
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: incrementConter,
          child: Icon(Icons.add),
        ),  
      ),
    );
  }
  
  
  
 
  

}