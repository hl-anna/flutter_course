import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  final questions = const [
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': [
        'Blue',
        'Red',
        'Pink',
        'Yellow',
        'Black',
        'White',
        'Purple',
        'Green',
        'Brown',
        // 'Orange', <- How do I make
        // 'Grey',
        // 'Other'
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        'Dogs',
        'Cats',
        'I don\'t have a favourite, all animals are cute (except spiders). Spiders are scary, especially the big ones with hairy legs. I prefer friendly and fluffy animals that can\'t kill you.',
        'Other'
      ]
    },
    {
      'questionText': 'How are you today?',
      'answers': ['Great!', 'Fine', 'Meh', 'Don\'t even ask...']
    },
  ];

  void _answerQuestion() {
    setState(() {
      //QUESTION: how do I actually get access to questions.length so i don't have to hardcode the if statement ?
      if (_questionIndex < questions.length) {
        _questionIndex += 1;
      } else {}
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questionnaire'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                      (questions[_questionIndex]['questionText']) as String),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('Thanks for your answers!'),
              ),
      ),
    );
  }
}
