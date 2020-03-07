import 'dart:ui';

import 'package:flutter/material.dart';

import 'home_page.dart';
import 'login_page.dart';

void main() => runApp(MyApp());
//void main() => runApp(_widgetForRouter(window.defaultRouteName));

Widget _widgetForRouter(String router) {
  switch(router) {
    case "router1":
      return MyApp();
    case "router2":
      return Center(
        child: Text("这个是router2,可以使用flutter attach进行热更新", textDirection: TextDirection.ltr,),
      );
    default :
      return Center(
        child: Text("不清楚的router", textDirection: TextDirection.ltr,),
      );
  }
}
class MyApp extends StatelessWidget {

  final routes = <String, WidgetBuilder> {
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
