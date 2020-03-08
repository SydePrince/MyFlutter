import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleChildScrollViewPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      title: "SingleChildScrollViewPractice",
      home: _singleChildScrollView(),
    );
  }

}

class _singleChildScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
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