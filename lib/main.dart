import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = [
    {
      "questionText": "What's your favorite color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 15},
        {"text": "Green", "score": 5}
      ]
    },
    {
      "questionText": "What's the weather like today?",
      "answers": [
        {"text": "Hot", "score": 10},
        {"text": "Rainy", "score": 5},
        {"text": "Cold", "score": 0},
        {"text": "Thikka ko", "score": 0}
      ]
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": [
        {"text": "Dog", "score": 0},
        {"text": "Dog, duhh !!", "score": 0},
        {"text": "Obviously, DOG !!", "score": 0},
        {"text": "Le chien", "score": 0}
      ]
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Complete Guide."),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_answerQuestion, _questions, _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
