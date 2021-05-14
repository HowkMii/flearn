
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
  int num0=0;
  int num1=0;
  int num2=0;
  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore =0;
    });
  }
  

  void answerQuestion(score){
    if(_questionIndex==0) num0=score;
    else if(_questionIndex==1) num1=score;
    else if(_questionIndex==2) num2=score;
   
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
      'questionText':'whats your favorite animal?',
      'answers':[{'text':'horse','score':30},{'text':'cat','score':7},{'text':'dog','score':10}]
      
    },
    {
      'questionText':'whats your favorite food?',
      'answers':[{'text':'chawrma','score':20},{'text':'couscous','score':3},{'text':'pizza','score':10}]
      
    },
    
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(
       title: Text("Quiz"),
      ),
      body: Container(
        child:_questionIndex<_question.length
        ? Quiz(_question,_questionIndex,answerQuestion)
        : Result(_resetQuiz, _totalScore),
       

      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back,),
        onPressed: (){
          if(_questionIndex==1) _totalScore=num0;
          else if(_questionIndex==2) _totalScore=num1;
          else if(_questionIndex==3) _totalScore=num2;

          setState(() {
            if(_questionIndex>0){
               _questionIndex--;

            }
           
          });
        },
      ),
      
    ),
    );
  }
}