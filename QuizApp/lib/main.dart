import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  static const _questions = [
    {
      "questionText": "What's your favourite colour?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 8},
        {"text": "Green", "score": 6},
        {"text": "Yellow", "score": 2},
      ],
    },
    {
      "questionText": "What's your favourite animal?",
      "answers": [
        {"text": "Dog", "score": 10},
        {"text": "Cat", "score": 8},
        {"text": "Tiger", "score": 6},
        {"text": "Lion", "score": 2},
      ],
    },
    {
      "questionText": "What's your favourite lenguage?",
      "answers": [
        {"text": "JAVA", "score": 8},
        {"text": "JS", "score": 4},
        {"text": "Flutter", "score": 10},
        {"text": "C#", "score": 10},
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex == _questions.length) {
      print("We have more questions");
    } else {
      print("No more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questions, _answerQuestion, _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
