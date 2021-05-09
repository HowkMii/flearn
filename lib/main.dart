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
        primarySwatch: Colors.grey,
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
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 8.0,horizontal: 18.0),
          child: Row(
           
            children: <Widget>[
              Text("aa",style: TextStyle(color: Colors.black38,fontSize: 34),),
              Text("bb",style: TextStyle(color: Colors.black38,fontSize: 34),),
            ],
          )
        ),
      ),

    );
  }
 }

  
  
  
  
 
  
