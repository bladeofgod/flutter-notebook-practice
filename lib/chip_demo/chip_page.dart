
import 'package:flutter/material.dart';

/**
 * 普通chip
 * 可以自定义样式
 */

class ChipPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ChipPageState();
  }

}

class ChipPageState extends State<ChipPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Chip(
          label: Text('label'),
          avatar: CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            child: Text('01'),
          ),
          onDeleted: (){},
        ),
      ),
    );
  }
}














