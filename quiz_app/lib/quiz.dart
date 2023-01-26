import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestionHandler;

  Quiz({required this.questions,
      required this.questionIndex,
      required this.answerQuestionHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
          ),
          Question(questions[questionIndex]['questionText'] as String),
          ...(questions[questionIndex]['answers'] as List<Map<String,Object>>)
              .map((answer) {
            return Answer(
              answerQuestionHandler: ()=>answerQuestionHandler(answer['score']),
              answerText: answer['text'] as String,
            );
          }).toList()
        ],
      ),
    );
  }
}
