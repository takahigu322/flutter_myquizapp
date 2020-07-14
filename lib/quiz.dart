import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.answerQuestion,
      @required this.questions,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Quesion(questions[questionIndex]['questionText']),
      ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
        return Answer(answerQuestion, answer);
      }).toList()
    ]);
  }
}
