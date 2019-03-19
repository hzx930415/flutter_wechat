

import 'package:flutter/material.dart';
import 'package:wechat/const/Colors.dart';

class WxPage extends StatefulWidget{
  final String title;

  WxPage({this.title});

  @override
  _WxPageState createState() => _WxPageState();

}

class _WxPageState extends State<WxPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          widget.title,
          style: TextStyle(color: UColors.wx_green),
        ),
        brightness:Brightness.light,
        backgroundColor:Colors.white30,
        elevation:0,
//          : ThemeData.dark(),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('微信',),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}