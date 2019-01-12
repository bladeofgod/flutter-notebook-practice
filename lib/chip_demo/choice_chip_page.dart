import 'package:flutter/material.dart';


/**
 * choice chip主要有两点需要注意
 * selected接受一个bool，代表当前是否被选中
 * onSelected方法会自动传入一个bool，从true开始，true->false->true交替
 */

class ChoiceChipPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ChoiceChipPageState();
  }

}

class ChoiceChipPageState extends State<ChoiceChipPage> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: ChoiceChip(label: Text('choice chip'), selected: _isSelected,onSelected: (isSelected){
          setState(() {
            _isSelected = isSelected;
          });
        },selectedColor: Colors.blue.shade400,),
      ),
    );
  }
}















