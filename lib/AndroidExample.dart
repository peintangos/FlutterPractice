import 'package:flutter/material.dart';

void main() {
  runApp(const AndroidExample());
}

class AndroidExample extends StatelessWidget {
  const AndroidExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "SampleApp",
        theme: ThemeData(primarySwatch: Colors.amber),
        home: SampleAppPage());
  }
}

class SampleAppPage extends StatefulWidget {
  const SampleAppPage({Key? key}) : super(key: key);

  @override
  _SampleAppPage createState() => _SampleAppPage();
}

class _SampleAppPage extends State<SampleAppPage> {
  String textToShow = "I Like Flutter";

  void _updateText() {
    setState(() {
      textToShow = "Flutter is Awesome";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sample App")),
      body: Center(
        child: Text(textToShow),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _updateText,
        tooltip: "Update Text",
        child: Icon(Icons.key),
      ),
    );
  }
}
