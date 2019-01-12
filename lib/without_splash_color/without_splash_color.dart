import 'package:flutter/material.dart';

/**
 * 使用局部theme强制设置splash color和highlight color为 Colors.transparent
 * splashColor: Colors.transparent,
 * highlightColor: Colors.transparent),
 *
 * brightness: Theme.of(context).brightness,确保与appTheme主题一致
 */

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }

}

class MyHomePageState extends State<MyHomePage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('with out splash color demo'),
      ),
      bottomNavigationBar: Theme(data: ThemeData(
        brightness: Theme.of(context).brightness,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent
      ), child: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.description,),
          title: Text('123')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star),
          title: Text('123')
        ),
      ])),
    );
  }

}

















