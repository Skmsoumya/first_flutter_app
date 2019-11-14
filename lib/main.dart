import "package:flutter/material.dart";


import "./question.dart";
import "./answer.dart";

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    var _questions = [
      "What's your favourite color?",
      "What's your favourite animal?",
    ];

    void _answerQuestion() {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
      print(_questionIndex);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first flutter app!"),
        ),
        body: Column(
          children: [
            Question(questionText: _questions[_questionIndex]),
            Answer(callbackFunction: _answerQuestion, answerText: "Answer 1",),
            Answer(callbackFunction: _answerQuestion, answerText: "Answer 2",),
            Answer(callbackFunction: _answerQuestion, answerText: "Answer 3",),
          ],
        ),
      ),
    );
  }
}
