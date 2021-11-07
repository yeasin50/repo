import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are great and awesome!';
    } else if (resultScore <= 10) {
      resultText = 'Pretty good !';
    } else if (resultScore <= 12) {
      resultText = 'You are ....strange!';
    } else {
      resultText = 'Sorry, You are bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text('Restart Quiz!'),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.blue)),
            //  textColor: Colors.blue,
            onPressed: () => resetHandler(),
          ),
        ],
      ),
    );
  }
}
