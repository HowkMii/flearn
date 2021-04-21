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
          color: Color.fromARGB(a, r, g, b) ,
          
         
          child: Column(
            
             mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("have you pushed the button this many times"),
            Text('$cntr')
            
          ],
         
          ),
         
        
        
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementConter,
          child: Icon(Icons.add),
        ),  
      ),
    );


}
  
  
  
  
  
 
  

}