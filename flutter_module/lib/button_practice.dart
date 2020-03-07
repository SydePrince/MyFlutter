import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Button practice",
      home: Scaffold(
        appBar: AppBar(
          title: Text("button practice"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RaisedButton(
              textColor: Colors.greenAccent,
              color: Colors.amber,
              child: Text(
                  "这个是RaisedButton" /*,style: TextStyle(
                color: Colors.greenAccent,
              ),*/
                  ),
              onPressed: () => {},
            ),
            Container(
              color: Colors.blue,
//              width: 200,
//              height: 50,
              constraints: BoxConstraints.expand(width: 200, height: 50),
              child: RaisedButton(
                child: Text("hahahah"),
              ),
            ),
            FloatingActionButton(
              child: new Icon(Icons.accessibility),
              tooltip: '长按之后提示的文字',
              //长按提示的文字
              foregroundColor: Colors.red,
              //设置显示图标或者文本的颜色//前提是子child没有设置
              backgroundColor: Colors.blueAccent,
              //设置按钮的背景色
//          heroTag: ,//类似于一个标识
              elevation: 10.0,
              //设置阴影
              highlightElevation: 50.0,
//              shape: const CircleBorder(),
//              shape: StadiumBorder(side: BorderSide(width: 2, style: BorderStyle.solid, color: Color(0xFF00FFFF))),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  side: BorderSide(
                      color: Color(0xFFFFFFFF),
                      style: BorderStyle.solid,
                      width: 2)),
//          isExtended: true,
              onPressed: () {
                print('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');
              },
            ),
            OutlineButton(
              child: Text("OutlineButton"),
              onPressed: () => {},
            ),
            FlatButton(
              child: Text("FlatButton"),
              onPressed: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
