import 'package:flutter/material.dart';
import 'cupertino_action_sheet_page.dart';
import 'cupertino_nav_bar.dart';
import 'cupertino_picker_page.dart';
import 'cupertino_segmented_controll_demo.dart';
import 'cupertino_sliver_nav_bar.dart';
import 'cupertino_tab_nav.dart';
import 'cupertino_timer_picker.dart';


class ReleasePreviewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('cupertino style demo'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text('action sheet page'),
              leading: Icon(Icons.note,color: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return ActionSheetPage();
                }));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('navigation bar page'),
              leading: Icon(Icons.note,color: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return NavBarPage();
                }));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('picker page page'),
              leading: Icon(Icons.note,color: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return PickerPage();
                }));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('segmented controll  page'),
              leading: Icon(Icons.note,color: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return SegmentedControllDemo();
                }));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('sliver nav bar  page'),
              leading: Icon(Icons.note,color: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return SliverNavBarDemo();
                }));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('tab nav bar page'),
              leading: Icon(Icons.note,color: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return TabNavDemo();
                }));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('timer picker page'),
              leading: Icon(Icons.note,color: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return TimerPickerDemo();
                }));
              },
            ),
          ),
        ],
      ),
    );
  }

}