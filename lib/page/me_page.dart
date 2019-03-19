

import 'package:flutter/material.dart';
import 'package:wechat/const/Colors.dart';

class MePage extends StatefulWidget{
  final String title;

  MePage({this.title});

  @override
  _MePageState createState() => _MePageState();

}

class _MePageState extends State<MePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        backgroundColor:UColors.wx_green,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '我',
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}