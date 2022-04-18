import 'package:flutter/material.dart';

void main() {
  const descStyle = TextStyle(
      color: Colors.black12,
      fontWeight: FontWeight.bold,
      fontFamily: "Robo",
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2);

  final iconList = DefaultTextStyle.merge(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: const [Icon(Icons.kitchen), Text("A"), Text("B")],
            ),
            Column(
              children: const [Icon(Icons.kitchen), Text("A"), Text("B")],
            ),
            Column(
              children: const [Icon(Icons.kitchen), Text("A"), Text("B")],
            )
          ],
        ),
      ),
      style: descStyle);
  runApp(MaterialApp(home: iconList));
}
