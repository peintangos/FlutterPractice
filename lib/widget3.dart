import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("MyButton was Tapped");
      },
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0), color: Colors.lightBlue),
        child: const Center(
          child: Text("Enagex"),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Center(
        child: MyButton(),
      ),
    ),
  ));
}
