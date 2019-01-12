import 'package:flutter/material.dart';
import 'each_view.dart';

class BottomAppBarPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _BottomAppBarPageState();
  }

}

class _BottomAppBarPageState extends State<BottomAppBarPage> {

  List<Widget> _eachView;
  int _index = 0;


  @override
  void initState() {
    _eachView = List();
    _eachView..add(EachView('home'))..add(EachView('me'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: _eachView[_index],
      floatingActionButton: new FloatingActionButton(onPressed: (){
        Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context){
          return EachView('new page');
        }));
      },tooltip: 'increment',child: Icon(Icons.add),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color:  Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.near_me),
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  _index = 0;
                });
              },
            ),
            IconButton(icon: Icon(Icons.edit_location), onPressed: (){
              setState(() {
                _index = 1;
              });
            })
          ],
        ),
      ),
    );

  }
}













