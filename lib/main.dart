import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './question.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print('_questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'question text': 'What\'s my name?',
        'answers': ['Sahith', 'Sathwik', 'Srikanth', 'Srihari']
      },
      {
        'question text': 'What is my surname?',
        'answers': ['Veeragoni', 'Veragoni', 'Viragoni', 'Viraagoni']
      },
      {
        'question text': 'Where I live?',
        'answers': ['Bhm', 'Hyd', 'MNCl', 'Uppal']
      },
      {
        'question text': 'Which state?',
        'answers': ['TS', 'AP', 'MH', 'MP']
      },
      {
        'question text': 'What is my country?',
        'answers': ['INDIA', 'USA', 'UK', 'UAE']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MY OWN APP'),
        ),
        body: Column(
          children: [
            Question(
              //  questions[_questionIndex],
              // questions[0]['question text']
              // '${questions[0]['question text']}',
              questions[0]['question text'].toString(),
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
