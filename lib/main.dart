import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
          // 右边分享按钮
          actions: <Widget>[
            IconButton(onPressed: (){}, icon: Icon(Icons.share))
          ],
        ),
        // 左侧抽屉
        drawer: MyDrawer(),
        // 
        body: ScaffoldRoute(),
        bottomNavigationBar: bottom()
      ),
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
    );
  }
}
class ScaffoldRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScaffoldRouteState();
  
}
class _ScaffoldRouteState extends State<ScaffoldRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
  
}

class bottom extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _bottom();
}

class _bottom extends State<bottom> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('home')),
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('list')),
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('balabala')),
      ],
      currentIndex: _selectedIndex,
      fixedColor: Colors.blue,
      onTap: _onItemTapped,
    );
  }

  void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context:context,
        removeTop: true,
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ClipOval(
                child: Image.asset(
                  'imgs/avatar.png',
                  width: 80,
                )
              )
            ),
            Text(
              "wendux",
              style: TextStyle(fontWeight: FontWeight.bold)
            )
          ],
        ),
        
      )
      
    );
  }
  
}