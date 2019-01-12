import 'package:flutter/material.dart';
import 'tf_focus_page.dart';


class TFFocusDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('text field focus demo'),
      ),
      body: TFFocusPage(),
    );
  }

}