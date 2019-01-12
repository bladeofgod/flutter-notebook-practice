import 'package:flutter/material.dart';

/**
 * action chip 主要是在chip的基础上提供了一个onPress方法
 * 能够触发一些动作
 */

class ActionChipPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ActionChipPageState();
  }

}

class ActionChipPageState extends State<ActionChipPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Builder(
        builder:(BuildContext context){
          return Center(
            child: ActionChip(label: Text('action chip '), onPressed: (){
              setState(() {
                Scaffold.of(context).showSnackBar(SnackBar(content: Text('on tap')));
              });
            }),
          );
        } ,
      ),
    );
  }
}














