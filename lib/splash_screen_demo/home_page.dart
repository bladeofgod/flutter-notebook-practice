import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget{

  final String title;
  MyHomePage({Key key,this.title}): super(key:key);

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
      counter ++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton:FloatingActionButton(onPressed: incrementCounter,tooltip: 'increment',child: Icon(Icons.add),) ,
    );
  }

}

















