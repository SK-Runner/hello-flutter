
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextPage extends StatelessWidget{
  const TextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('文本组件'),
      ),
      body: Container(
        width: 360,
        height: 360,
        padding: const EdgeInsets.only(left: 10,right: 10),
        color: Colors.blue.withOpacity(.4),
        child: Text(
          "HelloHelloHelloHelloHelloHelloHelloHello",
          style: TextStyle(
            color: Colors.indigo[600],
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
          overflow: TextOverflow.fade,
        ),
      )
    );
  }

}