import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText); //constructor with name of class & ()

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10), //spacing around the container
      child: Text(
        questionText,
        style: TextStyle(fontSize: 29),
        textAlign: TextAlign.center, //enum for simly assigning label
      ),
    );
  }
}
