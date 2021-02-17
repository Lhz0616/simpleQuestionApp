import 'package:flutter/material.dart';

import 'main.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function callBack;

  Result(this.resultScore, this.callBack);

  String get resultPhase{
    String resultText ;

    if(resultScore <=8 ){
      resultText = "You are awesome and innocent!";
    }
    else if(resultScore <=12){
      resultText = 'Pretty likeable';
    }

    else if(resultScore <=16){
      resultText = 'You are ... strange';
    }

    else{
      resultText = 'You are so bad';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            Text(resultPhase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            TextButton(
              child: Text("Restart Quiz!"),
              onPressed: callBack,)
          ],
        )
    );
  }
}
