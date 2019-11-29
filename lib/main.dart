// This is our ' First App and AppBar '

import 'package:flutter/material.dart';

import './question.dart';
import 'answer.dart';

// void main() {
//   runApp(
//     MyApp(),
//   );
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// The underscore infront of the MyAppState makes its a private class
// and not a public class. Now it can only be used in this main.dart file
// and not in other areas or files. 
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'what\'s your favorite animal?',
      'what\'s your favorite food?',
      'what\'s your favorite question?',
    ];
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('My First App & AppBar'),
          ),
          body: Column(
            children: <Widget>[
              // The examples below are other ways to 
              // select through our list of questions
              // Text(questions.elementAt(0),),

              // Text(
              //   questions[0],
              // ),


              // We have replaced the
              // Text(question[_questionIndex]),
              // with a pointer to the new file question.dart
              // and we have impoerted the question.dart at the top 
              // of this main.dart file. 
              // effectively splitting out widgets.
              Question(
                questions[_questionIndex],
              ),


              // The below is an anonymous function
              // they are used if it will not be called more than once
              // example would be a single button that would not be 
              // used again. 

              // RaisedButton(
              //   child: Text('Answer 1'),
              //   onPressed: () => Text("anonymous function")
              // ),

              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion),


              // the raised buttons have been refactored and now
              // have their own answer.dart file. 

              // RaisedButton(
              //   child: Text('Answer 1'),
              //   onPressed: _answerQuestion,
              // ),
              // RaisedButton(
              //   child: Text('Answer 1'),
              //   onPressed: _answerQuestion,
              // ),
              // RaisedButton(
              //   child: Text('Answer 1'),
              //   onPressed: _answerQuestion,
              // ),

            ],
          ),
        ),
      ),
    );
  }
}
