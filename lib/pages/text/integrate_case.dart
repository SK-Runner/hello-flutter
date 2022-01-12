import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui' as ui;

// 综合案例

class IntegrateCase extends StatefulWidget{
  const IntegrateCase({Key? key}) : super(key: key);

  @override
  _IntegrateCase createState ()=> _IntegrateCase();
}

class _IntegrateCase extends State<IntegrateCase>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('综合案例'),
      ),
      body: Container(
        width: 360,
        height: 900,
        color: Colors.amber[600],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              child: Text(
                '文字渐变（Text gradient）',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()
                  ..shader = ui.Gradient.linear(
                    const Offset(0, 20),
                    const Offset(150, 20),
                    <Color>[
                      Colors.pink,
                      Colors.purple,
                    ],
                  )
                ),
              ),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: RichText(
                text:TextSpan(
                  children: <InlineSpan>[
                    WidgetSpan(
                      child: Container(
                        margin: const EdgeInsets.only(right: 10,top: 10),
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical:5),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.blue
                        ),
                        child: const Text(
                          '判断题',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white
                          ),
                        ),
                      )
                    ),
                    const TextSpan(
                      text: '泡沫灭火器可用于带电灭火',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black
                      ),
                    )
                  ]
                )
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: RichText(
                text: const TextSpan(
                  children: <InlineSpan>[
                    TextSpan(
                      text:'登陆即代表同意并阅读',
                      style: TextStyle(
                        color: Colors.grey
                      )
                    ),
                    TextSpan(
                      text:'《服务协议》',
                      style: TextStyle(
                        color: Colors.blue
                      )
                    ),
                  ]
                )
              ),
            ),
            Container(
              margin:const EdgeInsets.only(top: 20),
              child: const TextField(
                decoration: InputDecoration(
                  fillColor: Color(0x30cccccc),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  hintText: '输入密码',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0x00000000)),
                      borderRadius: BorderRadius.all(Radius.circular(100))),

                ),
                textAlign: TextAlign.center,
                obscureText: true,
              )
            ),
          ]
        ),
      )
    );
  }
}