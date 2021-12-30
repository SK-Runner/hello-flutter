import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body:HomeContent()
      ),
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
    );
  }
  
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: const Text(
          '你好啊',
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          border: Border.all(
            color: Colors.pink.shade100,
            width: 2.0
          )
        ),
      ),
    );
  }
}