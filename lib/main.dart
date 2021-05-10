import 'package:flearn/answer.dart';
import 'package:flutter/material.dart';
import 'question.dart';

main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  void answerQuestion(){
    _questionIndex+=1;
    print("Answer chosen ! ");
    print(_questionIndex);


  }
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
        width: double.infinity,
        child: Column(
          children:<Widget> [
            Question(_question[3]),
            Ansewr(answerQuestion,"answer1"),
            Ansewr(answerQuestion,"answer2"),
            Ansewr(answerQuestion,"answer3"),
          ],
        ),
       

      ),
      
      ),
      
    );
  }
}