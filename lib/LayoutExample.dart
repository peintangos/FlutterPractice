import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(MaterialApp(
      title: "Flutter Demo2",
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage4()));
}

class MyPage4 extends StatelessWidget {
  const MyPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [Text("Name"), Icon(Icons.search)],
      ),
    );
  }
}
