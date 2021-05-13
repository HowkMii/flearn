import 'package:flearn/answer.dart';
import 'package:flearn/quiz.dart';
import 'package:flearn/result.dart';
import 'package:flutter/material.dart';
import 'question.dart';

main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
    });
  }
  

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
      'answers':[{'text':'black','score':10},'green','blue'],

    },
    {
      'questionText':'whats your favorite color?',
      'answers':['white',{'text':'green','score':7},'yellow']
      
    },
    {
      'questionText':'whats your favorite color?',
      'answers':['black',{'text':'white','score':3},'green']
      
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
        child:_questionIndex<_question.length? Quiz(_question,_questionIndex,answerQuestion)
        :Result(_resetQuiz)
       

      ),
      
      ),
      
    );
  }
}