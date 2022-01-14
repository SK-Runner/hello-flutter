import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class sliderPage extends StatefulWidget {
  @override
  _sliderPage createState() => _sliderPage();
}

class _sliderPage extends State<sliderPage> {
  var _sliderValue = 1.0;
  var _sliderValue2 = 1.0;

  RangeValues _rangeValues = RangeValues(0, 25);

  var iosSliderValue = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('滑块组件'),
      ),
      body: Container(
        width: 360,
        height: 360,
        color: Colors.blueGrey[300],
        child: Column(
          children: [
            Container(child: Text('值：$_sliderValue')),
            Container(
              child: Slider(
                value: _sliderValue,
                label: '$_sliderValue',
                min: 1,
                max: 100,
                divisions: 4,
                activeColor: Colors.pink[300],
                inactiveColor: Colors.blue,
                onChanged: (value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
              ),
            ),
            Container(child: Text('更细致的slider样式')),
            Container(
                child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.pink[300],
                  thumbColor: Colors.cyanAccent,
                  overlayColor: Colors.deepOrangeAccent,
                  valueIndicatorColor: Colors.brown,
                  inactiveTrackColor: Colors.black),
              child: Slider(
                value: _sliderValue2,
                label: '$_sliderValue2',
                min: 1,
                max: 100,
                divisions: 4,
                onChanged: (value) {
                  setState(() {
                    _sliderValue2 = value;
                  });
                },
              ),
            )),
            Container(child: Text('范围滑块')),
            Container(
              child: RangeSlider(
                values: _rangeValues,
                labels:
                    RangeLabels('${_rangeValues.start}', '${_rangeValues.end}'),
                min: 0,
                max: 100,
                divisions: 4,
                onChanged: (v) {
                  print(v);
                  setState(() {
                    _rangeValues = v;
                  });
                },
              ),
            ),
            Container(child: Text('IOS风格滑块')),
            Container(
              child: CupertinoSlider(
                value: iosSliderValue,
                max: 100,
                onChanged: (v) {
                  setState(() {
                    iosSliderValue = v;
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
