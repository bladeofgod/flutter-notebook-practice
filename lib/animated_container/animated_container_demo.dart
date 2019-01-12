import 'package:flutter/material.dart';
import 'animated_container_page.dart';

class AnimatedContainerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('animated container demo'),
      ),
      body: AnimatedContainerPage(),
    );
  }

}