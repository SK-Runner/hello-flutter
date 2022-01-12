import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class buttonPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('常用按钮'),
      ),
      body: Container(
        width: 360,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: 360,
              height: 50,
              margin: EdgeInsets.only(bottom: 20),
              // ignore: deprecated_member_use
              child: RaisedButton(
                color: Colors.pink[400],
                child: const Text('Material风格“凸起”的按钮'),
                highlightColor: Colors.deepOrangeAccent,
                splashColor: Colors.deepPurple,
                elevation: 10.0, // 阴影
                onPressed: (){
                  // ignore: avoid_print
                  print('点击事件');
                },
                onLongPress: (){
                  // ignore: avoid_print
                  print('按钮常按事件');
                },
                onHighlightChanged:(higntlight){
                  // heightlight:代表水波状态是否结束，开始为true，结束为false
                  if(higntlight) {
                    // ignore: avoid_print
                    print('水波纹开始');
                  }else{
                    // ignore: avoid_print
                    print('水波纹开结束');
                  }
                }
              ),
            ),
            Container(
              width: 360,
              height: 50,
              margin: EdgeInsets.only(bottom: 20),
              // ignore: deprecated_member_use
              child: RaisedButton(
                color: Colors.pink[400],
                child: const Text('Material风格“凸起”的按钮——禁用状态'),
                disabledColor: Colors.grey[400],
                disabledTextColor: Colors.black87,
                onPressed: null,
              ),
            ),
            Container(
              width: 360,
              height: 50,
              margin: EdgeInsets.only(bottom: 20),
              // ignore: deprecated_member_use
              child: FlatButton(
                color: Colors.amber,
                child: const Text('扁平的按钮'),
                onPressed: (){
                  // ignore: avoid_print
                  print('FlatButton');
                },
                onLongPress: (){
                  // ignore: avoid_print
                  print('11111');
                },
                onHighlightChanged:(higntlight){
                  // heightlight:代表水波状态是否结束，开始为true，结束为false
                  print('${higntlight},2222');
                }
              ),
            ),
            Container(
              width: 360,
              height: 50,
              margin: EdgeInsets.only(bottom: 20),
              // ignore: deprecated_member_use
              child: OutlineButton(
                color: Colors.brown[300],
                child: const Text('带边框的按钮'),
                onPressed: (){
                  // ignore: avoid_print
                  print('OutlineButton');
                },
              ),
            ),
            Container(
              width: 360,
              height: 50,
              margin: EdgeInsets.only(bottom: 20),
              // ignore: deprecated_member_use
              child: IconButton(
                icon: Icon(Icons.sentiment_satisfied_alt_outlined),
                color: Colors.cyan,
                onPressed: (){
                  // ignore: avoid_print
                  print('图标按钮');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

}