# 学习笔记

## 1、Flutter 目录结构

- android——包含Android特定文件的Android子工程
- build——是运行项目的时候生成的编译文件，即Android和iOS的构建产物
- ios——包含iOS特定文件的iOS子工程
- lib——Flutter应用源文件目录，我们自己写的Dart文件都放进lib文件夹中
- test——测试文件
- pubspec.yaml——管理第三方库及资源的配置文件

## 2、第一个flutter程序

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('Flutter'),
        ),
        body:HomeContent()
      ),
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
    );
  }
  
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        '你好,',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          color: Colors.lightBlue,
        )
      ),
    );;
  }
}
```

