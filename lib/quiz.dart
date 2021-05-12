import 'package:flearn/question.dart';
import 'package:flutter/material.dart';

import 'answer.dart';
class Quiz extends StatelessWidget {
  final answerQuestion;
  final _questionIndex;
  final _question;
  Quiz(this._question,this._questionIndex,this.answerQuestion)
  @override
  Widget build(BuildContext context) {
    

    return Column(
          children:<Widget> [
            Question(_question[_questionIndex]['questionText']),
            ...(_question[_questionIndex]['answer'] as List<String>).map((ansewr){
              return Ansewr(answerQuestion, ansewr);

            }).toList()
            
          ],
        );
      
    
  }
}