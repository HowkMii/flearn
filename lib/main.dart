import 'package:flutter/material.dart';
import 'question.dart';

main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  final _question =[
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
        child: Question(
          _question[3]
        ),
       

      ),
      
      ),
      
    );
  }
}