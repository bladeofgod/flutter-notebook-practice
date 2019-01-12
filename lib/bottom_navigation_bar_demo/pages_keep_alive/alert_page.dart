import 'package:flutter/material.dart';


class AlertPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new AlertPageState();
  }

}

class AlertPageState extends State<AlertPage> with AutomaticKeepAliveClientMixin {

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  int _counter = 0;
  void _incrementCounter(){
    setState(() {
      _counter++;
      //updateKeepAlive();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('alert page'),),
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _incrementCounter,tooltip: "increment",child: Icon(Icons.add),),
    );
  }
}











