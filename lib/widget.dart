import 'dart:ffi';

import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, Key? key}) : super(key: key);

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: [
          const IconButton(
            onPressed: null,
            icon: Icon(Icons.menu),
            tooltip: "Navigation menu",
          ),
          Expanded(
            child: title,
          ),
          const IconButton(onPressed: null, icon: Icon(Icons.search))
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MyAppBar(
              title: Text(
            "Example Title",
            style: Theme.of(context).primaryTextTheme.headline6,
          )),
          const Expanded(
              child: Center(
            child: Text("Hello World"),
          ))
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: "My App",
    home: SafeArea(child: MyScaffold()),
  ));
}
