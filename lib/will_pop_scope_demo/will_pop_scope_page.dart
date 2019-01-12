import 'dart:async';
import 'package:flutter/material.dart';

/**
 * 实现原理，使用WillPopScope组件，它会检测到子组件的Navigation的pop事件，并拦截下来。
 * 我们需要在它的onWillPop属性中返回一个新的组件（一般是一个Dialog）处理是否真的pop该页面。
 */


class MyHomePage extends StatefulWidget{

  final String title;
  MyHomePage({Key key,this.title}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }

}


class MyHomePageState extends State<MyHomePage>{

  int counter = 0;

  void incrementCounter(){
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      onWillPop: onBackPressed,
      child: new Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('you have pushed the button this many times'),
              Text('$counter',style: Theme.of(context).textTheme.display1,),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: incrementCounter,
        tooltip: 'increment',child: Icon(Icons.add),),
      ),
    );
  }

  Future<bool> onBackPressed(){
    return showDialog(
      context: context,
      builder: (context)=>AlertDialog(
        title: Text('do you really want to exit the app?'),
        actions: <Widget>[
          FlatButton(
            child: Text('No'),
            onPressed: ()=>Navigator.pop(context,false),
          ),
          FlatButton(
            child: Text('Yes'),
            onPressed: ()=>Navigator.pop(context,true),
          )
        ],
      )
    );
  }

}


















