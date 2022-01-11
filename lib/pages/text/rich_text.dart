import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RichTextPage extends StatefulWidget{
  const RichTextPage({Key? key}) : super(key: key);

  @override
  _RichTextPage createState() => _RichTextPage();
}

class _RichTextPage extends State<RichTextPage> {
  // 变色标识
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    
    // 声明一个TapGestureRecognizer
    // 导包import 'package:flutter/gestures.dart';
    // ignore: unnecessary_new
    TapGestureRecognizer tapGestureRecognizer = new TapGestureRecognizer();

    // 使用GestureRecognizer后一定要调用其dispose()方法来释放资源（主要是取消内部的计时器）
    // void dispose(){
    //   tapGestureRecognizer.dispose();
    //   super.dispose();
    // }

    return Scaffold(
      appBar: AppBar(
        title: const Text('富文本组件'),
      ),
      body: Container(
        width: 360,
        height: 360,
        color: Colors.pink[300],
        child: RichText(
          textAlign: TextAlign.justify,
          text:TextSpan(
            text: '    (1)  ',
            // style: DefaultTextStyle.of(context).style 设置富文本组件文本样式为全局默认样式（main中定义的）
            style: TextStyle(
              color: Colors.purple[900],
              fontWeight: FontWeight.bold
            ), 
            children: <InlineSpan>[
              TextSpan(
                text:'Flutter 为应用开发带来了革新',
                style: TextStyle(
                  color: flag ? Colors.red : Colors.blue,
                  fontWeight: FontWeight.w400
                ),
                recognizer: tapGestureRecognizer..onTap = (){
                  setState(() {
                    flag = !flag;
                    // ignore: avoid_print
                    print(flag);
                  });
                }
              ),
              const TextSpan(
                text:'： 只要一套代码库，即可构建、测试和发布适用于移动、Web、桌面和嵌入式平台的精美应用。',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400
                ), 
              ),
            ]
          ),
        )
      )
    );
  }
}