import 'package:flutter/material.dart';

// import 'pages/text/text.dart';
// import 'pages/text/rich_text.dart';
// import 'pages/text/text_field.dart';
// import 'pages/text/integrate_case.dart';
// import 'pages/baseComponents/button.dart';
// import 'pages/baseComponents/radio.dart';
// import 'pages/baseComponents/checkbox.dart';
// import 'pages/baseComponents/switch.dart';
// import 'pages/baseComponents/slider.dart';
// import 'pages/baseComponents/progress.dart';
import 'pages/baseComponents/image_icons.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        textTheme: TextTheme(
      bodyText2: TextStyle(
          color: Colors.pinkAccent[600],
          fontSize: 24,
          fontWeight: FontWeight.w300),
    )),
    home: const ImagePage(),
  ));
}
