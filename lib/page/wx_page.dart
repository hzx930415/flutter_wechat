

import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:wechat/const/Colors.dart';
import 'package:wechat/const/iconfont.dart';

class WxPage extends StatefulWidget{
  final String title;

  WxPage({this.title});

  @override
  _WxPageState createState() => _WxPageState();

}

class _WxPageState extends State<WxPage>{
  bool showPlus = false;
  ValueChanged<String> a;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: UColors.wx_grey,
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: MediaQueryData.fromWindow(window).padding.top+44),
            child: Center(
              child:MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView(

                  children: <Widget>[
                    TextFormField(),
                    Container(
                      height: 200,
                      child: Text("Text1"),
                      decoration: BoxDecoration(color: Colors.white),
                    ),
                    Container(
                      height: 200,
                      child: Text("Text1"),
                    ),
                    Container(
                      height: 200,
                      child: Text("Text1"),
                    ),
                    Container(
                      height: 200,
                      child: Text("Text1"),
                    ),
                    Text("Text1"),
                    Text("Text1"),
                    Text("Text1"),
                    Text("Text1"),
                    Text("Text1"),
                    Text("Text1"),
                    Text("Text1"),
                    Text("Text1"),
                    Text("Text1"),
                    Text("Text1"),
                    Text("Text1"),
                    Text("Text1"),
                    Text("Text1"),
                    Text("Text1"),
  //                ListView(
  //                  scrollDirection: Axis.horizontal,
  //                  children: <Widget>[
  //                    Text("Text1"),
  //                  ],
  //                ),
                  ],
                ) ,
              )

            )



          ),
          Container(
            height: MediaQueryData.fromWindow(window).padding.top + 44,
            decoration: BoxDecoration(color: Colors.white30),
            padding: EdgeInsets.only(top: MediaQueryData.fromWindow(window).padding.top),
            child: Center(
              child: Container(
                height: 44,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white12),
                child:Stack(
                  children: <Widget>[
                    Center(
                      child:Text("微信",
                          style:TextStyle(
                            color:Colors.black87,
                            fontSize: 18,
                          )
                      ),
                    ),
                    Align(
                      alignment: FractionalOffset.centerRight,
                      child: IconButton(
                        iconSize: 18,
                        padding: EdgeInsets.all(0),
                        icon: Icon(IconFont.plus,color: Colors.black,),
                        onPressed: () {
                          print("点击加号");
                          setState(() {
                            showPlus = !showPlus;
                          });
                          print(showPlus.toString());
                        },
                      ),
                    )
                  ],
                )
              ),
            ),
          ),
          GestureDetector(
              excludeFromSemantics:true,
              onTap: (){
                print("点击弹出层");
                setState(() {
                  showPlus = true;
                });
                print(showPlus.toString());
              },
              child:Offstage(//显示隐藏组件
                offstage: showPlus,
                child: Container(
                  margin: EdgeInsets.only(top: MediaQueryData.fromWindow(window).padding.top + 44,),
                  color: Colors.transparent,
                  child:Align(
                    alignment: FractionalOffset.topRight,
                    child: Stack(

                      children: <Widget>[
                        Positioned(
                          top: 10,
                          right: 15,
                          child: DecoratedBox(
                            decoration:BoxDecoration(color: UColors.wx_pop_wx),
                            child: Transform.rotate(
                              //旋转90度
                                angle:math.pi/4 ,
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  color: UColors.wx_pop_wx,
                                )
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,

                          child: Container(
                            width: 150,
                            padding: EdgeInsets.all(8),
                            decoration: new BoxDecoration(
                              border: new Border.all(color: UColors.wx_pop_wx, width: 0.5), // 边色与边宽度
                              color: UColors.wx_pop_wx, // 底色
                              borderRadius: new BorderRadius.circular((5.0)), // 圆角度
                              
//                          borderRadius: new BorderRadius.vertical(top: Radius.elliptical(20, 20)), // 也可控件一边圆角大小
                            ),
//                        color: Colors.black,
//                            child: Container(
//                              child: ListView(
//                                children: <Widget>[
//                                  Center(child:Text("Hello",style: TextStyle(color: Colors.white,fontSize: 18),),)
//                                ],
//                              ),
//                            ),
                            child: Column(
                              children: <Widget>[
                                Center(
                                  child:Text("发起群聊",style: TextStyle(color: Colors.white,fontSize: 18),),
                                ),
                                Center(
                                  child:Text("添加朋友",style: TextStyle(color: Colors.white,fontSize: 18),),
                                ),
                                Center(
                                  child:Text("扫一扫",style: TextStyle(color: Colors.white,fontSize: 18),),
                                ),
                                Center(
                                  child:Text("收付款",style: TextStyle(color: Colors.white,fontSize: 18),),
                                ),

                              ],
                            )
                          )
                        )
                      ],

                    ),
                  ),
                ),
              ),
          )
        ],
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}