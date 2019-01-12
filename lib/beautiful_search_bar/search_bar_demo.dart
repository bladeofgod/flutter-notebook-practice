import 'package:flutter/material.dart';
import 'search_bar_widget.dart';

class SearchBarDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new SearchBarDemoState();
  }

}

class SearchBarDemoState extends State<SearchBarDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SearchBarWidget();
  }
}