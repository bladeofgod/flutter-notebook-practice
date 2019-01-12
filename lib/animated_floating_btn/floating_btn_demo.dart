import 'package:flutter/material.dart';

class FloatingBtnDemo extends StatefulWidget{
  FloatingBtnDemo({Key key}):super(key:key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new FloatingBtnDemoState();
  }

}

class FloatingBtnDemoState extends State<FloatingBtnDemo> {

  int value = 0;

  void incrementValue(){
    setState(() {
      value ++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('floating action button'),
      ),
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$value',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        incrementValue();
      },
      tooltip: 'increment',
      child: Icon(Icons.add),),
    );
  }
}



















