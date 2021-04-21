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
        body: Text("Body title", style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          wordSpacing: 40,
          letterSpacing: 40,
          height: 20,
          shadows: <Shadow>[
            
            Shadow(
              offset: Offset(10.0, 10.0),
              blurRadius: 9,
              color: Colors.black)

          ],
          decoration: TextDecoration.combine([TextDecoration.underline, TextDecoration.overline]),
          decorationColor: Colors.black12,
          decorationStyle: TextDecorationStyle.dotted,
          decorationThickness: 10,

        ),)
          
        
         
        
        
        ),
       
        );  
     


}
  
  
  
  
  
 
  

}