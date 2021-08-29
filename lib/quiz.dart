import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz(this.answerQuestion, this.questions, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question((questions[questionIndex]["questionText"] as String)),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) => Answer(
                () => answerQuestion((answer["score"] as int)),
                (answer["text"] as String)))
            .toList(),
      ],
    );
  }
}
