import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
      ),
    );
  }
 
  
}


class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(appBar:AppBar(
          backgroundColor: Colors.yellowAccent,
          title: Text("appbar",style: TextStyle(color: Colors.black),),

        ) ,
        body: Container(

        ),
        ),
     

        
        );
       
        
     


}
  
  
  
  
  
 
  

}