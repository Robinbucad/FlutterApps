import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText = "";
    if (resultScore <= 8) {
      resultText = "You are awasome and innocent";
    } else if (resultScore <= 12) {
      resultText = "Pretty likeable";
    } else if (resultScore <= 16) {
      "You are strange";
    } else {
      resultText = "You suck";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          resultPhrase,
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(onPressed: resetQuiz, child: const Text("Restart Quiz!"))
      ]),
    );
  }
}
