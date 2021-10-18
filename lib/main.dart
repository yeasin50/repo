import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
//   runApp(MyApp());
// }

void main() => runApp(
    MyApp()); //also can be written like these,when only 1 expression/one line

//var inside class called as property and function inside class called as method
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //now _myAppState can only be used in main.dart file
  // stateless means dont have state
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': ['Black', 'Blue', 'Yellow', 'Orange'],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Giraffe'],
    },
    {
      'questionText': 'Who\'s your favourite instructor?',
      'answers': ['Yadu', 'Ayush', 'Siddhu', 'Yusuf'],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    // var abool = true;
    // abool = false;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex); //to ensure private property thats why underscore
    if (_questionIndex < _questions.length) {
      //questionIndex starts from 0 , 1, 2, true question.length =  3 (becoz 3 qts)
      print('We have more questions');
    } else {
      print('Thank you No more Questions !');
    }
  } //cant access from anywhere else

  @override //decorator makes it clear that we r overriding build method provided by stateless widget
  Widget build(BuildContext context) {
    // var dummy = const ['hello'];
    // dummy.add('Max');
    // print(dummy);

    //questions = [];  //new list/object doesn't work if quest is const
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    ); //named argument
  }
}
