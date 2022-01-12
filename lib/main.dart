import 'package:flutter/material.dart';

// import 'pages/text/text.dart'; 
// import 'pages/text/rich_text.dart';
// import 'pages/text/text_field.dart';
// import 'pages/text/integrate_case.dart';
import 'pages/baseComponents/button.dart';

void main(){
  runApp(
    MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.pinkAccent[600],
            fontSize: 24,
            fontWeight: FontWeight.w300
          ),
        )
      ),
      home: buttonPage(),
    )
  );
}