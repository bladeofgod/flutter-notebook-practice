import 'package:flutter/cupertino.dart';
import 'package:random_pk/random_pk.dart';

class SliverNavBarDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SliverNavBarDemoState();
  }

}

class SliverNavBarDemoState extends State<SliverNavBarDemo> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return CupertinoPageScaffold(
      child: NestedScrollView(headerSliverBuilder: (context,innerBoxIsScrolled){
        return <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text('Title'),
            leading: Text('Leading'),
            previousPageTitle: "previousPageTitle",
            middle: Text('middle'),
            trailing: Icon(CupertinoIcons.search),
          ),
        ];
      }, body: CupertinoScrollbar(
        child: ListView(
          children: <Widget>[
            RandomContainer(
              height: height/5,
              width: width,
            ),
            RandomContainer(
              height: height/5,
              width: width,
            ),
            RandomContainer(
              height: height/5,
              width: width,
            ),
            RandomContainer(
              height: height/5,
              width: width,
            ),
            RandomContainer(
              height: height/5,
              width: width,
            ),
            RandomContainer(
              height: height/5,
              width: width,
            ),
          ],
        ),
      ),),
    );
  }


}











