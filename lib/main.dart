import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp>{
  final _questions = const[
    {
      'question':'What\'s your favourite color?',
      'answer' : [
        {'text' : 'black', 'score' : 10},
        {'text': 'red', 'score' : 6},
        {'text':'blue', 'score' : 7},
        {'text' : 'yellow', 'score' : 4}]
    },
    {
      'question':'What\'s your favourite animal?',
      'answer' : [
        {'text' : 'cat', 'score' : 4},
        {'text' : 'dog', 'score' : 5},
        {'text' : 'elephant', 'score' : 9},
        {'text' : 'chicken', 'score' : 7}]
    },
    {
      'question':'What\'s your favourite food?',
      'answer' : [
        {'text' : 'pizza', 'score' : 5},
        {'text' : 'fruits', 'score' : 3},
        {'text' : 'vegetable', 'score' : 2},
        {'text' : 'fried rice', 'score' : 6}]
    }
  ];

  var _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
      _totalScore += score;

      setState(() {
        print('Answer chosen');
        _questionIndex++;
      });

      if(_questionIndex < _questions.length)
        print("We have more questions");
      else
        print("There are no more questions");

  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length ?
            Quiz( _answerQuestion, _questions, _questionIndex)
         : Result(_totalScore, _resetQuiz)
      ),
    );
  }
}