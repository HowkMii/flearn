
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
  int num=0;
  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore =0;
    });
  }
  

  void answerQuestion(score){
    num=score;
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
          setState(() {
            _totalScore-=num;
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