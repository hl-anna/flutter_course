import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp()); <- a shorter version of the above

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final _questions = const [
    {
      'questionText': 'Which of the below colours do you prefer?',
      'answers': [
        {'text': 'Blue', 'score': 1},
        {'text': 'Orange', 'score': 5},
        {'text': 'Black', 'score': 3},
        {'text': 'Red', 'score': 3},
        {'text': 'Yellow', 'score': 2},
        {'text': 'Brown', 'score': 6},
      ]
    },
    {
      'questionText': 'Which of the below animals do you like the most?',
      'answers': [
        {'text': 'Cats', 'score': 1},
        {'text': 'Dogs', 'score': 1},
        {'text': 'Spiders', 'score': 10},
        {'text': 'Rabbits', 'score': 1},
      ]
    },
    {
      'questionText': 'How are you today?',
      'answers': [
        {'text': 'Great!', 'score': 1},
        {'text': 'Fine', 'score': 1},
        {'text': 'Meh', 'score': 1},
        {'text': 'Don\'t even ask...', 'score': 1},
      ]
    },
  ];

  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      if (_questionIndex < _questions.length) {
        _questionIndex += 1;
      }
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Questionnaire'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  selectHandler: _answerQuestion,
                  questionMap: _questions,
                  questionIndex: _questionIndex)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
