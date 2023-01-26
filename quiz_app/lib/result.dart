import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    var resultPhrase = "You did it!";
    if (resultScore <= 10) {
      resultPhrase = "You did very well.";
    } else if (resultScore <= 20) {
      resultPhrase = "You did owesome.";
    } else {
      resultPhrase = "Your score is the best.";
    }
    return resultPhrase;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 50),
              padding: EdgeInsets.all(10),
              child: OutlinedButton(
                onPressed: resetQuiz,
                child: Text(
                  "RESET",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
