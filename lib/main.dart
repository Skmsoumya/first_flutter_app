import "package:flutter/material.dart";

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    void answerQuestion() {
      print("answered question!");
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first flutter app!"),
        ),
        body: Column(
          children: [
            Text("The Question!"),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () => print("Answer 2 choosen!"),
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: () {
                print("Answer 3 choosen!");
              },
            ),
          ],
        ),
      ),
    );
  }
}
