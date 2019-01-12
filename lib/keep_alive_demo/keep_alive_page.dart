import 'package:flutter/material.dart';

/**
 * 实现原理，使用AutomaticKeepAliveClientMixin，并重写wantKeepAlive方法，让状态不被回收掉。
 */

class MyHomePage extends StatefulWidget{
  final String title;
  MyHomePage({Key key,this.title}) : super(key : key);
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
  
}

class MyHomePageState extends State<MyHomePage> with AutomaticKeepAliveClientMixin {
  
  int counter = 0;
  
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  
  void incrementCounter(){
    setState(() {
      counter++;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'you have clicked button this times : '
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(onPressed: incrementCounter,
      tooltip: 'increment',child: Icon(Icons.add),),
    );
  }
}
















