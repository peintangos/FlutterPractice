import 'package:flutter/material.dart';

void main() {
  runApp(AndroidExample1());
}

class AndroidExample1 extends StatelessWidget {
  AndroidExample1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Material App",
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: AndroidExample11(),);
  }
}

class AndroidExample11 extends StatefulWidget {
  AndroidExample11({Key? key}) : super(key: key);

  @override
  _AndroidExample11 createState() => _AndroidExample11();
}

class _AndroidExample11 extends State<AndroidExample11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:
    Text("Sample App")),
      body: Center(child: ElevatedButton(
        style: ElevatedButton.styleFrom(padding: EdgeInsets.all(10)),
        onPressed: () {},
        child: Text("aaa"),)
        ,
      )
      ,
    );
  }

}