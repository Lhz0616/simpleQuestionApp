import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function callback;
  final String answer;

  Answer(this.callback, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.blue),
        child: Text(answer,
        style: TextStyle(color: Colors.white),),
        onPressed: callback,
      ),
    );
  }
}
