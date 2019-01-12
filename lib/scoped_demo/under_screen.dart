import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_notebook_practice/scoped_demo/model/count_model.dart';


class UnderScreen extends StatefulWidget{

  final String title;
  UnderScreen({Key key,this.title}):super(key:key);


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return UnderScreenState();
  }

}

class UnderScreenState extends State<UnderScreen> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScopedModelDescendant<CountModel>(builder: (context,child,model){
      return Scaffold(
        appBar: AppBar(
          title: new Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'you have pushed the button this many times',
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                '${model.count}',
                style: TextStyle(fontSize: 36.0),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: ()=>model.increment(),
        tooltip: 'increment',child: Icon(Icons.add),),
      );
    },);
  }
}
















