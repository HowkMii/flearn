import 'package:flearn/question.dart';
import 'package:flutter/material.dart';

import 'answer.dart';
class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final int  questionIndex;
  final List<Map<String, Object>> question;
  Quiz(this.question,this.questionIndex,this.answerQuestion);
  @override
  Widget build(BuildContext context) {
    

    return Column(
          children:<Widget> [
            Question(question[questionIndex]['questionText']),
            ...(question[questionIndex]['answer'] as List<String>).map((ansewr){
              return Ansewr(answerQuestion, ansewr);

            }).toList()
            
          ],
        );
      
    
  }
}