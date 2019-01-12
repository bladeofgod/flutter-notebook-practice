import 'package:flutter/cupertino.dart';


class SegmentedControllDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SegmentedControllDemoState();
  }

}

class SegmentedControllDemoState extends State<SegmentedControllDemo> {

  Map<String,Widget> selectMap;
  String select;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectMap = Map();
    selectMap["map"] = Text('Map');
    selectMap["transit"] = Text('Transit');
    selectMap['satellite'] = Text('Satellite');
//  _select = "";
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return CupertinoPageScaffold(
      child: Center(
        child: Container(
          width: width,
          height: height / 4,
          child: CupertinoSegmentedControl(children: selectMap, onValueChanged: (String key){
            setState(() {
              select = key;
            });
          },groupValue: select,),
        ),
      ),
    );
  }


}



















