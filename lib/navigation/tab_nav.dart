
import 'package:flutter/material.dart';
import 'package:wechat/const/Colors.dart';
import 'package:wechat/page/address_page.dart';
import 'package:wechat/page/find_page.dart';
import 'package:wechat/page/mine_page.dart';
import 'package:wechat/const/iconfont.dart';
import 'package:wechat/page/wx_page.dart';


class TabNav extends StatefulWidget{
  final String title;

  TabNav({this.title});

  @override
  _TabNavState createState() => _TabNavState();

}

class _TabNavState extends State<TabNav>
  with SingleTickerProviderStateMixin{

  final _defaultColor = Colors.grey;
  final _activeColor = UColors.wx_green;
  int _currentIndex = 0;

  var _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text(widget.title),
//      ),
      body: PageView(
        controller: _controller,
        children: <Widget>[
          WxPage(title: "微信",),
          AddressPage(title: "通讯录",),
          FindPage(title: "发现",),
          MePage(title: "我",),
        ],
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(IconFont.xiaoxi1,color: _defaultColor,),
            activeIcon: Icon(IconFont.xiaoxi,color: _activeColor,),
            title: Text(
              "微信",
              style: TextStyle(
                color: _currentIndex!=0?_defaultColor:_activeColor,
              ),
            )
          ),
          BottomNavigationBarItem(
              icon: Icon(IconFont.mn_tongxunlu,color: _defaultColor,),
              activeIcon: Icon(IconFont.mn_tongxunlu_fill,color: _activeColor,),
              title: Text(
                "通讯录",
                style: TextStyle(
                  color: _currentIndex!=1?_defaultColor:_activeColor,
                ),
              )
          ),
          BottomNavigationBarItem(
              icon: Icon(IconFont.zhinanzhenfaxiandaohangdizhiweizhi,color: _defaultColor,),
              activeIcon: Icon(IconFont.zhinanzhenfaxiandaohangdizhiweizhi1,color: _activeColor,),
              title: Text(
                "发现",
                style: TextStyle(
                  color: _currentIndex!=2?_defaultColor:_activeColor,
                ),
              )
          ),
          BottomNavigationBarItem(
              icon: Icon(IconFont.wode,color: _defaultColor,),
              activeIcon: Icon(IconFont.iconfontzhizuobiaozhun023104,color: _activeColor,),
              title: Text(
                "我",
                style: TextStyle(
                  color: _currentIndex!=3?_defaultColor:_activeColor,
                ),
              )
          ),
        ],
      ),
    );
  }



}