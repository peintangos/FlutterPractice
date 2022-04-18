import 'package:flutter/material.dart';

void main() {
  runApp(Nav3App());
}

class Nav3App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => Home2Screen(),
        '/details': (context) => Detail2Screen()
      },
    );
  }
}

class Home2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FlatButton(
          child: Text("View Details111"),
          onPressed: () => {Navigator.pushNamed(context, '/details')},
        ),
      ),
    );
  }
}

class Detail2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FlatButton(
            child: Text("Pop"),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}
