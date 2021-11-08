import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (totalScore <= 8) {
      resultText = 'You\'re awesome!';
    } else {
      resultText = 'Your answers indicate you\'re weird, sorry.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultPhrase,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      TextButton(onPressed: resetQuiz, child: const Text('Restart quiz'))
    ]));
  }
}
