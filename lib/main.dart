import 'package:flutter/material.dart';

import './question.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp>{
  final questions = const[
    {
      'question':'What\'s your favourite color?',
      'answer' : ['black', 'red', 'blue', 'yellow']
    },
    {
      'question':'What\'s your favourite animal?',
      'answer' : ['cat', 'dog', 'elephant', 'chicken']
    },
    {
      'question':'What\'s your favourite food?',
      'answer' : ['pizza', 'fruits', 'vegetable', 'fried rice']
    }
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    if(_questionIndex < questions.length) {
      setState(() {
        print('Answer chosen');
        _questionIndex++;
      });
      print(_questionIndex);
    }
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['question']),
            ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}


