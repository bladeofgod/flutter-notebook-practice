import 'package:flutter/material.dart';
import 'frosted_glass_page.dart';


class FrostedGlassDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('frosted demo'),
      ),
      body: FrostedGlassPage(),
    );
  }

}