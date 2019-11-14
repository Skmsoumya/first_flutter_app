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
      {
        "question": "What's your favourite color?",
        "answers": [
          "Yellow",
          "Black",
          "Red",
          "Orange",
        ],
      },
      {
        "question": "What's your favourite animal?",
        "answers": [
          "Cow",
          "Elephant",
          "Snake",
          "Gorilla",
        ],
      },
      {
        "question": "What's your favourite food?",
        "answers": [
          "Butter Chicken",
          "Fried Chicken",
          "Chicken Tikka Masala",
          "Chicken Biryani",
        ],
      },
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
            Question(questionText: _questions[_questionIndex]["question"]),
            ...(_questions[_questionIndex]["answers"] as List<String> ).map((answer) {
              return Answer(callbackFunction: _answerQuestion, answerText: answer,);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
