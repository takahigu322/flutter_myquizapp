import 'package:flutter/material.dart';

class Quesion extends StatelessWidget {
  String questionText;

  Quesion(this.questionText); //name: 的な、引数に名前をつける

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
