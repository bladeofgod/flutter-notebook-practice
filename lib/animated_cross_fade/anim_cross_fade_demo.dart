import 'package:flutter/material.dart';
import 'anim_cross_fade_page.dart';


class AniCrossFadeDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('animated cross fade'),
      ),
      body: AniCrossFadePage(),
    );
  }

}