import 'package:flutter/material.dart';

import 'zoom_image_page.dart';

class ZoomImageDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('pinch zoom image demo'),
      ),
      body: ZoomImagePage(),
    );
  }

}