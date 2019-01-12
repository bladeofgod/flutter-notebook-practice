import 'package:flutter/material.dart';
import 'keep_alive_page.dart';


class KeepAliveDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return KeepAliveDemoState();
  }

}

class KeepAliveDemoState extends State<KeepAliveDemo> with SingleTickerProviderStateMixin {

  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: 3, vsync: this);

  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(controller: tabController,tabs: [
          Tab(icon: Icon(Icons.directions_car),),
          Tab(icon: Icon(Icons.directions_transit),),
          Tab(icon: Icon(Icons.directions_bike),),
        ]),
        title: Text('keep alive demo'),
      ),
      body: TabBarView(children: [
        MyHomePage(title:'page 1'),
        MyHomePage(title:'page 2'),
        MyHomePage(title:'page 3'),
      ],controller: tabController,),

    );
  }
}














