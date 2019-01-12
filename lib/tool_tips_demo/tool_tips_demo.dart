import 'package:flutter/material.dart';
import 'tool_tips_page.dart';


class ToolTipsDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Tool tip demo'),
      ),
      body: ToolTipPage(),
    );
  }

}