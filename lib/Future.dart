import 'dart:convert';
import "package:flutter/material.dart";
import 'package:http/http.dart' as http;

void main() {
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  Widget build(BuildContext buildContext) {
    return MaterialApp(
        title: "Sample App",
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: SampleAppPage());
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key? key}) : super(key: key);

  _SampleAppPage createState() => _SampleAppPage();
}

class _SampleAppPage extends State<SampleAppPage> {
  List widgets = [];

  @override
  void initState() {
    super.initState();
    loadDate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: ListView.builder(
          itemCount: widgets.length,
          itemBuilder: (BuildContext context, int position) {
            return getRow(position);
          }),
    );
  }

  Widget getRow(int i) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Text("Row $i${widgets[i]["title"]}"),
    );
  }

  Future<void> loadDate() async {
    var dateURL = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    http.Response response = await http.get(dateURL);
    setState(() {
      widgets = jsonDecode(response.body);
    });
  }
}
