import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_module/baseline_practice.dart';
import 'package:flutter_module/button_practice.dart';
import 'package:flutter_module/container_practice.dart';
import 'package:flutter_module/listview_practice.dart';
import 'package:flutter_module/single_child_scroll_view.dart';

import 'home_page.dart';
import 'login_page.dart';

//void main() => runApp(MyApp());
void main() => runApp(_widgetForRouter(window.defaultRouteName));

Widget _widgetForRouter(String router) {
  switch (router) {
    case "router1":
      return MyApp();
    case "router2":
      return ContainerPractice();
    case "router3":
      return ButtonPractice();
    case "router4":
      return ListViewPractice();
    case "router5":
      return SingleChildScrollViewPractice();
    case "router6":
      return BaseLinePractice();
    default:
      return Center(
        child: Text(
          "不清楚的router",
          textDirection: TextDirection.ltr,
        ),
      );
  }
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '登录Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
