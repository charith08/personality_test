import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  //Getter
  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'Hey';
    } else if (resultScore <= 12) {
      resultText = 'Hello';
    } else {
      resultText = 'Hiya';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(
          child: Text('Restart Test!'),
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.blue)),
          onPressed: resetHandler,
        ),
      ]),
    );
  }
}
