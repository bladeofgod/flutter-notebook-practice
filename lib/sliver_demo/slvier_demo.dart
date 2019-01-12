import 'package:flutter/material.dart';
import 'package:flutter_notebook_practice/sliver_demo/sliver_page.dart';

class SliverDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('sliver demo'),
      ),
      body: SliverPage(),
    );
  }

}