import 'package:flutter/material.dart';

import 'pages_keep_alive/air_page.dart';
import 'pages_keep_alive/alert_page.dart';
import 'pages_keep_alive/email_page.dart';
import 'pages_keep_alive/home_page.dart';


class NavigationKeepAlivePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new NavigationKeepAlivePageState();
  }

}

class NavigationKeepAlivePageState extends State<NavigationKeepAlivePage>
  with SingleTickerProviderStateMixin{
  var _controller = PageController(
    initialPage: 0,
  );

  final _bottomColor = Colors.red;

  int _currentIndex = 0;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          HomePage(),
          AirPage(),
          AlertPage(),
          EmailPage()
        ],
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home,color: _bottomColor,),
          title: Text('HOME',style: TextStyle(color: _bottomColor),)
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.airplay,color: _bottomColor,),
          title: Text('AIR',style: TextStyle(color: _bottomColor),)
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_alert,color: _bottomColor,),
          title: Text('ALERT',style: TextStyle(color: _bottomColor),)
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.email,color: _bottomColor,),
          title: Text('EMAIL',style: TextStyle(color: _bottomColor),)
        )
      ],
      currentIndex: _currentIndex,
      onTap: (index){
        _controller.jumpToPage(index);
        setState(() {
          _currentIndex = index;
        });
      },),
    );

  }
}













