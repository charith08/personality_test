import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  //Getter
  String get resultPhrase {
    String resultText;
    if (resultScore == 30) {
      //max
      resultText =
          'Ichipadestav! 💯🔥 Tharun Bhascker annav chudu akkada nachinav. You are the real deal ❤️';
    } else if (resultScore == 6) {
      //min
      resultText = 'Poyi F2 chusko po 🤮 Free fire UI em baguntadhi asalu?';
    } else if (resultScore == 26 || resultScore == 24) {
      //8*3
      resultText = 'DCP Padmanabha Simha 🔥🔥🔥🔥';
    } else if (resultScore == 22) {
      resultText = 'I like that, oopu undhiii ooopestaav 🔥';
    } else if (resultScore == 20) {
      resultText = 'Motham istam koncham kastam';
    } else if (resultScore == 18) {
      //6*3
      resultText = 'Chill max 😎 tinnama padukunnama tellarindha';
    } else if (resultScore == 16) {
      resultText = 'Mast shades unnay ra neelo, eyyy kamal haasannn 👾';
    } else if (resultScore >= 12 && resultScore <= 14) {
      resultText = 'Koncham istam Koncham kastam';
    } else {
      resultText = 'develop, develop? develop... develop... develop!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
            child: Text('Restart Test!'),
            style: OutlinedButton.styleFrom(
                primary: Colors.orange, side: BorderSide(color: Colors.orange)),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
