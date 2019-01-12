import 'package:flutter/material.dart';

import 'draggable_page.dart';

class DraggableDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('draggable demo'),
      ),
      body: DraggablePage(),
    );
  }

}
