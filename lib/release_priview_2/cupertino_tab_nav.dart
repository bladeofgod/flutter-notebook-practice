import 'package:flutter/cupertino.dart';
import 'cupertino_sliver_nav_bar.dart';


class TabNavDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TabNavDemoState();
  }

}

class TabNavDemoState extends State<TabNavDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),title: Text('Home')),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.folder),title: Text('Folder')),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.photo_camera),title: Text('Photo')),
      ]),
      tabBuilder: (context,index){
        return CupertinoTabView(
          builder: (context){
            return SliverNavBarDemo();
          },
        );
      },
    );
  }
}

















