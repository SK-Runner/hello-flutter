import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class radioPage extends StatefulWidget{

  @override
  _radioPage createState() => _radioPage();

}

class _radioPage extends State<radioPage> {

  var _radioGroupValue = 'cat';
  var _radioGroupValue2 = '布偶猫';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('单选按钮组件'),
      ),
      body: Container(
        width: 360,
        height: 360,
        color: Colors.blueGrey[300],
        child: Column(
          children: [
            Container(
              child: Radio(
                value: 'cat',
                groupValue: _radioGroupValue,
                activeColor: Colors.amber,
                onChanged: (value){
                  // ignore: avoid_print
                  print('value：$value');
                  setState(() {
                    _radioGroupValue = value.toString();
                  });
                },
              ),
            ),
            Container(
              child: Radio(
                value: 'dog',
                groupValue: _radioGroupValue,
                activeColor: Colors.amber,
                onChanged: (value){
                  // ignore: avoid_print
                  print('value：$value');
                  setState(() {
                    _radioGroupValue = value.toString();
                  });
                },
              ),
            ),
            Container(
              child: RadioListTile(
                title: Text('布偶猫'),
                value: '布偶猫',
                groupValue: _radioGroupValue2,
                activeColor: Colors.amber,
                onChanged: (value){
                  // ignore: avoid_print
                  print('value：$value');
                  setState(() {
                    _radioGroupValue2 = value.toString();
                  });
                },
              ),
            ),
            Container(
              child: RadioListTile(
                title: Text('金短猫'),
                value: '金短猫',
                groupValue: _radioGroupValue2,
                activeColor: Colors.amber,
                onChanged: (value){
                  // ignore: avoid_print
                  print('value：$value');
                  setState(() {
                    _radioGroupValue2 = value.toString();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

}