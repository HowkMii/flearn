import 'package:flutter/material.dart';

main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  var _question =[
    "whats your favorite color?",
    "whats your favorite color?",
    "whats your favorite color?",
    "whats your favorite color?",
    "whats your favorite color?",
    "whats your favorite color?",
    "whats your favorite color?",
    "whats your favorite color?",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(
       title: Text("Quiz"),
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.all(10.0),
        child: Column(children: <Widget>[
          Text(_question[0], style: TextStyle(fontSize:30 ),textAlign: TextAlign.center,),


        ],),

      ),
      
      ),
      
    );
  }
}