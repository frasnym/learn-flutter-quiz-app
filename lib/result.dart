import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = "You are done!";

    if (resultScore <= 8) {
      resultText = "Awesome & innocent";
    } else if (resultScore <= 12) {
      resultText = "Likeable!";
    } else if (resultScore <= 16) {
      resultText = "Strange...!";
    } else {
      resultText = "So Bad!!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase + ' \nscore: ' + resultScore.toString(),
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text("Restart Quiz!"),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
