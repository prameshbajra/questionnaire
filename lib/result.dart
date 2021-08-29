import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function()? resetQuiz;

  Result(this.finalScore, this.resetQuiz);

  String get finalScorePhrase {
    if (finalScore >= 15) {
      return "You are WEIRD !!";
    }
    return "You are OK !!";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            finalScorePhrase,
            style: TextStyle(fontSize: 28),
          ),
          TextButton(
            onPressed: resetQuiz,
            child: Text("Restart"),
          )
        ],
      ),
    );
  }
}
