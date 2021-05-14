
import 'package:flearn/quiz.dart';
import 'package:flearn/result.dart';
import 'package:flutter/material.dart';


main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore =0;
  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore =0;
    });
  }
  

  void answerQuestion(score){
    _totalScore +=score;
      
  if (_questionIndex ==1){
    _questionIndex = -1;

  }
    setState(() {
      _questionIndex+=1;
    });
    
 


  }
  final List<Map<String, Object>> _question =[
    {
      'questionText':'whats your favorite color?',
      'answers':[{'text':'black','score':10},{'text':'green','score':0},{'text':'blue','score':4}],

    },
    {
      'questionText':'whats your favorite color?',
      'answers':[{'text':'white','score':30},{'text':'green','score':7},{'text':'yellow','score':10}]
      
    },
    {
      'questionText':'whats your favorite color?',
      'answers':[{'text':'black','score':20},{'text':'white','score':3},{'text':'green','score':10}]
      
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
        :Result(_resetQuiz,_totalScore)
       

      ),
      
      ),
      
    );
  }
}