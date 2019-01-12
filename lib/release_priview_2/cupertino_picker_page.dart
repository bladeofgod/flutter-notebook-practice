import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PickerPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PickerPageState();
  }

}

class PickerPageState extends State<PickerPage> {

  FixedExtentScrollController scrollController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController = FixedExtentScrollController();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      child: Center(
        child: Container(
          child: CupertinoPicker(itemExtent: 60.0, onSelectedItemChanged: (int index){}, children: [
            Text('Test1'),
            Text('Test2'),
            Text('Test3'),
            Text('Test4'),
            Text('Test5'),
            Text('Test6'),
          ],scrollController: scrollController,),
        ),
      ),
    );
  }
}



















