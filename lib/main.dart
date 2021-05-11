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
      
  if (_questionIndex ==1){
    _questionIndex = -1;

  }
    setState(() {
      _questionIndex+=1;
    });
    
    print("Answer chosen ! ");
    print(_questionIndex);


  }
  final List<Map<String, Object>> _question =[
    {
      'questionText':'whats your favorite color?',
      'answers':['black','green','blue'],

    },
    {
      'questionText':'whats your favorite color?',
      'answers':['white','green','yellow']
      
    },
    {
      'questionText':'whats your favorite color?',
      'answers':['black','white','green']
      
    },
    
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
            Question(_question[_questionIndex]['questionText']),
            ...(_question[_questionIndex]['answer'] as List<String>).map((ansewr){
              return Ansewr(answerQuestion,ansewr);

            }).toList()
            
          ],
        ),
       

      ),
      
      ),
      
    );
  }
}