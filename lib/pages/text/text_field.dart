import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextFieldPage extends StatefulWidget{
  const TextFieldPage({Key? key}) : super(key: key);

  @override
  _TextFieldPage createState() => _TextFieldPage();
}

class _TextFieldPage extends State<TextFieldPage> {

  // ignore: prefer_final_fields, non_constant_identifier_names, unnecessary_new
  TextEditingController _A = new TextEditingController(text:'100');

  // ignore: prefer_final_fields, non_constant_identifier_names, unnecessary_new
  TextEditingController _B = new TextEditingController(text:'200');

  var C = '';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('文本输入组件'),
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
                decoration: const InputDecoration(
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
                decoration: const InputDecoration(
                  hintText: '请输入数字B',
                ),
              ),
            ),
            Container(
              width: 200,
              height: 30,
              color: Colors.deepOrangeAccent[600],
              // ignore: deprecated_member_use
              child: RaisedButton(child: const Text('计算A+B'),onPressed: (){
                var result = "";
                try {
                  var a = int.parse(_A.text);
                  var b = int.parse(_B.text);
                  result = (a+b).toString();
                  // ignore: avoid_print
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
              // ignore: unnecessary_brace_in_string_interps
              child: Text('结果：${C}'),
            ),
          ]
        )
      )
    );
  }
}