import 'package:flutter/material.dart';

/**
 * filter chip在被选中时会出来一个勾勾
 * 有两点需要注意
 * selected接受一个bool，代表当前是否被选中
 * onSelected方法会自动传入一个bool，从true开始，true->false->true交替
 */

class FilterChipPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FilterChipPageState();
  }

}

class FilterChipPageState extends State<FilterChipPage> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: FilterChip(label: Text('filter chip'), onSelected: (isSelected){
          setState(() {
            _isSelected = isSelected;
          });
        },
        selected: _isSelected,
        selectedColor: Colors.blue.shade400,),
      ),
    );
  }
}

















