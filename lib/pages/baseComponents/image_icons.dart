import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  _ImagePage createState() {
    return _ImagePage();
  }
}

class _ImagePage extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('进度组件'),
      ),
      body: Container(
        width: 360,
        height: 400,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
              // margin: const EdgeInsets.only(top: 15),
              color: Colors.pink[300],
              child: Row(
                children: [
                  const Text('加载网络图片：', style: TextStyle(fontSize: 14)),
                  Container(),
                  Image.asset(
                    'assets/images/cat-2.jpg',
                    width: 150,
                    height: 150,
                    // fit: BoxFit.fill,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
