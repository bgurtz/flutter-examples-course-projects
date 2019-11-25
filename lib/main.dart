// This is our ' First App and AppBar ' 

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child:
        Scaffold(
          appBar: AppBar(
            title: Text('My First App & AppBar'),
          ),
          body: Center(child: 
          Text('Brian Gurtz'),
          ),
        ),
      ),
    );
    
  }
}
