import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const ({ Key? key }) : super(key: ke// y);
  // QUESTION: Why do I need to use VoidCallback instead of Function here? (function seemed to work for the guy in the video)
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 15, right: 15),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blueGrey.shade900),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
