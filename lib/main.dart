import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  final questions = const [
    {
      'questionText': 'What\'s your favorite color',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animarl?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Loin'],
    },
    {
      'questionText': 'Who\'s your favorite instractor?',
      'answers': ['Max', 'Max', 'Max', 'Max'],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < questions.length) {
      print('We have more question');
    }

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    //var dammy = ['hello'];
    //dammy.add('Max');
    //print(dammy);
    //questions =[]; //変数がconst型の場合これは機能しない

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(children: [
          Quesion(questions[_questionIndex]['questionText']),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList()
        ]),
      ),
    );
  }
}
