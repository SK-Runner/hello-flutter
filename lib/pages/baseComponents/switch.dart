import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({Key? key}) : super(key: key);

  @override
  _SwitchPage createState() => _SwitchPage();
}

class _SwitchPage extends State<SwitchPage> {
  bool _checkValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('开关组件'),
      ),
      body: Container(
        width: 360,
        height: 360,
        color: Colors.blueGrey[300],
        child: Column(
          children: [
            Container(
              child: SwitchListTile(
                title: Text('audi'),
                controlAffinity: ListTileControlAffinity.trailing,
                subtitle: Text('nice car'),
                secondary: Icon(Icons.car_rental),
                value: _checkValue,
                activeColor: Colors.amber,
                onChanged: (value) {
                  setState(() {
                    _checkValue = value;
                  });
                },
              ),
            ),
            Container(
              // IOS风格按钮
              child: CupertinoSwitch(
                value: _checkValue,
                activeColor: Colors.amber,
                onChanged: (value) {
                  setState(() {
                    _checkValue = value;
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
