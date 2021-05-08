import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter app",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(


      ),
    );
  }
 
  
}


class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
 

}
class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellowAccent,
          title: Text("Appbar", style: TextStyle(color: Colors.black),),
        ),
        body: Container(),
      ),

    );
  }
 }

  
  
  
  
 
  
