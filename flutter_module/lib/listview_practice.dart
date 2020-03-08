import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "ListViewPractice",
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: _ListView(),
    );
  }
}
class _ListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('scrollview'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        itemExtent: 30.0,
        children: <Widget>[
          Text("A"),
          Text("B"),
          Text("C"),
          Text("D"),
          Text("E"),
          Text("F"),
          Text("G"),
          Text("H"),
          Text("I"),
          Text("A"),
          Text("B"),
          Text("C"),
          Text("D"),
          Text("E"),
          Text("F"),
          Text("G"),
          Text("H"),
          Text("I"),
          Text("A"),
          Text("B"),
          Text("C"),
          Text("D"),
          Text("E"),
          Text("F"),
          Text("G"),
          Text("H"),
          Text("I"),
          Text("A"),
          Text("B"),
          Text("C"),
          Text("D"),
          Text("E"),
          Text("F"),
          Text("G"),
          Text("H"),
          Text("I"),
        ],
      ),
    );
  }

}