import 'package:flutter/material.dart';
import 'pages/air_page.dart';
import 'pages/home_page.dart';
import 'pages/alert_page.dart';
import 'pages/email_page.dart';


/**
 * 新增使用pageview实现方式：navigation——keep——alive
 * 这种方式能够通过子页面state实现AutomaticKeepAliveClientMixin
 * 达到切换各页面保持状态的效果。
 * 请切换home注释分别查看
 */
class NavigationDemoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new NavigationDemoPageState();
  }

}

class NavigationDemoPageState extends State<NavigationDemoPage> {

  final _bottomNavigationColor = Colors.blue;
  int _currentIndex= 0;
  List<Widget> widgetList=List();

  @override
  void initState() {
    // TODO: implement initState
    widgetList
    ..add(HomePage())
    ..add(EmailPage())
    ..add(AlertPage())
    ..add(AirPage());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: widgetList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _bottomNavigationColor,
            ),
            title: Text(
              'HOME',
              style: TextStyle(color: _bottomNavigationColor),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: _bottomNavigationColor,
            ),
            title: Text(
              'EMAIL',
              style: TextStyle(color: _bottomNavigationColor),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_alert,
              color: _bottomNavigationColor,
            ),
            title: Text(
              'ALERT',
              style: TextStyle(color: _bottomNavigationColor),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.airplay,
              color: _bottomNavigationColor,
            ),
            title: Text(
              'AIRPLAY',
              style: TextStyle(color: _bottomNavigationColor),
            )
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}














