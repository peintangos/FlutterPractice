import 'package:flutter/material.dart';

Widget titleSection = Container(
  padding: EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.only(bottom: 0.8),
              child: Text(
                "Ossss",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Text(
            "K",
            style: TextStyle(color: Colors.green),
          )
        ],
      )),
      Icon(
        Icons.search,
        color: Colors.red,
      ),
      Text("teee")
    ],
  ),
);

class MyApp9 extends StatelessWidget{
  MyApp9({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Column _buildButonColumn(Color color,IconData icon,String label){
    return Column();
  }
}

