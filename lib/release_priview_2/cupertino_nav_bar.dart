import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class NavBarPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NavBarPageState();
  }

}

class NavBarPageState extends State<NavBarPage> {

  TextEditingController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TextEditingController();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Text('leading'),
        middle: Text('middle'),
        trailing: Icon(CupertinoIcons.search),
      ),
      child: Container(),
    );
  }
}

















