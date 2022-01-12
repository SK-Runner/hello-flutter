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

## 3、文本组件基础

### 文本组件——Text

| widget      | 属性                                                         | 用途/值                                                      |
| ----------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Text()      | style                                                        | 值：TextStyle()                                              |
|             | textAlign                                                    | 值：TextAlign类型 <br />.start、.end等                       |
|             | overflow                                                     | 值：TextOverflow类型                                         |
| TextStyle() | color、backgroundColor、fontSize、<br />fontWeight、fontStyle。。。。。。 | 设置文字样式相关属性                                         |
|             | foreground                                                   | 文字渐变： <br />import 'dart:ui' as ui;<br />Paint()..shader = ui.Gradient.linear(<br />    const Offset(0, 20),<br />    const Offset(150, 20),<br />    <Color>[<br />        Colors.pink,<br />        Colors.purple,<br />    ] |



### 富文本组件——RichText

​		如果想在一句话或者一段文字里面显示不同样式的文字，或者在一段文本中与某几个字有动作交互，`Text`组件无法满足我们的需求，这个时候需要使用`RichText`。

| widget       | 属性           | 用途/值                            |
| ------------ | -------------- | ---------------------------------- |
| RichText（） | Text，必要属性 | InlineSpan类型，如 TextSpan() 组件 |
|              | TextDirection  |                                    |
|              | TextAlign      |                                    |
| TextSpan ()  | text           | String，文本内容                   |
|              | style          | TextStyle类型                      |
|              | recognizer     | 手势交互，例如文字的点击等操作     |

手势交互实例：点击”Flutter 为应用开发带来了革新“这几个字改变flag状态及其字体

```dart
class _RichTextPage extends State<RichTextPage> {
  // 变色标识
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    
    // 声明一个TapGestureRecognizer
    // 导包import 'package:flutter/gestures.dart';
    TapGestureRecognizer tapGestureRecognizer = new TapGestureRecognizer();

    // 使用GestureRecognizer后一定要调用其dispose()方法来释放资源（主要是取消内部的计时器）
    void dispose(){
      tapGestureRecognizer.dispose();
      super.dispose();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('富文本组件'),
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
                    print(flag);
                  });
                }
              ),
              TextSpan(
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
```

### 文本输入组件——TextField

TextField可以通过属性设置单行和多行文本框

| widget             | 属性          | 描述                                                         |
| ------------------ | ------------- | ------------------------------------------------------------ |
| TextField          | maxLines      | 设置此参数可以把文本框改为多行文本框                         |
|                    | onChanged     | 文本框改变的时候触发的事件                                   |
|                    | decoration    | <br />值：InputDecoration类<br />                            |
|                    | obscureText   | 把文本框框改为密码框                                         |
|                    | controller    | **controller** 结合 TextEditingController()可以配置表单默认显示的内容 |
|                    | textAlign     | 文字对其方式                                                 |
|                    | obscureText   | true/false，将输入框设置为密码框                             |
| InputDecoration    | hintText      | 类似 html 中的 placeholder                                   |
|                    | border        | 配置文本框边框 OutlineInputBorder 配合使用                   |
|                    | labelText     | lable 的名称                                                 |
|                    | labelStyle    | 配置 lable 的样式                                            |
|                    | filled        | true/false，是否用fillColor属性设置颜色填充                  |
|                    | fillColor     | Color类型，文本框填充颜色                                    |
|                    | enabledBorder | 没有聚焦时边框样式，OutlineInputBorder类型                   |
|                    | focusedBorder | 聚焦时边框样式，OutlineInputBorder类型                       |
| OutlineInputBorder | borderSide    | BorderSide()，边框颜色、宽度、样式                           |
|                    | borderRadius  | BorderRadius()，边框圆角                                     |

计算两数之和demo：

```dart
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextFieldPage extends StatefulWidget{
  _TextFieldPage createState() => _TextFieldPage();
}

class _TextFieldPage extends State<TextFieldPage> {

  TextEditingController _A = new TextEditingController(text:'100');
  TextEditingController _B = new TextEditingController(text:'200');
  var C = '';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('文本输入组件'),
      ),
      body: Container(
        width: 360,
        height: 360,
        color: Colors.pink[300],
        child: Column(
          children: [
            Container(
              width: 200,
              height: 90,
              color: Colors.deepOrangeAccent[600],
              child: TextField(
                controller: _A,
                decoration: InputDecoration(
                  hintText:'请输入数字A',
                ),
              ),
            ),
            Container(
              width: 200,
              height: 90,
              color: Colors.deepOrangeAccent[600],
              child: TextField(
                controller: _B,
                decoration: InputDecoration(
                  hintText: '请输入数字B',
                ),
              ),
            ),
            Container(
              width: 200,
              height: 30,
              color: Colors.deepOrangeAccent[600],
              child: RaisedButton(child: Text('计算A+B'),onPressed: (){
                var result = "";
                try {
                  var a = int.parse(_A.text);
                  var b = int.parse(_B.text);
                  result = (a+b).toString();
                  print(a+b);
                  
                } catch(e) {
                  result = "请检查数据是否正常";
                } finally {
                  setState(() {
                    C = result;
                  });
                }
              }),
            ),
            Container(
              width: 200,
              height: 90,
              color: Colors.deepOrangeAccent[600],
              child: Text('结果：${C}'),
            ),
          ]
        )
      )
    );
  }
}
```

## 4、基础组件

### 按钮组件



### 单选组件



### 复选组件



### 开关组件



### 进度组件



### 图片和图标组件



## 5、Flutter 布局基础

### Row 和 Column 类

`Row` 和 `Column` 是两个用来容纳和布局 widgets 的类。在它们内部的 widgets 我们称为 *children*， `Row` 和 `Column` 就作为它们的父级。

构造函数属性

- mainAxisSize：MainAxisSize.min/.max，Row或者Column占据主轴上所需/所有的空间
- mainAxisAlignment：children在主轴上的对其方式（起点对其，终点对其，中心对其，两边对其，平均分配空间等）
- crossAxisAlignment：children在侧轴上对其方式，前提是子项目高度或宽度不一样（基线对其，顶部对其，底部对齐，中心对其等）
- children ：数组类型，可以N个放置子元素

### Flexible widget

Flexible widget 包裹一个 widget 让这个 widget 变得可以调整大小。当 `Flexible` widget 包裹 widget 时，这个 widget 就成为 `Flexible` widget 的子节点，并被视为 *flexible* 的。

















