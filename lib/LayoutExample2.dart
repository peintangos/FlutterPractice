import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp3 extends StatelessWidget {
  MyApp3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Text",
      home: Scaffold(
        appBar: AppBar(title: const Text("data")),
        body: Center(
          child: Text("Hello World"),
        ),
      ),
    );
  }
}

class MyApp4 extends StatelessWidget {
  MyApp4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: const Center(
        child: Text(
          "s",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 32, color: Colors.lightBlue),
        ),
      ),
    );
  }
}

class MyApp5 extends StatelessWidget {
  MyApp5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Expanded(
              child: Text("s",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      color: Colors.black12,
                      fontSize: 32,
                      backgroundColor: Colors.yellow)),
            ),
            Expanded(
              child: Text("s",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      color: Colors.black12,
                      fontSize: 32,
                      backgroundColor: Colors.yellow)),
            ),
          ],
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}

// Column(
// children: [Text("a"), Text("a"), Text("a"), Text("a")],
// )

void main() {
  runApp(MyApp7());
}

class MyApp6 extends StatelessWidget {
  const MyApp6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Row (
          //   mainAxisSize: MainAxisSize.min,
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     const Icon(Icons.star, color: Colors.black),
          //     const Icon(Icons.star, color: Colors.black),
          //   ],
          // ),
          const Text(
            "170",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto",
                letterSpacing: 0.5,
                fontSize: 20),
          )
        ],
      ),
    );
  }
}

class MyApp7 extends StatelessWidget {
  const MyApp7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.yellow),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          Text("a", textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.red, fontSize: 35)),
          Text("a", textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.red, fontSize: 35)),
          Text("a", textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.red, fontSize: 35)),
          // Row(
          //   children: [
          //     Text("a", textDirection: TextDirection.ltr),
          //     Text("a", textDirection: TextDirection.ltr),
          //     Text("a", textDirection: TextDirection.ltr)
          //   ],
          // )
          Text("a", textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.red, fontSize: 35),)
        ],
      ),
    );
  }
}

var row = Row(mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.search, color: Colors.red),
      Icon(Icons.search, color: Colors.red),
      Icon(Icons.search, color: Colors.red)
    ]);