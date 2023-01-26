import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerQuestionHandler;
  final String answerText;
  Answer({required this.answerQuestionHandler, required this.answerText});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(0, 20, 0, 20)),
        ),
        onPressed: answerQuestionHandler,
        child: Text(answerText),
      ),
    );
  }
}
