import 'package:flutter/material.dart';
import 'intro_slider_demo.dart';


class SliderDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('slider demo'),
      ),
      body: SliderScreen(),
    );
  }

}