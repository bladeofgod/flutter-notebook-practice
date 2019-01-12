import 'package:flutter/material.dart';

import 'package:flutter_notebook_practice/redux_demo/under_screen.dart';
import 'package:flutter_notebook_practice/redux_demo/states/count_state.dart';
import 'package:flutter_redux/flutter_redux.dart';


class TopScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TopScreenState();
  }

}

class TopScreenState extends State<TopScreen> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('top screen'),
      ),
      body: Center(
        child: StoreConnector<CountState,int>(builder: (context,count){
          return Text(
            count.toString(),
            style: Theme.of(context).textTheme.display1,
          );
        }, converter: (store)=> store.state.count),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return UnderScreen();
        }));
      },child: Icon(Icons.add),),
    );
  }
}



















