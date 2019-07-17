import 'package:flutter/material.dart';
import 'package:wechat/navigation/tab_nav.dart';

void main() => runApp(App());


class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "标题",
      theme: new ThemeData.fallback(),
      home: TabNav(title: "BiaoTi",),
    );
  }

}