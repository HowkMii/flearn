import 'package:flutter/material.dart';

main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(
       title: Text("Quiz"),
      ),
      body: Container(
        child: Column(children: <Widget>[
          Text("whats your favorite color?", style: TextStyle(fontSize:30 ),textAlign: TextAlign.center,),


        ],),

      ),
      
      ),
      
    );
  }
}