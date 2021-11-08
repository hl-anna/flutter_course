import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function selectHandler;
  final List<Map<String, Object>> questionMap;
  final int questionIndex;

  Quiz(
      {required this.selectHandler,
      required this.questionMap,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question((questionMap[questionIndex]['questionText']) as String),
        ...(questionMap[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => selectHandler(answer['score'] as int),
              answer['text'] as String);
        }).toList()
      ],
    );
  }
}
