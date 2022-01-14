import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProgressPage extends StatefulWidget {
  const ProgressPage({Key? key}) : super(key: key);

  @override
  _ProgressPage createState() {
    return _ProgressPage();
  }
}

class _ProgressPage extends State<ProgressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('进度组件'),
      ),
      body: Container(
        width: 360,
        height: 400,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: const LinearProgressIndicator(
                value: 0.4,
                backgroundColor: Colors.pink,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                minHeight: 10,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: const CircularProgressIndicator(
                value: 0.4,
                backgroundColor: Colors.pink,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                strokeWidth: 10,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: const CupertinoActivityIndicator(
                radius: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
