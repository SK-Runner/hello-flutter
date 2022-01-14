import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class checkboxPage extends StatefulWidget{

  @override
  _checkboxPage createState() => _checkboxPage();

}

class _checkboxPage extends State<checkboxPage> {

  bool _checkValue = false;
  var _radioGroupValue2 = '布偶猫';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('多选按钮组件'),
      ),
      body: Container(
        width: 360,
        height: 360,
        color: Colors.blueGrey[300],
        child: Column(
          children: [
            Container(
              child: CheckboxListTile(
                title: Text('audi'),
                controlAffinity: ListTileControlAffinity.leading,
                subtitle: Text('nice car'),
                secondary: Icon(Icons.car_rental),
                value: _checkValue,
                activeColor: Colors.amber,
                onChanged: (value){
                  setState(() {
                    _checkValue = value!;
                  });
                },
              ),
            ),
            Container(
              child: CheckboxListTile(
                title: Text('audi'),
                controlAffinity: ListTileControlAffinity.platform,
                subtitle: Text('nice car'),
                secondary: Icon(Icons.car_rental),
                value: _checkValue,
                activeColor: Colors.amber,
                onChanged: (value){
                  setState(() {
                    _checkValue = value!;
                  });
                },
              ),
            ),
            Container(
              child: CheckboxListTile(
                title: Text('audi'),
                controlAffinity: ListTileControlAffinity.trailing,
                subtitle: Text('nice car'),
                secondary: Icon(Icons.car_rental),
                value: _checkValue,
                activeColor: Colors.amber,
                onChanged: (value){
                  setState(() {
                    _checkValue = value!;
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