import 'package:flutter/material.dart';

void main() {
  runApp(const FadeAppTest());
}

class FadeAppTest extends StatelessWidget {
  const FadeAppTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fade Demo",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const MyFadeTest(title: "Fade Demo"),
    );
  }
}

class MyFadeTest extends StatefulWidget {
  const MyFadeTest({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyFadeTest createState() => _MyFadeTest();
}

class _MyFadeTest extends State<MyFadeTest> with TickerProviderStateMixin {
  // AnimationController
  late AnimationController controller;
  // Animation
  late CurvedAnimation curve;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    curve = CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FadeTransition(
          opacity: curve,
          child: const FlutterLogo(
            size: 100,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Fade",
        onPressed: () {
          controller.forward();
        },
        child: const Icon(Icons.brush),
      ),
    );
  }
}
