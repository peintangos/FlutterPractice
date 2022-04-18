import 'package:flutter/material.dart';
import 'package:my_app/navigation.dart';

void main() {
  runApp(Na());
}

class Na extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(builder: (context) => Home3Screen());
        }

        var uri = Uri.parse(settings.name!);
        if (uri.pathSegments.length == 2 &&
            uri.pathSegments.first == 'details') {
          var id = uri.pathSegments[1];
          return MaterialPageRoute(builder: (context) => DetailScreen(id: id));
        }

        return MaterialPageRoute(builder: (context) => UnKnownScreen());
      },
    );
  }
}

class Home3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FlatButton(
          child: Text("ddddd"),
          onPressed: () => {Navigator.pushNamed(context, "/details/1")},
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  String id;

  DetailScreen({required this.id});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("View details for item $id"),
            FlatButton(
                onPressed: () => {Navigator.pop(context)}, child: Text("Pop"))
          ],
        ),
      ),
    );
  }
}

class UnKnownScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("301"),
      ),
    );
  }
}
