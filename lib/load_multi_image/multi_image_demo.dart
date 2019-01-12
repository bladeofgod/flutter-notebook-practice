import 'package:flutter/material.dart';
import 'multi_image_page.dart';


/*
*
*  这个没有展示，因为没有那么多图片，具体使用方法可以参见 官方的使用方法。
*  另外此demo比官方还少了个 asset.dart
* */

class MultiImageDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Multi image demo'),
      ),
      body: MultiImagePage(),
    );
  }

}