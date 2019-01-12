import 'package:flutter/material.dart';

class EachView extends StatefulWidget{
  String _title;
  EachView(this._title);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _EachViewState();
  }

}

class _EachViewState extends State<EachView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget._title),
      ),
    );
  }
}