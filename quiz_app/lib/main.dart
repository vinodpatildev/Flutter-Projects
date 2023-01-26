import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'red', 'score': 1},
        {'text': 'pink', 'score': 2},
        {'text': 'golden', 'score': 3},
        {'text': 'black', 'score': 4},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'red', 'score': 1},
        {'text': 'pink', 'score': 2},
        {'text': 'golden', 'score': 3},
        {'text': 'black', 'score': 4},
      ],
    },
    {
      'questionText': 'What\'s your favourite movie?',
      'answers': [
        {'text': 'red', 'score': 1},
        {'text': 'pink', 'score': 2},
        {'text': 'golden', 'score': 3},
        {'text': 'black', 'score': 4},
      ],
    },
    {
      'questionText': 'What\'s your favourite celebrity?',
      'answers': [
        {'text': 'red', 'score': 1},
        {'text': 'pink', 'score': 2},
        {'text': 'golden', 'score': 3},
        {'text': 'black', 'score': 4},
      ],
    },
    {
      'questionText': 'What\'s your favourite programming language?',
      'answers': [
        {'text': 'red', 'score': 1},
        {'text': 'pink', 'score': 2},
        {'text': 'golden', 'score': 3},
        {'text': 'black', 'score': 4},
      ],
    },
    {
      'questionText': 'What\'s your favourite fruit?',
      'answers': [
        {'text': 'red', 'score': 1},
        {'text': 'pink', 'score': 2},
        {'text': 'golden', 'score': 3},
        {'text': 'black', 'score': 4},
      ],
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestionHandler: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
