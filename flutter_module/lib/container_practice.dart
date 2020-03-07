import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContainerPractice extends StatelessWidget {
  GlobalKey key = new GlobalKey();// todo 怎么使用？
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.amber
      ),
      title: "container",
      home: _home(),
    );

  }
}
class _home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
        return Scaffold(
      body:Container(
        key: key,
        color: Colors.greenAccent,// 设置背景颜色
        width: double.infinity,// 宽度最大，相当于match_parent
          height: double.infinity,// 高度最大
          child: Text(
            "texsdfasdfadfasdfrweeeeeeeeeeeeeeeeeweeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeerss",
            textAlign: TextAlign.center,
            textDirection: TextDirection.ltr,
            overflow: TextOverflow.ellipsis,
            textWidthBasis: TextWidthBasis.longestLine,
            style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
          ),
        ),
      );
  }

}