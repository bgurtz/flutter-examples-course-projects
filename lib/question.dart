import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // We use ' final ' infront of our String questionText;
  // to tell flutter that this value will not change
  // after the initialization of the  * Constructor *
  // the constructor is * Question(this.questionText);
  // not marking it as final means that its value could be changed in side this class
  final String questionText;

  // The below is a 'Positional argument'
  // If we wrap it in curly braces it will be a ' Named Argument '
  // the Constructor below will store information / value in the property
  // String questionText
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        top: 20.0,
        right: 10.0,
        left:  10.0,
        bottom: 25.0,
      ),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
