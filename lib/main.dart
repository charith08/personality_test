import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore =0;

  // const is compile-time constant
  // final is run-time constant, cannot change after run-time
  final _questions = const [
    {
      'questionText': 'Who\'s your favorite director?',
      'answers': [
        {'text': 'Tharun Bhascker', 'score': 10},
        {'text': 'Rajamouli', 'score': 8},
        {'text': 'Vivek Athreya', 'score': 6},
        {'text': 'Anil Ravipudi', 'score': 2}
      ],
    },
    {
      'questionText': 'What\'s your favorite mobile game?',
      'answers': [
        {'text': 'PUBG', 'score': 10},
        {'text': 'COD', 'score': 8},
        {'text': 'AmongUs', 'score': 6},
        {'text': 'Free Fire', 'score': 2}
      ],
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': [
        {'text': '🍕', 'score': 10},
        {'text': '🍔', 'score': 8},
        {'text': '🍱', 'score': 6},
        {'text': '🥐', 'score': 2}
      ],
    },
  ];

  void _answerQuestion(int score) {

    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more _questions');
    }
  }

  void _resetTest() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Test'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetTest),
      ),
    );
  }
}
