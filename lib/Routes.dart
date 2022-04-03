import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyAppHome(),
    routes: <String, WidgetBuilder>{
      "/a": (BuildContext context) => MyPage(title: "A"),
      "/b": (BuildContext context) => MyPage(title: "B"),
      "/c": (BuildContext context) => MyPage(title: "C"),
    },
  ));
}

class MyAppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyPage(title: "a");
  }
}

class MyPage extends StatefulWidget {
  MyPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyPage createState() => _MyPage();
}

class _MyPage extends State<MyPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (currentIndex == 0) {
            Navigator.of(context).pushNamed('/b');
            currentIndex = 1;
          } else if (currentIndex == 1) {
            Navigator.of(context).pushNamed('/c');
            currentIndex = 2;
          } else {
            Navigator.of(context).pushNamed('/a');
            currentIndex = 0;
          }
        },
      ),
    );
  }
}
