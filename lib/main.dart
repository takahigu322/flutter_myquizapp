import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

//void main(){
//runApp(Myapp());

//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 30},
        {'text': 'White', 'score': 60}
      ],
    },
    {
      'questionText': 'What\'s your favorite animarl?',
      'answers': [
        {'text': 'Rabbit', 'score': 40},
        {'text': 'Snake', 'score': 30},
        {'text': 'Elephant', 'score': 50},
        {'text': 'Loin', 'score': 70}
      ],
    },
    {
      'questionText': 'Who\'s your favorite instractor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more question');
    } else {
      print("No more question!");
    }
  }

  @override
  Widget build(BuildContext context) {
    //var dammy = ['hello'];
    //dammy.add('Max');
    //print(dammy);
    //questions =[]; //変数がconst型の場合これは機能しない

    return MaterialApp(
      debugShowCheckedModeBanner: false, // debug消すのはこれを追加するだけ
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
