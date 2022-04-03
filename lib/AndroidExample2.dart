import 'package:flutter/material.dart';

void main() {
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'Sample App',
        theme: ThemeData(primarySwatch: Colors.green),
        home: const SampleAppPage2());
  }
}

class SampleAppPage2 extends StatefulWidget {
  const SampleAppPage2({Key? key}) : super(key: key);

  @override
  _SampleAppPage2 createState() => _SampleAppPage2();
}

class _SampleAppPage2 extends State<SampleAppPage2> {
  bool toggle = true;

  void _toggle() {
    setState(() {
      toggle = !toggle;
    });
  }

  Widget _getToggleChild() {
    if (toggle) {
      return CustomButton("TT");
    } else {
      return ElevatedButton(onPressed: () {}, child: Text("Toggle Two"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: Center(
        child: _getToggleChild(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggle,
        tooltip: "update_text",
        child: const Icon(Icons.update),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String label;

  CustomButton(this.label);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: Text(label));
  }
}
